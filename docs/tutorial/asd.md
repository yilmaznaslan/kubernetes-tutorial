```
<plugin>
    <groupId>com.spotify</groupId>
    <artifactId>dockerfile-maven-plugin</artifactId>
    <version>1.4.13</version>

    <executions>
        <execution>
            <id>default</id>
            <goals>
                <goal>build</goal>
                <goal>push</goal>
            </goals>
        </execution>
    </executions>

    <configuration>
        <repository>yilmaznaslan/department-service</repository>
        <tag>${project.version}</tag>
        <useMavenSettingsForAuth>true</useMavenSettingsForAuth>
    </configuration>
</plugin>

```


 mvn clean package dockerfile:push
 - Docker on your computer must be started to build an image from it.