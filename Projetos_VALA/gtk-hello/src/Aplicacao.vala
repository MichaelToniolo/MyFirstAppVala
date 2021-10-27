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
        
        var btn_ola = new Gtk.Button.with_label ("CLICK HERE") {
        margin = 100
    };
    
    btn_ola.clicked.connect (() => {
        btn_ola.label = "HELLO WORLD";
        btn_ola.sensitive = false;
    });
    
        main_window.add (btn_ola);
        main_window.show_all ();
    }
    public static int main (string[] args){
        return new MyApp ().run (args);
    }
    
    
}
