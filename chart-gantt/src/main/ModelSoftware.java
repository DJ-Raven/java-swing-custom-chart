package main;

public class ModelSoftware {

    public int getSoftwareID() {
        return softwareID;
    }

    public void setSoftwareID(int softwareID) {
        this.softwareID = softwareID;
    }

    public String getSoftwareName() {
        return softwareName;
    }

    public void setSoftwareName(String softwareName) {
        this.softwareName = softwareName;
    }

    public ModelSoftware(int softwareID, String softwareName) {
        this.softwareID = softwareID;
        this.softwareName = softwareName;
    }

    public ModelSoftware() {
    }

    private int softwareID;
    private String softwareName;

    @Override
    public String toString() {
        return softwareName;
    }
}
