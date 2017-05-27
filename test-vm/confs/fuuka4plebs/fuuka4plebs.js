// this is example configuration file for fuuka4plebs
// it's json but comments are ignored
{
    "service" : {
        // socket is recommended
        "api" : "fastcgi",
        "socket" : "/tmp/fuuka4plebs-fcgi.socket",
        // but you can also listen on a port
        //"api" : "http",
        //"port" : 8080,
        "disable_xpowered_by" : true,
        // configure this to fit your usecase
        "worker_threads" : 50,
        "worker_processes" : 2
    },
    "http" : {
        "script_names" : [ "/fourpleb" ]
    },
    "security" : {
       "csrf" : {
          "enable" : true
       }
    },
    "session" : {
        "expire" : "renew",
        "timeout" : 604800,
        "location" : "client",
        "cookies" : { "prefix" : "fuuka4plebs" },
        "client" :      {
            "hmac" :        "sha1",
            // it is important that you fill in your hmac key here
            // it can be generated with cppcms_make_key --hmac sha1
            "hmac_key" :    "e6add3257abc152db32c92186e77852924bcc23f"
        }
    },
    "cache" : {
        "backend" : "process_shared",
        // configure this to fit your usecase
        "memory" : "512000"
    },
    "views" : {
        "paths" : [ "/usr/lib/", "/usr/local/lib/" ],
        "skins" : [ "fourplebskin" , "foolfuukaskin", "adminskin", "fuukaskin" ],
        "default_skin" : [ "fourplebskin" ]
        // useful for debugging. Do not use in production
        //"auto_reload" : true
    },
    "logging" : {
        "level" : "error",
        // log to file
        //"file" : {
        //    "name" : "/var/log/fuuka4plebs.log", // log filename
        //    "append" : true,  // append to existing logs?
        //    "max_files" : 10, // enables log rotation
        //    "timezone" : "GMT" // blank for local
        //},
        // log to syslog on POSIX systems
        "syslog" : {
            "enable" : true,
            "id" : "fuuka4plebs", // see man syslog
            "options" : "LOG_CONS" // see man syslog
        }
    },
    "settings" : {
        // this is the location of your database config
        // you can put your FoolFuuka installation details there or run the installer
        "database_details_file" : "/etc/fuuka4plebs/database.js",
        // use this if you need to override base url. useful with some proxy setups
        "base_url" : "http://127.0.0.1:8080",
        // temporary location for uploaded images
        "upload_file_tmp" : "/tmp/",
        // Asset path for serving files in http mode. It should work but you are advised to serve assets with a proper web server
        "asset_path" : "/var/www/fuuka4plebs/",
        "plugin_directory" : "/etc/fuuka4plebs/plugins/"
    }
}
