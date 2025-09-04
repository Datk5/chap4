package model;

public class User {
    private String firstName;
    private String lastName;
    private String email;
    private String dob;
    private String heardFrom;
    private String contactVia;
    private String wantsUpdates;

    public User() {}

    public User(String firstName, String lastName, String email, String dob,
                String heardFrom, String contactVia, String wantsUpdates) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.dob = dob;
        this.heardFrom = heardFrom;
        this.contactVia = contactVia;
        this.wantsUpdates = wantsUpdates;
    }

    // getter và setter
    public String getFirstName() { return firstName; }
    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getDob() { return dob; }
    public void setDob(String dob) { this.dob = dob; }

    public String getHeardFrom() { return heardFrom; }
    public void setHeardFrom(String heardFrom) { this.heardFrom = heardFrom; }

    public String getContactVia() { return contactVia; }
    public void setContactVia(String contactVia) { this.contactVia = contactVia; }

    public String getWantsUpdates() { return wantsUpdates; }
    public void setWantsUpdates(String wantsUpdates) { this.wantsUpdates = wantsUpdates; }
}
