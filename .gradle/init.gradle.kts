val urlMappings = mapOf(
    "https://dl.google.com/dl/android/maven2" to "https://mirrors.tencent.com/nexus/repository/maven-public/",
    "https://repo.maven.apache.org/maven2" to "https://mirrors.tencent.com/nexus/repository/maven-public/",
    "https://plugins.gradle.org/m2" to "https://mirrors.tencent.com/nexus/repository/gradle-plugins/"
)

fun RepositoryHandler.mirroring() {
    all {
        if (this is MavenArtifactRepository) {
            val originalUrl = this.url.toString().removeSuffix("/")
            urlMappings[originalUrl]?.let {
                logger.lifecycle("Mirroring [$url] to [$it]")
                this.setUrl(it)
            }
        }
    }
}

gradle.allprojects {
    buildscript {
        repositories.mirroring()
    }
    repositories.mirroring()
}

gradle.beforeSettings {
    pluginManagement.repositories.mirroring()
    if (gradle.gradleVersion >= "6.8") {
        val getDrm = settings.javaClass.getDeclaredMethod("getDependencyResolutionManagement")
        val drm = getDrm.invoke(settings)
        val getRepos = drm.javaClass.getDeclaredMethod("getRepositories")
        val repos = getRepos.invoke(drm) as RepositoryHandler
        repos.mirroring()
    }
}
