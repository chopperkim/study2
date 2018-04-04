-- 생성하실 정보 

vo  : com.study.board.vo : Board
DAO : com.study.board.dao : BoardDaoJDBC
      + getBoardCount(Connection conn)     
      + getBoardList(Connection conn)
      + getBoard(Connection conn, int bo_no)
      + insertBoard(Connection conn, Board board)
      + updateBoard(Connection conn, Board board) 
        
                            
Service : com.study.board.service : BoardServiceImpl
       + getBoardCount()
       + getBoardList()
       + getBoard(int bo_no)
       + registBoard(Board board)
       + modifyBoard(Board board)
       
WebContent 에 board 폴더 생성 
   boardList.jsp 파일 생성  <- 16일차 memberList.jsp 참고해서  

오후 2교시 글등록 완성해 주세요 
 - 등록폼 : 제목, 작성자, 비번, 이메일,  내용 
 - boardInsert.jsp 에서 board 에 사용자 IP 를 직접 입력              
       board.setBo_id( ????   );
   
 - 서비스, dao 완성~~
 
 - 상세보기 한번 해보세요...
 - 18장 "MVC 패턴 구현" 꼭 읽어보세요~~~~~  
-------------------------------------------------------
 
화요일 : 상세보기 소스 (맹민호)
 //    : 18장 MVC 패턴 구현 읽어 보시고 
--
 1. PagingVO 에 페이지블럭 관련 구현 해서  list.jsp 완성 
  
 2. Edit/Form 화면에서 "내용" 영역에 있는 것을 위지웍에디터로 바꿔서 구현
     네어버, 다음, 섬머노트, ck 에디터 같은~~~ 
         
-------------------------------------------------------    
2교시에 본인이 하던것 정리해 주시고
3교시에 BeanUtils 및 MyBatis    
 
---------------------------------
1. 게시판 Dao 인터페이스 분리
      MyBatis 구현체 생성
         //    설정파일 및 매퍼파일 생성 
      -- 테스트    


2. 기존 게시판 목록화면에 조회기능 추가 
      boardList.jsp 화면 수정 
      매퍼파일 기능 변경  
      -- 테스트 및 변경할 내용 확인 
      -- 변경후 테스트 
3. 인서트 실행후 입력된 PK 값을 처리하고 싶다면
      -- selectKey 이용 
4. 복합 객체(1:1, 1:N)의 처리는?          



























     
       
 