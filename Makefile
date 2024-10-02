test: out/manifests/v993.xml out/manifests/v994.xml out/manifests/v995.xml out/manifests/v996.xml out/manifests/v997.xml out/manifests/v998.xml out/manifests/v999.xml out/manifests/v9910.xml
	diff ./out/manifests/v993.xml ./out/manifests/v9910.xml

out/manifests/v%.xml:
	mkdir -p out/manifests/
	./gradlew :app:processFsv$*ReleaseManifestForPackage
	cp ./app/build/intermediates/merged_manifests/fsv$*Release/processFsv$*ReleaseManifest/AndroidManifest.xml '$@'

.PHONY: clean
clean:
	rm -rf ./out/ ./app/build/ ./.gradle/ ./app/.gradle/
