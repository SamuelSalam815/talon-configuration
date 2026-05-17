import sys, os
import logging
from talon import  Module, actions, registry
from anki.storage import Collection
from pprint import pformat

def list_to_anki_cards(col, list_name):
    command_list = registry.lists[list_name][0].items()
    context = "command word: " +  list_name
    for key, value in command_list:
        note = col.newNote()
        note.fields[0] = value
        note.fields[1] = key
        tags = context
        note.tags = col.tags.canonify(col.tags.split(tags))
        m = note.model()
        m['tags'] = note.tags
        col.models.save(m)
        col.addNote(note)

def write_alphabet(col):
    list_to_anki_cards(col, 'user.letter')

def write_numbers(col):
    list_to_anki_cards(col, 'user.number_key')

def write_modifiers(col):
    list_to_anki_cards(col, 'user.modifier_key')

def write_special(col):
    list_to_anki_cards(col, 'user.special_key')

def write_symbol(col):
    list_to_anki_cards(col, 'user.symbol_key')

def write_arrow(col):
    list_to_anki_cards(col, 'user.arrow_key')

def write_punctuation(col):
    list_to_anki_cards(col, 'user.punctuation')

def write_function(col):
    list_to_anki_cards(col, 'user.function_key')

def write_formatters(col):
    context = "formatters" 
    word_formatter = registry.lists['user.word_formatter'][0].items()
    prose_formatter = registry.lists['user.prose_formatter'][0].items()
    code_formatter = registry.lists['user.code_formatter'][0].items()
    reformatter = registry.lists['user.reformatter'][0].items()
    command_list = [ *word_formatter, *prose_formatter, *code_formatter, *reformatter ]
    for key, value in command_list:
        note = col.newNote()
        note.fields[0] = actions.user.formatted_text(f"example of formatting with {key}", value)
        note.fields[1] = key
        tags = context
        note.tags = col.tags.canonify(col.tags.split(tags))
        m = note.model()
        m['tags'] = note.tags
        col.models.save(m)
        col.addNote(note)

def write_context_commands(col, commands, context): 
    # write out each command and it's implementation
    for key in commands:
        try:
            rule = commands[key].rule.rule
            implementation = commands[key].target.code
        except Exception:
            continue
        note = col.newNote()
        note.fields[0] = implementation
        note.fields[1] = rule
        tags = context
        note.tags = col.tags.canonify(col.tags.split(tags))
        m = note.model()
        m['tags'] = note.tags
        col.models.save(m)
        col.addNote(note)
        
def pretty_print_context_name(name):
    ## The logic here is intended to only print from talon files that have actual voice commands.  
        splits = name.split(".")
        index = -1
        
        os = ""
        
        if "mac" in name:
            os = "mac"
        if "win" in name: 
            os = "win"
        if "linux" in name:
            os = "linux"

        if "talon" in splits[index]:
            index = -2
            short_name = splits[index].replace("_", " ")
        else:
            short_name = splits[index].replace("_", " ")

        if "mac" == short_name or "win" == short_name or "linux" == short_name:
            index = index - 1
            short_name = splits[index].replace("_", " ")

        return os + " " + short_name

mod = Module()

@mod.action_class
class user_actions:
        def generateankicards():
            """Write Anki cards for talon"""
            # Find the Anki directory and the user
            anki_home =  "C:\\Users\\Sam\\generate-talon-anki-cards\\User 1"
            anki_collection_path = os.path.join(anki_home, "collection.anki2")
            
            # 1. Load the anki collection
            col = Collection(anki_collection_path)

            # 2. Select the deck - You can change that depending the deck you want to fill
            modelBasic = col.models.byName('Basic')
            deck = col.decks.byName('Default')

            col.decks.select(deck['id'])

            col.decks.current()['id'] = modelBasic['id']
            
            # 3. Create the cards for:
            write_alphabet(col)
            write_numbers(col)
            write_modifiers(col)
            write_special(col)
            write_symbol(col)
            write_arrow(col)
            write_punctuation(col)
            write_function(col)
            write_formatters(col)

            # 4. Create the cards for all the commands in all of the contexts
            list_of_contexts = registry.contexts.items()
            for key, value in list_of_contexts:
                contexttags = pretty_print_context_name(key)
                commands= value.commands #Get all the commands from a context
                if len(commands) > 0:
                    write_context_commands(col,commands,contexttags)

            # 5. Save changes and close the collection
            col.save()