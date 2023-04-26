#!/usr/bin/python3
"""This module instantiates an object of class FileStorage

-> If the env variable 'HBNB_TYPE_STORAGE' is set to 'db',
   instantiates a DBStorage  datase
-> Otherwise, instantiates a file storage engine - FileTorage
"""
from os import getenv


if getenv("HBNB_TYPE_STORAGE") == "db":
    from models.engine.db_storage import DBStorage
    storage = DBStorage()
else:
    from models.engine.file_storage import FileStorage
    storage = FileStorage()
storage.reload()
