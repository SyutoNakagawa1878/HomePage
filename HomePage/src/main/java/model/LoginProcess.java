package model;

public class LoginProcess {
    public boolean execute(User user) {
    	
    	if(user.getHerName().equals("あゆ") && user.getHisName().equals("しゅうと")) {
    		if (user.getKey().equals("あつぬげ")) {
                return true;
            }
    	}
        return false;
    }
}