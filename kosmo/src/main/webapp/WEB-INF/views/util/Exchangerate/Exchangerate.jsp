<%@ page language="java" contentType="text/html"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko">
<head>
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Helper - Exchange Calculator</title>

<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link rel="stylesheet" href="resources/style.css">

</head>
<div class="preloader d-flex align-items-center justify-content-center">
	<div class="preloader-circle"></div>
	<div class="preloader-img">
		<img src="resources/img/core-img/leaf.png" alt="">
	</div>
</div>

<jsp:include page="../../setting/header01.jsp" flush="false" />

<!-- ##### Breadcrumb Area Start ##### -->
<div class="breadcrumb-area">
	<!-- Top Breadcrumb Area -->
	<div
		class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center"
		style="background-image: url(resources/img/ehddnr2.jpg);">
		<h2>Exchange Calculator</h2>
	</div>
</div>
<!-- ##### Breadcrumb Area End ##### -->
<!-- ##### Header Area End ##### -->
<div class="container" align="center" style="margin-bottom: 50px;">

	<!-- 동욱 시작 -->
	<!-- 동욱 css -->
	<link rel="stylesheet" href="resources/ehddnr.css">
	<!-- 동욱 시작 -->

			<div  style="display:inline;">
				<h3 ><span>환율계산기 (매매기준율 기준)</span></h3>
				<div  style="display:inline-block;width:20%">
					<div style="display:inline-block;">
						대한민국 원 KRW
					</div>
					<br>
					<div style="display:inline-block;">
					<input type="text" id="ghkswjs1">
					</div>
				</div>
				<div  style="display:inline-block;width:10%;">
				<br>
					<img  src="https://ssl.pstatic.net/static/nfinance/ico_same.gif" >
				<br>
				</div>
				<div  style="display:inline-block;width:20%">
					<div style="display:inline-block;">
						Korea KRW
					</div>
					<br>
					<div style="display:inline-block;">
					<input type="text" id="ghkswjs2">
					</div>
				</div>
			</div>
			
