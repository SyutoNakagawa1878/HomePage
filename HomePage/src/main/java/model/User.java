package model;

import java.io.Serializable;

public class User implements Serializable {

    private String hisName;
    private String herName;
    private String key;

        public User() {}

    public User(String name1, String name2 , String key) {
        this.hisName = name1;
        this.herName = name2;
        this.key = key;
    }

    public String getHisName(){     // 1. ユーザー名取得
        return this.hisName;
    }
    
    public String getHerName(){     // 1. ユーザー名取得
        return this.herName;
    }

    public String getKey(){   // 2. パスワード取得
        return this.key;
    }
}