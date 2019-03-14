# Doku Mike Spengler M300

| Thema              | Kenntnisse                                                                                                                                                                                                                                          |
|--------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Virtualisierung    |  Im ersten Lehrjahr, in der Schule und zuhause arbeite ich relativ viel mit VMs. Ich nutze diese für viele verschiedene zwecke. Ich kenne mich relativ gut mit VMs aus, da ich auch jetzt in der Firma noch damit arbeite.                          |
| Vagrant            |  Vagrant ist komplettes Neuland für mich. Ich habe   noch nie mit Vagrant gearbeitet, jedoch schon davon durch Kollegen gehört. Vagrant tönt jedoch sehr   spannend.                                                                                |
| Versionsverwaltung |  Ich arbeite relativ viel mit Versionierung, da ich doch noch relativ viel scripte. Meine Script   speichere ich alle Versioniert um auf alte Versionen zugriff zu haben. Dies ist einfach und sehr effektiv. Meine Firma verlangt es jedoch nicht. |
| Git                |  Ich habe schon ein oder zwei mal mit Git gearbeitet, jedoch habe ich nie sein volles Potenzial genutzt.   Git habe ich als Wiki und als Dateispeicher genutzt.                                                                                     |
| Markdown           |  Mit Markdown habe ich einmal bei einem Wiki mitgearbeitet. Wir haben ein Wiki über unsere IT kenntnisse geführt. Dieses hatten wir in Git Hub und in Markdown gemacht.                                                                             |
| Systemsicherheit   |  Die Systemsicherheit ist mein tägliches Business. Ich befasse mich jeden Tag damit. Die Systeme und Services welche ich aufsetze und verwalte müssen sicher sein.                                                                                  |
| Linux              |Ich habe im ersten Lehrjahr mehrfach mit Linux gearbeitet und habe auch schon zuhause in Linux VMs gearbeitet. Ich habe jedoch keine sehr   spezifische und gute Linux-Kenntnisse. Linux ist für mich immer noch neu und ich bin damit nicht vertraut.                                                                                                                                                                                                     |
### LB01

## K3

# Punkt 1

Vagrantfile erstellen. Dazu Ordner erstellen und mit CMD in den Ordner navigieren. Dann "vagrant init" eingeben.
Im erstellten File den Code der Vagrant-Cloud einfügen. 

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"
  end

Dann per "vagrant up" starten

# Punkt 2

Die wichtigsten Befehle sind:

| Befehl                    | Beschreibung                                                      |
| ------------------------- | ----------------------------------------------------------------- | 
| `vagrant init`            | Initialisiert im aktuellen Verzeichnis eine Vagrant-Umgebung und erstellt, falls nicht vorhanden, ein Vagrantfile |
| `vagrant up`              |  Erzeugt und Konfiguriert eine neue Virtuelle Maschine, basierend auf dem Vagrantfile |
| `vagrant ssh`             | Baut eine SSH-Verbindung zur gewünschten VM auf                   |
| `vagrant status`          | Zeigt den aktuellen Status der VM an                              |
| `vagrant port`            | Zeigt die Weitergeleiteten Ports der VM an                        |
| `vagrant halt`            | Stoppt die laufende Virtuelle Maschine                            |
| `vagrant destroy`         | Stoppt die Virtuelle Maschine und zerstört sie.                   |

# Punk 3

    +--------------------+          +---------------------+
    ! Web Server         !          ! Datenbank Server    !
    ! Host: web          !          ! Host: db            !
    ! IP: 192.168.55.101 ! <------> ! IP: 192.168.55.100  !
    ! Port: 80           !          ! Port 3306           !
    ! Nat: 8080          !          ! Nat: -              !
    +--------------------+          +---------------------+

# Punkt 4
Apache VM tests:

| Test                                                                                            | Erwartetes Ergbniss                                                 | Erhaltenes Ergebniss                                              |
|-------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|-------------------------------------------------------------------|
| Connecten via Localhost in VM                                                                   | Webseite wird geöffnet und man sieht die Default Webpage von Apache | Es öffnet sich die Defaultwebpage von Apache.                     |
| Connecten via Localhost auf Laptop                                                              | Webseite wird geöffnet und man sieht die Default Webpage von Apache | Es öffnet sich die Defaultwebpage von Apache.                     |
| Defaultwebpage durch Hello World Seite ersetzen und nochmals via Localhost in VM connecten      | Webseite wird geöffnet und man sieht eine Hello World Seite         | Es erscheint die erstellte Hello World seite                      |
| Defaultwebpage durch Hello World Seite ersetzen und nochmals via Localhost auf Laptop connecten | Beim öffnen der Webseite wird die Hello World Seite angezeigt       | Die Hello World Seite welche man erstellt hat wird angezeigt      |
| Test-NetConnection von Laptop auf die VM                                                        | Der Test ist Successful                                             | Beim Testen der Connection wurde ein positives Ergebniss gezeigt. |

