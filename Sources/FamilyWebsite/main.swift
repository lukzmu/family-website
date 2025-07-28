try FamilyWebsite().publish(
    withTheme: .core,
    deployedUsing: .gitHub("lukzmu/family-website", branch: "gh-pages", useSSH: true),
)
