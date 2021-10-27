/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2021 Your Name <you@email.com>
 */
 
 public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.Mz3ro_LoFi.MyFirstAppVala",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this){
            default_height = 300,
            default_width = 300,
            title = "OLÁ MUNDO"
        };
        
        var label = new Gtk.Label ("OLÁ MUNDO NOVAMENTE!") {
        margin = 100
    };
    
    
        main_window.add (label);
        main_window.show_all ();
    }
    public static int main (string[] args){
        return new MyApp ().run (args);
    }
    
    
}