# Andere, vorgefertigte VM auf eigenem Notebook aufsetzen.
https://www.taniarascia.com/how-to-install-apache-php-7-1-and-mysql-on-ubuntu-with-vagrant/
Ich erstelle eine Apache/PHP VM und eine mit MySQL welche ich dann verbinden will.

----------------------------------------------------------
config.vm.define "web" do |web|
    config.vm.box = "ubuntu/trusty64"
    config.vm.provision :shell, inline: <<-SHELL 
      sudo apt-get update
      sudo apt-get -y install apache2
      sudo apt-get install php libapache2-mod-php
    SHELL
  end

  config.vm.define "db" do |db|
    config.vm.box = "ubuntu/trusty64"
    config.vm.provision :shell, inline: <<-SHELL 
      sudo apt-get update
      sudo apt-get -y install mysql-server
    SHELL
  end
----------------------------------------------------------
Das alles um 2 VMs zu erstellen und darauf apache und php bzw MySQL zu installieren.


#Projekt mit Git und Markdown Dokumentiert




### SSH-Key hinzufügen
***
1.  Anmelden unter www.github.com
2.  Auf Benutzerkonto klicken (oben rechts) und den Punkt <strong>Settings</strong> aufrufen
3.  Unter den Menübereichen auf der linken Seite zum Abschnitt <strong>SSH und GPG keys</strong> wechseln
4.  Auf <strong>New SSH key</strong> klicken
5.  Im Formular unter <strong>Title</strong> eine Bezeichnung vergeben (z.B. MB SSH-Key)
6.  Den zuvor kopierten Key mit <i>CTRL + V</i> einfügen und auf <strong>Add SSH key</strong> klicken
7.  Der Schlüssel (SSH-Key) sollte nun in der übergeordneten Liste auftauchen


### Repository herunterladen & aktualisieren (clone/pull)
***
1. Terminal öffnen
2. Ordner für Repository im gewünschten Verzeichnis erstellen:
    ```Shell
      $ cd Wohin\auch\immer
      $ mkdir MeinLokalesRepository
    ``` 
3. Repository mit SSH klonen (siehe Webseite des Repositorys unter "Clone or download"):
    ```Shell
      $ git clone git@github.com:<Ihr Name>/M300.git

      Cloning into 'M300'...
    ``` 
4. Repository aktualisieren und Status anzeigen:
    ```Shell
      $ git pull

      Already up to date.
    ```

### Repository hochladen (Push)
***
1.  Terminal öffnen (nachdem Teile bzw. Dateien des lokalen Repositorys geändert wurden)
2.  In das entsprechende Verzeichnis des Repository gehen: 
    ```Shell
      $ cd Pfad\zu\meinem\Repository  
    ```  
3.  Dateien dem Upload hinzufügen:
    ```Shell
      $ git add -A .
    ``` 
4.  Den Upload commiten:
    ```Shell
      $ git commit -m "Mein Kommentar"
    ``` 
5.  Schliesslich den Upload pushen:
    ```Shell
      $ git push
    ```
6.  Nun sollte der Master-Branch des Repositorys ebenfalls aktualisiert sein


### Virtuelle Maschine erstellen
***
1. Terminal öffnen
2. In gewünschtem Verzeichnis einen neuen Ordner für die VM anlegen:
    ```Shell
      $ cd Wohin\auch\immer
      $ mkdir MeineVagrantVM
      $ cd MeineVagrantVM
    ``` 
3. Vagrantfile erzeugen, VM erstellen und entsprechend starten:
    ```Shell
      $ vagrant box add http://10.1.66.11/vagrant/ubuntu/xenial64.box --name ubuntu/xenial64  #Vagrant-Box vom Netzwerkshare hinzufügen
      $ vagrant init ubuntu/xenial64        #Vagrantfile erzeugen
      $ vagrant up --provider virtualbox    #Virtuelle Maschine erstellen & starten
    ``` 
