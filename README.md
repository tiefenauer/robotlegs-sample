#robot-legs-sample#

Sample Mobile Application using the RobotLegs-Framework

##Die wichtigsten Tasks kurz erklärt##
###Bestehende Klassen überschreiben###
Um eine bestehende Model-, View- oder Controller-Klasse, welche im core-Package liegt, zu überschreiben reicht es, wenn eine Klasse mit identischem Namen und exakt gleicher Subpackage-struktur im custom-Package angelegt wird. 

**Beispiel Model**

    info.tiefenauer.rlsample.core.app.architecture.model.vo.ApplicationConfiguration
    
wird zu

    info.tiefenauer.rlsample.custom.app.architecture.model.vo.ApplicationConfiguration
    
**Beispiel View (AS3 oder MXML-Implementationen möglich**

    info.tiefenauer.rlsample.core.addon.architecture.view.phone.HomeView
    
wird zu

    info.tiefenauer.rlsample.custom.addon.architecture.view.phone.HomeView
    
**Beispiel Controller**

    info.tiefenauer.rlsample.core.addon.settingsaddon.architecture.controller.SettingsCommand
    
wird zu

    info.tiefenauer.rlsample.custom.addon.settingsaddon.architecture.controller.SettingsCommand


###Neue (Custom-)Klassen erstellen:###
Du möchtest eine neue Model-, View- oder Controller-Klasse erstellen, welche im core-Package gar nicht existiert. Hierzu kann die Klasse an einem beliebigen Ort im custom-Package angelegt werden. Anschliessend muss die Klasse beim Bootstrappen eingeschlossen werden. Im Folgenden das Vorgehen für die einzelnen Komponenten.

####Model####
- Neue Model-Klasse im custom-Package (beliebiges sub-Package) erstellen
- BootstrapModels.as im custom-Package duplizieren und von BootstrapModels.as im core-Package erben
- Konstruktor mit super() (**wichtig, da sonst die Models im core-Package nicht mehr geladen werden**)
- Anschliessend alle neuen Models mappen (analog BootstrapModels.as im core-Package)
Das neue Model wird als Singleton zu Verfügung gestellt.

####Command####
- Neue Command-Klasse im custom-Package (beliebiges sub-Package) erstellen
- BootstrapCommands.as im custom-Package duplizieren und vom BootstrapCommands.as im core-Package erben
- Konstruktor mit super()
- Anschliessend alle neuen Commands mappen (analog BootstrapCommands.as im core-Package)
Das neue Command wird mit dem gemappten Event ausgelöst

####View####
- Neue View-Klasse im custom-Package (beliebiges sub-Package) erstellen
- BootstrapMediators.as im custom-Package duplizieren und vom BootstrapMediators.as im core-Package erben
- Konstruktor mit super()
- Anschliessend alle neuen Views mediaten (analog BootstrapMediators.as im core-Package)
Die neue View wird vom entsprechenden Mediator mediated.

###Neues Addon###
Du möchtest ein neues Addon, welches im core-Package nicht existiert, in die App einbinden. Falls die Addons durch ein externes File geladen werden, sind diese Schritte nicht nötig. Für diese Sample-app funktioniert es folgendermassen:
- Eigenes Package für das Addon im custom-Package erstellen (analog der bestehenden Package-Struktur)
- Addon-Hauptklasse *xxxAddon.as* analog bestehenden Addons implementieren (muss *IAddon* implementieren, besser noch: *Addon.as* extenden)
- ApplicationConfiguration.as im custom-Package duplizieren
- Neues Addon zu dem bereits zurückgegebenen Array hinzufügen
Das Addon wird als neuer Tab angezeigt.

#Best Practice#
- Keine Event-Typen in der View mehr definieren! Für jede View eine Event-Klasse erzeugen, die von Event erbt
- Falls custom Event-Typen für eine bestehende Event-Klasse benötigt werden, die betreffende Event-Klasse im custom-Package duplizieren  und Ergänzen. BootstrapCommands.as gemäss Anleitung oben duplizieren und neue Event-Typen mit entsprechenden Commands mappen

#Troubleshooting#
##Meine customized-Klasse wird gar nicht verwendet!##
Klassen, die nirgendwo referenziert werden, werden vom Compiler rausoptimiert. Falls Custom-Klassen (z.B. eine Custom-View) nicht angezeigt wird, muss sie manuell als Compiler-Argument hinzugefügt werden. Im File /src/RLSample-config.xml muss ein entsprechender Eintrag gemacht werden