<div>
<table border="1" class="tbl_exchange" summary="환전 고시 환율 리스트">
	<caption>환전 고시 환율</caption>
	<colgroup>
		<col width="162">
		<col width="92">
		<col width="92">
		<col width="92">
		<col width="93">
		<col width="92">
		<col width="90">
	</colgroup>
	<thead>
	<tr>
	<th rowspan="2" class="th_ex1">
	<a href="#" onclick="javascript:changeOrder('exchange'); return false;"><span>통화명</span></a></th>
	<th rowspan="2" class="th_ex2"><span>매매기준율</span></th>
	<th colspan="2" class="th_ex3"><span>현찰</span></th>
	<th colspan="2" class="th_ex4"><span>송금</span></th>
	<th rowspan="2" class="th_ex6"><span>미화환산율</span></th>
	</tr>
	<tr>
	<th class="th_ex7"><span>사실 때 </span></th>
	<th class="th_ex8"><span>파실 때 </span></th>
	<th class="th_ex9"><span>보내실 때 </span></th>
	<th class="th_ex10"><span>받으실 때</span></th>
	</tr>
		</thead>
			<tbody>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_USDKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_USDKRW', '1', event);">
				
					
					
					
					미국 USD
				
				</a></td>
				<td class="sale">1,125.20</td>
				<td>1,144.89</td>
				<td>1,105.51</td>
				<td>1,136.20</td>
				<td>1,114.20</td>
				<td>1.000</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_EURKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_EURKRW', '2', event);">
				
					
					
					
					유럽연합 EUR
				
				</a></td>
				<td class="sale">1,275.92</td>
				<td>1,301.31</td>
				<td>1,250.53</td>
				<td>1,288.67</td>
				<td>1,263.17</td>
				<td>1.134</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_JPYKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_JPYKRW', '3', event);">
				
					일본 JPY (100엔)
					
					
					
				
				</a></td>
				<td class="sale">1,015.75</td>
				<td>1,033.52</td>
				<td>997.98</td>
				<td>1,025.70</td>
				<td>1,005.80</td>
				<td>0.903</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_CNYKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_CNYKRW', '4', event);">
				
					
					
					
					중국 CNY
				
				</a></td>
				<td class="sale">167.29</td>
				<td>175.65</td>
				<td>158.93</td>
				<td>168.96</td>
				<td>165.62</td>
				<td>0.149</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_HKDKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_HKDKRW', '5', event);">
				
					
					
					
					홍콩 HKD
				
				</a></td>
				<td class="sale">143.37</td>
				<td>146.19</td>
				<td>140.55</td>
				<td>144.80</td>
				<td>141.94</td>
				<td>0.127</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_TWDKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_TWDKRW', '6', event);">
				
					
					
					
					대만 TWD
				
				</a></td>
				<td class="sale">36.53</td>
				<td>41.31</td>
				<td>33.98</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.033</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_GBPKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_GBPKRW', '7', event);">
				
					
					
					
					영국 GBP
				
				</a></td>
				<td class="sale">1,466.19</td>
				<td>1,495.07</td>
				<td>1,437.31</td>
				<td>1,480.85</td>
				<td>1,451.53</td>
				<td>1.303</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_OMRKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_OMRKRW', '8', event);">
				
					
					
					
					오만 OMR
				
				</a></td>
				<td class="sale">2,922.60</td>
				<td>3,182.71</td>
				<td>2,747.25</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>2.597</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_CADKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_CADKRW', '9', event);">
				
					
					
					
					캐나다 CAD
				
				</a></td>
				<td class="sale">850.56</td>
				<td>867.31</td>
				<td>833.81</td>
				<td>859.06</td>
				<td>842.06</td>
				<td>0.756</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_CHFKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_CHFKRW', '10', event);">
				
					
					
					
					스위스 CHF
				
				</a></td>
				<td class="sale">1,124.19</td>
				<td>1,146.33</td>
				<td>1,102.05</td>
				<td>1,135.43</td>
				<td>1,112.95</td>
				<td>0.999</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_SEKKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_SEKKRW', '11', event);">
				
					
					
					
					스웨덴 SEK
				
				</a></td>
				<td class="sale">120.11</td>
				<td>123.05</td>
				<td>117.17</td>
				<td>121.31</td>
				<td>118.91</td>
				<td>0.107</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_AUDKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_AUDKRW', '12', event);">
				
					
					
					
					호주 AUD
				
				</a></td>
				<td class="sale">798.78</td>
				<td>814.51</td>
				<td>783.05</td>
				<td>806.76</td>
				<td>790.80</td>
				<td>0.710</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_NZDKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_NZDKRW', '13', event);">
				
					
					
					
					뉴질랜드 NZD
				
				</a></td>
				<td class="sale">762.60</td>
				<td>777.62</td>
				<td>747.58</td>
				<td>770.22</td>
				<td>754.98</td>
				<td>0.678</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_CZKKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_CZKKRW', '14', event);">
				
					
					
					
					체코 CZK
				
				</a></td>
				<td class="sale">49.76</td>
				<td>53.98</td>
				<td>45.29</td>
				<td>50.30</td>
				<td>49.22</td>
				<td>0.044</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_CLPKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_CLPKRW', '15', event);">
				
					
					
					
					칠레 CLP
				
				</a></td>
				<td class="sale">1.72</td>
				<td>1.85</td>
				<td>1.59</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.002</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_TRYKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_TRYKRW', '16', event);">
				
					
					
					
					터키 TRY
				
				</a></td>
				<td class="sale">211.27</td>
				<td>243.17</td>
				<td>190.57</td>
				<td>213.59</td>
				<td>208.95</td>
				<td>0.188</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_MNTKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_MNTKRW', '17', event);">
				
					
					
					
					몽골 MNT
				
				</a></td>
				<td class="sale">0.43</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.000</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_ILSKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_ILSKRW', '18', event);">
				
					
					
					
					이스라엘 ILS
				
				</a></td>
				<td class="sale">310.99</td>
				<td>342.08</td>
				<td>286.12</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.276</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_DKKKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_DKKKRW', '19', event);">
				
					
					
					
					덴마크 DKK
				
				</a></td>
				<td class="sale">170.97</td>
				<td>175.15</td>
				<td>166.79</td>
				<td>172.67</td>
				<td>169.27</td>
				<td>0.152</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_NOKKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_NOKKRW', '20', event);">
				
					
					
					
					노르웨이 NOK
				
				</a></td>
				<td class="sale">130.42</td>
				<td>133.61</td>
				<td>127.23</td>
				<td>131.72</td>
				<td>129.12</td>
				<td>0.116</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_SARKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_SARKRW', '21', event);">
				
					
					
					
					사우디아라비아 SAR
				
				</a></td>
				<td class="sale">300.03</td>
				<td>318.93</td>
				<td>279.33</td>
				<td>303.03</td>
				<td>297.03</td>
				<td>0.267</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_KWDKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_KWDKRW', '22', event);">
				
					
					
					
					쿠웨이트 KWD
				
				</a></td>
				<td class="sale">3,705.83</td>
				<td>3,946.70</td>
				<td>3,409.37</td>
				<td>3,742.88</td>
				<td>3,668.78</td>
				<td>3.294</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_BHDKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_BHDKRW', '23', event);">
				
					
					
					
					바레인 BHD
				
				</a></td>
				<td class="sale">2,984.69</td>
				<td>3,175.71</td>
				<td>2,745.92</td>
				<td>3,014.53</td>
				<td>2,954.85</td>
				<td>2.653</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_AEDKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_AEDKRW', '24', event);">
				
					
					
					
					아랍에미리트 AED
				
				</a></td>
				<td class="sale">306.33</td>
				<td>323.17</td>
				<td>285.20</td>
				<td>309.39</td>
				<td>303.27</td>
				<td>0.272</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_JODKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_JODKRW', '25', event);">
				
					
					
					
					요르단 JOD
				
				</a></td>
				<td class="sale">1,586.46</td>
				<td>1,727.65</td>
				<td>1,459.55</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>1.410</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_EGPKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_EGPKRW', '26', event);">
				
					
					
					
					이집트 EGP
				
				</a></td>
				<td class="sale">64.15</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.057</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_THBKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_THBKRW', '27', event);">
				
					
					
					
					태국 THB
				
				</a></td>
				<td class="sale">35.98</td>
				<td>37.77</td>
				<td>33.83</td>
				<td>36.33</td>
				<td>35.63</td>
				<td>0.032</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_SGDKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_SGDKRW', '28', event);">
				
					
					
					
					싱가포르 SGD
				
				</a></td>
				<td class="sale">830.80</td>
				<td>847.33</td>
				<td>814.27</td>
				<td>839.10</td>
				<td>822.50</td>
				<td>0.738</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_MYRKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_MYRKRW', '29', event);">
				
					
					
					
					말레이시아 MYR
				
				</a></td>
				<td class="sale">275.58</td>
				<td>292.94</td>
				<td>255.19</td>
				<td>0.00</td>
				<td>272.83</td>
				<td>0.245</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_IDRKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_IDRKRW', '30', event);">
				
					
					인도네시아 IDR 100
					
					
				
				</a></td>
				<td class="sale">8.02</td>
				<td>8.58</td>
				<td>7.22</td>
				<td>8.10</td>
				<td>7.94</td>
				<td>0.007</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_QARKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_QARKRW', '31', event);">
				
					
					
					
					카타르 QAR
				
				</a></td>
				<td class="sale">309.01</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.275</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_KZTKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_KZTKRW', '32', event);">
				
					
					
					
					카자흐스탄 KZT
				
				</a></td>
				<td class="sale">2.98</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.003</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_BNDKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_BNDKRW', '33', event);">
				
					
					
					
					브루나이 BND
				
				</a></td>
				<td class="sale">830.80</td>
				<td>864.03</td>
				<td>780.96</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.738</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_INRKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_INRKRW', '34', event);">
				
					
					
					
					인도 INR
				
				</a></td>
				<td class="sale">15.80</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.014</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_PKRKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_PKRKRW', '35', event);">
				
					
					
					
					파키스탄 PKR
				
				</a></td>
				<td class="sale">8.05</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.007</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_BDTKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_BDTKRW', '36', event);">
				
					
					
					
					방글라데시 BDT
				
				</a></td>
				<td class="sale">13.39</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.00</td>
				<td>0.012</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_PHPKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_PHPKRW', '37', event);">
				
					
					
					
					필리핀 PHP
				
				</a></td>
				<td class="sale">21.60</td>
				<td>23.76</td>
				<td>19.83</td>
				<td>21.81</td>
				<td>21.39</td>
				<td>0.019</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_MXNKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_MXNKRW', '38', event);">
				
					
					
					
					멕시코 MXN
				
				</a></td>
				<td class="sale">58.37</td>
				<td>64.20</td>
				<td>53.47</td>
				<td>58.95</td>
				<td>57.79</td>
				<td>0.052</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_BRLKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_BRLKRW', '39', event);">
				
					
					
					
					브라질 BRL
				
				</a></td>
				<td class="sale">298.60</td>
				<td>329.05</td>
				<td>274.72</td>
				<td>0.00</td>
				<td>295.02</td>
				<td>0.265</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_VNDKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_VNDKRW', '40', event);">
				
					
					
					베트남 VND 100
					
				
				</a></td>
				<td class="sale">4.85</td>
				<td>5.42</td>
				<td>4.28</td>
				<td>4.89</td>
				<td>4.81</td>
				<td>0.004</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_ZARKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_ZARKRW', '41', event);">
				
					
					
					
					남아프리카 공화국 ZAR
				
				</a></td>
				<td class="sale">80.41</td>
				<td>85.23</td>
				<td>73.98</td>
				<td>81.37</td>
				<td>79.45</td>
				<td>0.072</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_RUBKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_RUBKRW', '42', event);">
				
					
					
					
					러시아 RUB
				
				</a></td>
				<td class="sale">17.14</td>
				<td>18.33</td>
				<td>15.26</td>
				<td>17.31</td>
				<td>16.97</td>
				<td>0.015</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_HUFKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_HUFKRW', '43', event);">
				
					
					
					
					헝가리 HUF
				
				</a></td>
				<td class="sale">4.02</td>
				<td>4.39</td>
				<td>3.70</td>
				<td>4.06</td>
				<td>3.98</td>
				<td>0.004</td>
				</tr>
				
				<tr>
				<td class="tit"><a href="/marketindex/exchangeDetail.nhn?marketindexCd=FX_PLNKRW" target="_parent" onclick="parent.clickcr(this, 'exl.exlist', 'FX_PLNKRW', '44', event);">
				
					
					
					
					폴란드 PLN
				
				</a></td>
				<td class="sale">294.35</td>
				<td>317.89</td>
				<td>270.81</td>
				<td>297.58</td>
				<td>291.12</td>
				<td>0.262</td>
				</tr>
				
			</tbody>
		</table>
