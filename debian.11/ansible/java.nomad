job "test-java" {
  datacenters = ["dc1"]

  group "test-group" {
    task "test-task" {
      driver = "java"

      config {
	jar_path = "local/HTTP-Server-0.4.2.jar"
	jvm_options = ["-Xmx128m", "-Xms32m"]
      }

      artifact {
        source = "https://github.com/menzerath/HTTP-Server/releases/download/v0.4.2/HTTP-Server-0.4.2.jar"
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}
