

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.LoginProcess;
import model.User;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher =  request.getRequestDispatcher("./Login.jsp");
        //フォワードの実行
        dispatcher.forward(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		// 遷移先のJPSパス
		String targetJspPath  = "";
        
        // 「Login.jsp」のフィールドに入力された情報を格納する変数を定義する。
        String hisName = request.getParameter("hisName");
        String herName = request.getParameter("herName");
        String key = request.getParameter("key");
        
        // 上記で格納された変数をゲッターで取り出すように「User.java」クラスに格納する。
        User user = new User(hisName,herName,key);

        // ログインの照合用クラスをインスタンス化する。
        LoginProcess loginProcess = new LoginProcess();
        boolean isLogin = loginProcess.execute(user);

        if(isLogin) {
            //request.setAttribute("result",user);  // 4
        	System.out.println("照合成功");
        	targetJspPath = "./Main.jsp";
        }
        else {
        	request.setAttribute("result","合言葉が違います");
        	targetJspPath = "./Login.jsp";
        	System.out.println("照合失敗");
        }
        
      //フォワード先の指定
        RequestDispatcher dispatcher =  request.getRequestDispatcher(targetJspPath);
        //フォワードの実行
        dispatcher.forward(request, response);
    }

}
