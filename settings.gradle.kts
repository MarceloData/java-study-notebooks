rootProject.name = "java-study-notebooks"

// Dynamically include all topic directories as subprojects
file("topics").listFiles()
    ?.filter { it.isDirectory && File(it, "build.gradle.kts").exists() }
    ?.forEach {
        include("topics:${it.name}")
        project(":topics:${it.name}").projectDir = it
    }