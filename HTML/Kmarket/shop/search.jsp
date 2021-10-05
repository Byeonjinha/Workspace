
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>K마켓::대한민국 1등 온라인 쇼핑</title>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="shortcut icon" href="../img/favicon.ico" id="favicon">
    <link rel="stylesheet" href="../css/style.css"/>
    <link rel="stylesheet" href="../css/sub.css"/>
    <link rel="stylesheet" href="../css/common.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <script src="../js/category.js"></script>
    <script src="../js/bannerSlider.js"></script>
    <script src="../js/best.js"></script>
    <script src="../js/top.js"></script>
    <script></script>
  </head>
  <body>
    <div id="wrapper">
      <header>
        <div class="top">
            <div>
                <a href="#">로그인</a>
                <a href="#">회원가입</a>
                <a href="#">마이페이지</a>
                <a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;장바구니</a>
            </div>
        </div>
        <div class="logo">
            <div>
                <a href="#"><img src="../img/header_logo.png" alt="로고"/></a>
                <form action="#">
                    <input type="text" name="search"/>
                    <button><i class="fa fa-search"></i></button>
                </form>                
            </div>
            
        </div>
        <div class="menu">
            <div>
                <ul>
                    <li><a href="#">히트상품</a></li>
                    <li><a href="#">추천상품</a></li>
                    <li><a href="#">최신상품</a></li>
                    <li><a href="#">인기상품</a></li>
                    <li><a href="#">할인상품</a></li>
                </ul>
                <ul>
                    <li><a href="#">쿠폰존</a></li>
                    <li><a href="#">사용후기</a></li>
                    <li><a href="#">개인결제</a></li>
                    <li><a href="#">고객센터</a></li>
                    <li><a href="#">FAQ</a></li>
                </ul>
            </div>
        </div>
      </header>
      <main>
        <!-- 카테고리/베스트 상품 영역 -->
        <aside>
          <ul class="category">     
              <li><i class="fa fa-bars" aria-hidden="true"></i>카테고리</li>
              <li>
                  <a href="#"><i class="fas fa-tshirt"></i>패션·의류·뷰티</a>
                  <ol>
                      <li><a href="#">남성의류</a></li>
                      <li><a href="#">여성의류</a></li>
                      <li><a href="#">잡화</a></li>
                      <li><a href="#">뷰티</a></li>
                  </ol>
              </li>
              <li>
                  <a href="#"><i class="fas fa-laptop"></i>가전·디지털</a>
                  <ol>
                      <li><a href="#">노트북/PC</a></li>
                      <li><a href="#">가전</a></li>
                      <li><a href="#">휴대폰</a></li>
                      <li><a href="#">기타</a></li>
                  </ol>
              </li>
              <li>
                  <a href="#"><i class="fas fa-utensils"></i>식품·생필품</a>
                  <ol>
                      <li><a href="#">신선식품</a></li>
                      <li><a href="#">가공식품</a></li>
                      <li><a href="#">건강식품</a></li>
                      <li><a href="#">생필품</a></li>
                  </ol>
              </li>
              <li>
                  <a href="#"><i class="fas fa-home"></i>홈·문구·취미</a>
                  <ol>
                      <li><a href="#">가구/DIY</a></li>
                      <li><a href="#">침구·커튼</a></li>
                      <li><a href="#">생활용품</a></li>
                      <li><a href="#">사무용품</a></li>
                  </ol>
              </li>
          </ul>
        </aside>

        <section id="search">
          <nav>
            <h1>상품 검색 결과</h1>
            <p>
              HOME > <span>상품검색</span> > <strong>검색키워드</strong>
            </p>
          </nav>

          <div class="detail_search">
            <h3><strong>셔츠</strong>검색결과 <em>(총&nbsp;:&nbsp;<span>20</span>&nbsp;건)</em></h3>
            <form action="#">
              <input type="text" name="search"/>
              <input type="submit" value="검색"/>
              <span>
                  <label><input type="checkbox" name="chk" value="상품명">상품명</label>
                  <label><input type="checkbox" name="chk" value="상품설명">상품설명</label>
                  <label><input type="checkbox" name="chk" value="상품가격">상품가격</label>
                  <input type="text" name="min"/>원&nbsp;~&nbsp;<input type="text" name="max"/>원
              </span>
            </form>
            <p class="info">
              상세검색을 선택하지 않거나, 상품가격을 입력하지 않으면 전체에서 검색합니다.<br>
              검색어는 최대 30글자까지, 여러개의 검색어를 공백으로 구분하여 입력 할수 있습니다.
            </p>
          </div>
          <ul class="sort">
              <li><a href="#">판매많은순</a></li>
              <li><a href="#">낮은가격순</a></li>
              <li><a href="#">높은가격순</a></li>
              <li><a href="#">평점높은순</a></li>
              <li><a href="#">후기많은순</a></li>
              <li><a href="#">최근등록순</a></li>
          </ul>
          <section>
            <article>
              <ul>
                <li>
                  <a href="#" class="thumb"><img src="../img/thumb-sample-t1.jpg" alt="상품이미지"/></a>
                </li>
                <li>
                  <h3 class="name">FreeMovement BLUEFORCE</h3>
                  <p class="desc">
                    <a href="#">[블루포스] 여름신상 남방/솔리드긴팔남자옷/데님청/체크스판셔츠</a>
                  </p>
                </li>
                <li>
                  <div class="dis_price">
                    <ins>27,000</ins>
                  </div>
                  <div class="org_price">
                    <del>30,000</del>
                    <span>10%</span>
                  </div>
                  <span class="freeshipping">무료배송</span>
                </li>
                <li>
                  <h4 class="seller"><i class="fas fa-home"></i>&nbsp;블루포스</h4>
                  <h5 class="badge power">판매자등급</h5>
                  <h6 class="rating star1">상품평</h6>
                </li>
              </ul>
            </article>
            <article>
              <ul>
                <li>
                  <a href="#" class="thumb"><img src="../img/thumb-sample-t2.jpg" alt="상품이미지"/></a>
                </li>
                <li>
                  <h3 class="name">상품명</h3>
                  <p class="desc">
                    <a href="#">상품설명</a>
                  </p>
                </li>
                <li>
                  <div class="dis_price">
                    <ins>27,000</ins>
                  </div>
                  <div class="org_price">
                    <del>30,000</del>
                    <span>10%</span>
                  </div>
                  <span class="freeshipping">무료배송</span>
                </li>
                <li>
                  <h4 class="seller"><i class="fas fa-home"></i>&nbsp;판매자상점명</h4>
                  <h5 class="badge great">판매자등급</h5>
                  <h6 class="rating star2">상품평</h6>
                </li>
              </ul>
            </article>
            <article>
              <ul>
                <li>
                  <a href="#" class="thumb"><img src="../img/thumb-sample-t3.jpg" alt="상품이미지"/></a>
                </li>
                <li>
                  <h3 class="name">상품명</h3>
                  <p class="desc">
                    <a href="#">상품설명</a>
                  </p>
                </li>
                <li>
                  <div class="dis_price">
                    <ins>27,000</ins>
                  </div>
                  <div class="org_price">
                    <del>30,000</del>
                    <span>10%</span>
                  </div>
                  <span class="freeshipping">무료배송</span>
                </li>
                <li>
                  <h4 class="seller"><i class="fas fa-home"></i>&nbsp;판매자상점명</h4>
                  <h5 class="badge power great">판매자등급</h5>
                  <h6 class="rating star3">상품평</h6>
                </li>
              </ul>
            </article>
            <article>
              <ul>
                <li>
                  <a href="#" class="thumb"><img src="../img/thumb-sample-t4.jpg" alt="상품이미지"/></a>
                </li>
                <li>
                  <h3 class="name">상품명</h3>
                  <p class="desc">
                    <a href="#">상품설명</a>
                  </p>
                </li>
                <li>
                  <div class="dis_price">
                    <ins>27,000</ins>
                  </div>
                  <div class="org_price">
                    <del>30,000</del>
                    <span>10%</span>
                  </div>
                  <span class="freeshipping">무료배송</span>
                </li>
                <li>
                  <h4 class="seller"><i class="fas fa-home"></i>&nbsp;판매자상점명</h4>
                  <h5 class="badge power great">판매자등급</h5>
                  <h6 class="rating star4">상품평</h6>
                </li>
              </ul>
            </article>
            <article>
              <ul>
                <li>
                  <a href="#" class="thumb"><img src="../img/thumb-sample-t5.jpg" alt="상품이미지"/></a>
                </li>
                <li>
                  <h3 class="name">상품명</h3>
                  <p class="desc">
                    <a href="#">상품설명</a>
                  </p>
                </li>
                <li>
                  <div class="dis_price">
                    <ins>27,000</ins>
                  </div>
                  <div class="org_price">
                    <del>30,000</del>
                    <span>10%</span>
                  </div>
                  <span class="freeshipping">무료배송</span>
                </li>
                <li>
                  <h4 class="seller"><i class="fas fa-home"></i>&nbsp;판매자상정명</h4>
                  <h5 class="badge power great">판매자등급</h5>
                  <h6 class="rating star5">상품평</h6>
                </li>
              </ul>
            </article>
            <article>
              <ul>
                <li>
                  <a href="#" class="thumb"><img src="../img/thumb-sample-t5.jpg" alt="상품이미지"/></a>
                </li>
                <li>
                  <h3 class="name">상품명</h3>
                  <p class="desc">
                    <a href="#">상품설명</a>
                  </p>
                </li>
                <li>
                  <div class="dis_price">
                    <ins>27,000</ins>
                  </div>
                  <div class="org_price">
                    <del>30,000</del>
                    <span>10%</span>
                  </div>
                  <span class="freeshipping">무료배송</span>
                </li>
                <li>
                  <h4 class="seller"><i class="fas fa-home"></i>&nbsp;판매자상점명</h4>
                  <h5 class="badge power great">판매자등급</h5>
                  <h6 class="rating star5">상품평</h6>
                </li>
              </ul>
            </article>
            <article>
              <ul>
                <li>
                  <a href="#" class="thumb"><img src="../img/thumb-sample-t5.jpg" alt="상품이미지"/></a>
                </li>
                <li>
                  <h3 class="name">상품명</h3>
                  <p class="desc">
                    <a href="#">상품설명</a>
                  </p>
                </li>
                <li>
                  <div class="dis_price">
                    <ins>27,000</ins>
                  </div>
                  <div class="org_price">
                    <del>30,000</del>
                    <span>10%</span>
                  </div>
                  <span class="freeshipping">무료배송</span>
                </li>
                <li>
                  <h4 class="seller"><i class="fas fa-home"></i>&nbsp;판매자상점명</h4>
                  <h5 class="badge power great">판매자등급</h5>
                  <h6 class="rating star5">상품평</h6>
                </li>
              </ul>
            </article>
            <article>
              <ul>
                <li>
                  <a href="#" class="thumb"><img src="../img/thumb-sample-t5.jpg" alt="상품이미지"/></a>
                </li>
                <li>
                  <h3 class="name">상품명</h3>
                  <p class="desc">
                    <a href="#">상품설명</a>
                  </p>
                </li>
                <li>
                  <div class="dis_price">
                    <ins>27,000</ins>
                  </div>
                  <div class="org_price">
                    <del>30,000</del>
                    <span>10%</span>
                  </div>
                  <span class="freeshipping">무료배송</span>
                </li>
                <li>
                  <h4 class="seller"><i class="fas fa-home"></i>&nbsp;판매자상점명</h4>
                  <h5 class="badge power great">판매자등급</h5>
                  <h6 class="rating star5">상품평</h6>
                </li>
              </ul>
            </article>
            <article>
              <ul>
                <li>
                  <a href="#" class="thumb"><img src="../img/thumb-sample-t5.jpg" alt="상품이미지"/></a>
                </li>
                <li>
                  <h3 class="name">상품명</h3>
                  <p class="desc">
                    <a href="#">상품설명</a>
                  </p>
                </li>
                <li>
                  <div class="dis_price">
                    <ins>27,000</ins>
                  </div>
                  <div class="org_price">
                    <del>30,000</del>
                    <span>10%</span>
                  </div>
                  <span class="freeshipping">무료배송</span>
                </li>
                <li>
                  <h4 class="seller"><i class="fas fa-home"></i>&nbsp;판매자상점명</h4>
                  <h5 class="badge power great">판매자등급</h5>
                  <h6 class="rating star5">상품평</h6>
                </li>
              </ul>
            </article>
            <article>
              <ul>
                <li>
                  <a href="#" class="thumb"><img src="../img/thumb-sample-t5.jpg" alt="상품이미지"/></a>
                </li>
                <li>
                  <h3 class="name">상품명</h3>
                  <p class="desc">
                    <a href="#">상품설명</a>
                  </p>
                </li>
                <li>
                  <div class="dis_price">
                    <ins>27,000</ins>
                  </div>
                  <div class="org_price">
                    <del>30,000</del>
                    <span>10%</span>
                  </div>
                  <span class="freeshipping">무료배송</span>
                </li>
                <li>
                  <h4 class="seller"><i class="fas fa-home"></i>&nbsp;판매자상점명</h4>
                  <h5 class="badge power great">판매자등급</h5>
                  <h6 class="rating star5">상품평</h6>
                </li>
              </ul>
            </article>
          </section>
          <div class="paging">
            <span class="prev">
              <a href="#"><&nbsp;이전</a>
            </span>
            <span class="num">
              <a href="#" class="on">1</a>
              <a href="#">2</a>
              <a href="#">3</a>
              <a href="#">4</a>
              <a href="#">5</a>
              <a href="#">6</a>
              <a href="#">7</a>
            </span>
            <span class="next">
              <a href="#">다음&nbsp;></a>
            </span>
          </div>
        </section>
      </main>
      <footer>
        <ul>
            <li><a href="#">회사소개</a></li>
            <li><a href="#">서비스이용약관</a></li>
            <li><a href="#">개인정보처리방침</a></li>
            <li><a href="#">전자금융거래약관</a></li>
        </ul>
        <div>
            <p><img src="../img/footer_logo.png" alt="로고"></p>
            <p>
              <strong>(주)KMARKET</strong><br />
              부산시 강남구 테헤란로 152 (역삼동 강남파이낸스센터)<br />
              대표이사 : 홍길동<br />
              사업자등록번호 : 220-81-83676 사업자정보확인<br />
              통신판매업신고 : 강남 10630호 Fax : 02-589-8842
            </p>
            <p>
              <strong>고객센터</strong><br />
              Tel : 1234-5678 (평일 09:00~18:00)<br />
              스마일클럽/SVIP 전용 : 1522-5700 (365일 09:00~18:00)<br />
              경기도 부천시 원미구 부일로 223(상동) 투나빌딩 6층<br />
              Fax : 051-123-4567 | Mail : kmarket@kmarket.co.kr<br />
            </p>
          </div>              
      </footer>
      <button type="button" id="top">상단이동</button>
    </div>
  </body>
</html>
