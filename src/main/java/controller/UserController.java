package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import entity.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import pojo.*;
import service.*;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    MovieService movieService;
    @Autowired
    CommentService commentService;
    @Autowired
    TvService tvService;
    @Autowired
    FavouriteService favouriteService;
    @RequestMapping("/")
    public String toHomepage(HttpServletRequest request){
        List<Movie> list1=movieService.select1(1,6);
        request.getSession().setAttribute("movelist1",list1);
        return "index1";
    }
    @RequestMapping("/login")
    public String Login(HttpServletRequest request, User user){
        if (request.getSession().getAttribute("user")==null) {
            User user1 = userService.selectByUsername(user.getUsername());
            request.getSession().setAttribute("user",user1);
            return "index1";
        }else {
            return "index1";
        }
    }

    @RequestMapping("/register")
    public String Register(User user){
        userService.insert(user);
     return "index1";
    }

    @RequestMapping("/search")
    public String Search(String moviename,Model model){
        List<Movie> movies=movieService.search(moviename);
        model.addAttribute("movies",movies);
        return "searchlist";
    }

    @RequestMapping("/list1")
    @ResponseBody
    public Msg toPage(int movieid,HttpServletRequest request){
        List<Comment> list=commentService.select1(movieid);
        return Msg.success().add("list1",list);
    }


    @RequestMapping("/single")
    public String ShowDetail(@RequestParam("movieid")String movieid, Model model,HttpServletRequest request) {
        if (request.getSession().getAttribute("user") != null) {
            Favourite favourite = new Favourite();
            User user = (User) request.getSession().getAttribute("user");
            favourite.setUserid(user.getUserid());
            favourite.setMovieid(movieid);
            Favourite favourite1 = favouriteService.select1(favourite);
            if (favourite1!=null) {
                model.addAttribute("f1",favourite);
//                request.getSession().setAttribute("f1", favourite);
            }
            Movie movie = movieService.selectByPrimaryKey(movieid);
            model.addAttribute("movie", movie);
            return "single";
        } else {
            Movie movie = movieService.selectByPrimaryKey(movieid);
            model.addAttribute("movie", movie);
            return "single";
        }
    }

    @RequestMapping("/comment")
    @ResponseBody
    public Msg doSubmit(Comment comment, HttpServletRequest request){
        System.out.println(comment.getCmscore());
        User user=(User) request.getSession().getAttribute("user");
        comment.setUserid(user.getUserid());
        comment.setUsername(user.getUsername());
        commentService.insert(comment);
        return Msg.success();
    }

    @RequestMapping("/genres")
    public String Genre(String genre, Model model){
        List<Movie> movies=movieService.selectGenre(genre);
        if (movies.size()==0){
            List movies1=movieService.select4(genre);
            System.out.println(movies1);
            model.addAttribute("action",movies1);
            return "genres";
        }
        else {
            model.addAttribute("action", movies);
            return "genres";
        }
    }

    @RequestMapping("/series")
    public String Tv(Model model){
        List<Tvplay> list=tvService.selectAll();
        model.addAttribute("list",list);
       return "series";
    }

    @RequestMapping("/page")
    @ResponseBody
    public Msg List1(@RequestParam(value = "pn",defaultValue = "1")Integer pn){
        PageHelper.startPage(pn,3);
        List<Movie> movies=movieService.selectAll();
        List<Tvplay> tvplays=tvService.selectAll();
        PageInfo page=new PageInfo(movies,5);
        return Msg.success().add("pageInfo",page);
    }

    @RequestMapping("/user")
    public String Liuasd(HttpServletRequest request,Model model){
        User user=(User) request.getSession().getAttribute("user");
        if (user.getStatus()==1){
            List<Comment> comments1=commentService.selectAll();
            List<User> users=userService.select1();
            List<Movie> movies2=movieService.selectAll();
            List<User> users1=userService.selectAll();
            model.addAttribute("movies",movies2);
            model.addAttribute("comments",comments1);
            model.addAttribute("users1",users1);
            model.addAttribute("users",users);
            return "tables";
        }
        else {
            List<Comment> comments=commentService.selectByUser(user.getUserid());
            List<Movie> movies=movieService.select2(user.getUserid());
            List<Movie> movies1=movieService.select3(user.getUserid());
            model.addAttribute("message",comments);
            model.addAttribute("movies",movies);
            model.addAttribute("movies1",movies1);
            return "user";
        }

    }

    @RequestMapping("/loginout")
    public String Loginout(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "index1";
    }

    @RequestMapping("/like")
    @ResponseBody
    public Msg Like(@RequestParam("movieid")String movieid,HttpServletRequest request){
        Favourite favourite=new Favourite();
        User user=(User) request.getSession().getAttribute("user");
        favourite.setUserid(user.getUserid());
        favourite.setMovieid(movieid);
        favouriteService.insert(favourite);
//        request.getSession().setAttribute("f1",favourite);
        return Msg.success();
    }

    @RequestMapping("/dislike")
    @ResponseBody
    public Msg Dislike(@RequestParam("movieid")String movieid,HttpServletRequest request){
        Favourite favourite=new Favourite();
        User user=(User) request.getSession().getAttribute("user");
        favourite.setUserid(user.getUserid());
        favourite.setMovieid(movieid);
        favouriteService.delete1(favourite);
//        request.getSession().removeAttribute("f1");
        return Msg.success();
    }

    @RequestMapping("/del")
    public String del(String movieid,HttpServletRequest request){
        Favourite favourite=new Favourite();
        User user=(User) request.getSession().getAttribute("user");
        favourite.setUserid(user.getUserid());
        favourite.setMovieid(movieid);
        favouriteService.delete1(favourite);
        return "redirect:user";
    }
  @RequestMapping("/del1")
    public String del1(Integer cmid){
        commentService.deleteByPrimaryKey(cmid);
        return "redirect:user";
  }
  @RequestMapping("/news")
    public String toNews(){
        return "news";
  }

  @RequestMapping("/del2")
    public String del2(int userid){
      userService.deleteByPrimaryKey(userid);
      return "redirect:user";
  }

  @RequestMapping("/del3")
    public String del3(int cmid){
        System.out.println(cmid);
        commentService.deleteByPrimaryKey(cmid);
        return "redirect:user";
  }

  @RequestMapping("/test")
    public String admin(Model model){
        List<Movie> movies=movieService.selectAll();
        model.addAttribute("movies",movies);
        return "table";
  }

  @RequestMapping("/addnew")
    public String AddnewMovie(@RequestParam("moviepic1") MultipartFile file,Movie movie) throws IOException {
        String picName= UUID.randomUUID().toString();
        String name=file.getOriginalFilename();
//        String extname=name.substring(name.lastIndexOf("."));
        file.transferTo(new File("D:/lz/src/main/webapp/images/"+name));
        movie.setMovieid(picName);
        movie.setMoviepic(name);
        System.out.println(movie);
        movieService.insert(movie);
        return "redirect:test";
  }
  @RequestMapping("/del4")
    public String AdminDel(String movieid){
        System.out.println(movieid);
        movieService.deleteByPrimaryKey(movieid);
        return "redirect:test";
  }
}