4. Die VM ist nun in Betrieb (erscheint auch in der Übersicht innerhalb von VirtualBox) und kann via SSH-Zugriff bedient werden:
    ```Shell
      $ cd Pfad\zu\meiner\Vagrant-VM      #Zum Verzeichnis der VM wechseln
      $ vagrant ssh                       #SSH-Verbindung zur VM aufbauen

      #Anschliessend können ganz normale Bash-Befehle abgesetzt werden:

      $ ls -l /bin  #Bin-Verzeichnis anzeigen
      $ df -h       #Freier Festplattenspeicher
      $ free -m     #Freier Arbeitsspeicher
    ``` 
5. VM über VirtualBox-GUI ausschalten

Schlussfolgerung: Eine VM lässt sich mit Vagrant eindeutig schneller und unkomplizierter erstellen!


### Funktionsweise
***

Packer wird über die Kommandozeile (CLI) bedient.

Der wichtigste Befehle ist `packer build` um ein Image zu erstellen.

Die Konfiguration erfolgt im JSON Format. Hier ein Beispiel:
```JSON
    {
      "provisioners": [
        {
          "type": "shell",
          "execute_command": "echo 'vagrant'|sudo -S sh '{{.Path}}'",
          "override": {
            "virtualbox-iso": {
              "scripts": [
                "scripts/server/base.sh",
              ]
            }
          }
        }
      ],
      "builders": [
        {
          "type": "virtualbox-iso",
      "boot_command": [
        " preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ubuntu-preseed.cfg<wait>",
      ],
        }
      ],
      "post-processors": [
        {
          "type": "vagrant",
          "override": {
            "virtualbox": {
              "output": "ubuntu-server-amd64-virtualbox.box"
            }
          }
        }
      ]      
    }
```

**Provisioning** <br>
Auch bei Packer steht Provisioning für Anweisungen an ein anderes Programm (z.B. eine Shell wie Bash).

**Builder** <br>
Die Builder erstellen ein Image für eine bestimmte dynamische Infrastruktur-Plattform (wie z.B. VirtualBox).

**Post-processors** <br>
Sind Bestandteile von Packer, die das Ergebnis eines Builders oder eines anderen Post-Prozessor übernehmen, um damit ein neues Artefakt zu erstellen. 



### Installation
***
1. Packer 1.3.1 herunterladen von: https://www.packer.io/
    * Auf Button `DOWNLOAD 1.3.1` klicken
    * macOS 64-Bit anwählen
    * Warten, bis Datei heruntergeladen wurde
2. Heruntergeladene Datei `packer_1.3.1_darwin_amd64.zip` entpacken
3. Terminal öffnen & Ordner erstellen:
```Shell
    $ sudo mkdir ~/packer
    $ cd ~/packer 

    $ pwd                               #Gibt den Pfad des Ordners aus
    
    /Users[Dein-Benutzername]/packer
```
4. Entpackte Datei `packer` in das erstelltes Verzeichnis kopieren
```Shell
    $ cp packer ~/packer
```
5. Pfad in der Path-Variable hinterlegen (damit das System das Command kennt):
```Shell
    $ export PATH="$PATH:/Users[Dein-Benutzername]/packer"
```
6. Funktion von Packer testen:
```Shell
    $ packer

    Usage: packer [--version] [--help] <command> [<args>]

    Available commands are:
        build       build image(s) from template
        fix         fixes templates from old versions of packer
        inspect     see components of a template
        validate    check that a template is valid
        version     Prints the Packer version
```
7. Terminal wieder schliessen & mit dieser Dokumentation fortfahren ...



**Provisioning** <br>
Nach der Installation von Ubuntu Linux werden die Anweisungen in der provisioners Sektion ausgeführt. Hier eine Reihe von vorbereiteten Shell Scripts:
```JSON
    "provisioners": [
        {
        "type": "shell",
        "execute_command": "echo 'vagrant'|sudo -S sh '{{.Path}}'",
        "override": {
            "virtualbox-iso": {
            "scripts": [
                "scripts/server/base.sh",
```

**Post-processors** <br>
Nach Installation und Feintuning wird die Sektion `post-processor` abgearbeitet und ein aufbereitetes Images für den gewünschten Provider, hier Oracle VirtualBox erzeugt:
```JSON
    "post-processors": [
        {
        "type": "vagrant",
        "override": {
            "virtualbox": {
            "output": "ubuntu-server-amd64-virtualbox.box"
            }
        }
    }
```




