from dataclasses import dataclass


@dataclass(frozen=True)
class SocialMedia:
    name: str
    icon: str
    url: str


@dataclass(frozen=True)
class Person:
    name: str
    avatar: str
    title: str
    social: list[SocialMedia]
