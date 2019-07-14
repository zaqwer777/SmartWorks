package util;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

/**
 * Utility for Gmail
 */
public class Gmail extends Authenticator {

    //TODO Create email address for SmartWorks. Replace credentials
    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication("brian79891","F@mily7989");
    }
}
