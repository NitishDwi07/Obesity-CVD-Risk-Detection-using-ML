/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dentalclinic;

/**
 *
 * @author user
 */
public class Splash {

    public static void main(String[] args) throws InterruptedException {
        SplashScreen splash = new SplashScreen();

        for (int i = 0; i <= 100; i++) {
            Thread.sleep(40);
            splash.setVisible(true);
            splash.ProgressBar.setValue(i);

            if (i == 100) {
                splash.dispose();
                new MainScreen().setVisible(true);
            }
        }
    }
}
