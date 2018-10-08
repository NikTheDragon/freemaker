package by.freemaker.beans;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.Size;

@Getter
@Setter
@ToString
public class User {
    @Size(min = 3, max = 10, message = "Name size mismatch.")
    private String name;
    @Size(min = 3, max = 10, message = "Surname size mismatch.")
    private String surname;
    @Size(min = 3, max = 10, message = "Login size mismatch.")
    private String login;
    @Size(min = 3, max = 10, message = "Password size mismatch.")
    private String password;
}