</div>		
			<!-- 페이지 -->
			<div style="margin-top: 30px;" align="center" id="pagestr">
				
			</div>
	
</div>
	<!-- 동욱 끝 -->
<!-- ##### Contact Area End ##### -->

<jsp:include page="../../setting/footer01.jsp" flush="false" />
<!-- ##### Footer Area End ##### -->
</body>
<script type="text/javascript" >
$(function(){
	var obj = new Object();
	var str = '';
	
	$.ajax({
		url : 'exchangeratejson', 
		type : 'GET',
		dataType : 'json',
		success : function(obj) {
			str += '<br><table class="table">';
			str += '<thead class="table-success"><tr align="center" >';
			str += '<th style="vertical-align:middle;width:25%;">Country / Currency people</th>';
			str += '<th style="vertical-align:middle;width:10%;">Currency Codes</th>';
			str += '<th style="vertical-align:middle;width:20%;">When telegraphic transfer (remittance) receive</th>';
			str += '<th style="vertical-align:middle;width:20%;">When telegraphic transfer (transfer) and send</th>';
			str += '<th style="vertical-align:middle;width:15%;">Marketing reference rate</th>';
			str += '<th style="vertical-align:middle;width:10%;">Book Value</th>';
			str += '</tr> </thead>';
			for(var i=0;i<obj.length;i++){
				var ss = obj[i].cur_nm;
				var ss2 = ss.split(" ");
				str += '<tr align="center"><td>'+ss2[0];
				if(ss2[1] != null){
				str += ' / '+ss2[1]+'</td>';
				}
				str += '<td>'+obj[i].cur_unit+'</td>';
				str += '<td>'+obj[i].ttb+'</td>';
				str += '<td>'+obj[i].tts+'</td>';
				str += '<td>'+obj[i].deal_bas_r+'</td>';
				str += '<td>'+obj[i].bkpr+'</td></tr>';
			}
			str += '</table>';
			$('#pagestr').html(str);
		},
		error : function(){
			alert('오류');
		}
	});
	
});
</script>
</html>