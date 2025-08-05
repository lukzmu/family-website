import os

from family_website.animal.repository import animal_repository
from family_website.event.repository import event_repository
from family_website.person.repository import person_repository

# --- Site Data ---
SITEURL = os.getenv("SITEURL", default="https://zmudzinski.me")
AUTHOR = "Lukasz Zmudzinski"
SITENAME = "Anna and Łukasz"
TIMEZONE = "Europe/Warsaw"
DEFAULT_LANG = "en"

# --- Pelican Paths and Settings ---
PATH = "family_website/content"
THEME = "family_website/themes/core"
THEME_STATIC_DIR = "theme"
DEFAULT_PAGINATION = False
DELETE_OUTPUT_DIRECTORY = True
STATIC_PATHS = ["images", "extra/CNAME"]
EXTRA_PATH_METADATA = {
    "extra/CNAME": {"path": "CNAME"},
}

# --- Feed Generation ---
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# --- Site Data ---
SITE_DATA = {
    "people": person_repository.get_items(),
    "animals": animal_repository.get_sorted_items(),
    "events": event_repository.get_sorted_items(),
}
