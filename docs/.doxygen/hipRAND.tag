<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>hipranddevice.dox</name>
    <path>/home/samwu103/hipRAND/docs/.doxygen/</path>
    <filename>hipranddevice_8dox.html</filename>
  </compound>
  <compound kind="file">
    <name>hiprandhost.dox</name>
    <path>/home/samwu103/hipRAND/docs/.doxygen/</path>
    <filename>hiprandhost_8dox.html</filename>
  </compound>
  <compound kind="file">
    <name>hiprandhostcpp.dox</name>
    <path>/home/samwu103/hipRAND/docs/.doxygen/</path>
    <filename>hiprandhostcpp_8dox.html</filename>
  </compound>
  <compound kind="file">
    <name>mainpage.dox</name>
    <path>/home/samwu103/hipRAND/docs/.doxygen/</path>
    <filename>mainpage_8dox.html</filename>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::error</name>
    <filename>classhiprand__cpp_1_1error.html</filename>
    <member kind="typedef">
      <type>hiprandStatus_t</type>
      <name>error_type</name>
      <anchorfile>classhiprand__cpp_1_1error.html</anchorfile>
      <anchor>a60583f16fde07880f7f4dc1b9b830e3b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>error</name>
      <anchorfile>classhiprand__cpp_1_1error.html</anchorfile>
      <anchor>a4acff7c0c46a3e754244e58991f4da05</anchor>
      <arglist>(error_type error) noexcept</arglist>
    </member>
    <member kind="function">
      <type>error_type</type>
      <name>error_code</name>
      <anchorfile>classhiprand__cpp_1_1error.html</anchorfile>
      <anchor>ab63da11dcd0c323a35b27d9e2384cd9f</anchor>
      <arglist>() const noexcept</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>error_string</name>
      <anchorfile>classhiprand__cpp_1_1error.html</anchorfile>
      <anchor>affc94e3dc83506efd56cf24134b09420</anchor>
      <arglist>() const noexcept</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>what</name>
      <anchorfile>classhiprand__cpp_1_1error.html</anchorfile>
      <anchor>ab05ba464048a180e4c76cd9dc57efa52</anchor>
      <arglist>() const noexcept</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static std::string</type>
      <name>to_string</name>
      <anchorfile>classhiprand__cpp_1_1error.html</anchorfile>
      <anchor>abb12b4f6425e5941e3584c0fd440fa81</anchor>
      <arglist>(error_type error)</arglist>
    </member>
    <member kind="friend">
      <type>friend bool</type>
      <name>operator==</name>
      <anchorfile>classhiprand__cpp_1_1error.html</anchorfile>
      <anchor>ae9447c2d2b859fec52bd0a5556f41923</anchor>
      <arglist>(const error &amp;l, const error &amp;r)</arglist>
    </member>
    <member kind="friend">
      <type>friend bool</type>
      <name>operator!=</name>
      <anchorfile>classhiprand__cpp_1_1error.html</anchorfile>
      <anchor>a9c9588ec1a8faf308fd5c153445b43df</anchor>
      <arglist>(const error &amp;l, const error &amp;r)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::lognormal_distribution</name>
    <filename>classhiprand__cpp_1_1lognormal__distribution.html</filename>
    <templarg></templarg>
    <class kind="class">hiprand_cpp::lognormal_distribution::param_type</class>
    <member kind="function">
      <type></type>
      <name>lognormal_distribution</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution.html</anchorfile>
      <anchor>a9a1b82f4dd70443f76d955fee610027a</anchor>
      <arglist>(RealType m=0.0, RealType s=1.0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>lognormal_distribution</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution.html</anchorfile>
      <anchor>aab743845c5f01d351e76abe22505962a</anchor>
      <arglist>(const param_type &amp;params)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution.html</anchorfile>
      <anchor>aa01f3f22e14e576f0fdd4ac41d74dc1e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>RealType</type>
      <name>m</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution.html</anchorfile>
      <anchor>a846b641a2f4a9d40ff450b9857310e7e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>RealType</type>
      <name>s</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution.html</anchorfile>
      <anchor>a158b1a4f0d77b29d2242daa1a3c7492a</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>param_type</type>
      <name>param</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution.html</anchorfile>
      <anchor>a69a18ac5e9d1eb189e368b3f122f0f10</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>param</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution.html</anchorfile>
      <anchor>a3defe4c76d4359b2ce7bd12fdcdaf71e</anchor>
      <arglist>(const param_type &amp;params)</arglist>
    </member>
    <member kind="function">
      <type>RealType</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution.html</anchorfile>
      <anchor>a24d0265ebbf3084c39c197e91ed738c0</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>RealType</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution.html</anchorfile>
      <anchor>a1708295841d0680d2547fb8e7737cfbe</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution.html</anchorfile>
      <anchor>ac9c422989671bb7dc0be88b41a1a8d55</anchor>
      <arglist>(Generator &amp;g, RealType *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution.html</anchorfile>
      <anchor>a04dcafa0678cd5bb7e8d40b872bffada</anchor>
      <arglist>(const lognormal_distribution&lt; RealType &gt; &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution.html</anchorfile>
      <anchor>a25120e5afb341d048141c9eb5f799382</anchor>
      <arglist>(const lognormal_distribution&lt; RealType &gt; &amp;other)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::mrg32k3a_engine</name>
    <filename>classhiprand__cpp_1_1mrg32k3a__engine.html</filename>
    <templarg>DefaultSeed</templarg>
    <member kind="typedef">
      <type>unsigned int</type>
      <name>result_type</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>a223bf66c964c7ee6384ee7e65ffa4982</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long long</type>
      <name>offset_type</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>acea6e72f6b935bdcf0cb7d71f8dc61aa</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long long</type>
      <name>seed_type</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>a95298c855867e6a3533b8b2dcf4dfb0b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>mrg32k3a_engine</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>ab988de7621b0eee9393852ca6e8c696d</anchor>
      <arglist>(seed_type seed_value=DefaultSeed, offset_type offset_value=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>mrg32k3a_engine</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>a73ffc0a27b18a5eec43bc42f0c191ebc</anchor>
      <arglist>(hiprandGenerator_t &amp;generator)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~mrg32k3a_engine</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>a09c13618be1705ac1aafeb5968a6c22f</anchor>
      <arglist>() noexcept(false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stream</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>a53aa23da44112c3dc55ea366919495b1</anchor>
      <arglist>(hipStream_t value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>offset</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>a7c7ca69404c7a476b16d6510200d648d</anchor>
      <arglist>(offset_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>seed</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>a5e2ffc36c70aae8d0d187cf13fe58812</anchor>
      <arglist>(seed_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>acb2835ad48c05ed96254244bd59ad494</anchor>
      <arglist>(result_type *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>ac048de45851ab95e852dd05ad72d50e4</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>ad5b3e1ad12b22f070b180f0ffed00609</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static constexpr hiprandRngType</type>
      <name>type</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>a8cdcafc5b4148358ecde4278482a8e97</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static constexpr seed_type</type>
      <name>default_seed</name>
      <anchorfile>classhiprand__cpp_1_1mrg32k3a__engine.html</anchorfile>
      <anchor>a874bdce809b1d02adfcf835b265a3b15</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::mt19937_engine</name>
    <filename>classhiprand__cpp_1_1mt19937__engine.html</filename>
    <templarg>DefaultSeed</templarg>
    <member kind="typedef">
      <type>unsigned int</type>
      <name>result_type</name>
      <anchorfile>classhiprand__cpp_1_1mt19937__engine.html</anchorfile>
      <anchor>ab7f029ca8f3e5c1e38a26e6df4077ecc</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long long</type>
      <name>seed_type</name>
      <anchorfile>classhiprand__cpp_1_1mt19937__engine.html</anchorfile>
      <anchor>ab2d47e9790a4aa28a47eacde002967bb</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>mt19937_engine</name>
      <anchorfile>classhiprand__cpp_1_1mt19937__engine.html</anchorfile>
      <anchor>a72e22cbdbff276b695900bf2c1ff8d09</anchor>
      <arglist>(seed_type seed_value=DefaultSeed)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>mt19937_engine</name>
      <anchorfile>classhiprand__cpp_1_1mt19937__engine.html</anchorfile>
      <anchor>a1c6ea57bf4066c7122fa58fe9beab45b</anchor>
      <arglist>(hiprandGenerator_t &amp;generator)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~mt19937_engine</name>
      <anchorfile>classhiprand__cpp_1_1mt19937__engine.html</anchorfile>
      <anchor>a94ab471a84cf0f64045b4e01eb3b77ae</anchor>
      <arglist>() noexcept(false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stream</name>
      <anchorfile>classhiprand__cpp_1_1mt19937__engine.html</anchorfile>
      <anchor>a50ab11c0da105158c2010ba39e1cabb4</anchor>
      <arglist>(hipStream_t value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>seed</name>
      <anchorfile>classhiprand__cpp_1_1mt19937__engine.html</anchorfile>
      <anchor>a11a6994351c99e591dac07fb4066f80d</anchor>
      <arglist>(seed_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1mt19937__engine.html</anchorfile>
      <anchor>a0628a867abb00336be40ad206cc5c64d</anchor>
      <arglist>(result_type *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1mt19937__engine.html</anchorfile>
      <anchor>a91c223a241c2352d26e9d358286532b9</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1mt19937__engine.html</anchorfile>
      <anchor>af9826210ae6677567a1d50644c222706</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static constexpr hiprandRngType</type>
      <name>type</name>
      <anchorfile>classhiprand__cpp_1_1mt19937__engine.html</anchorfile>
      <anchor>a20574917f712712e7d9c77b35134136f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static constexpr seed_type</type>
      <name>default_seed</name>
      <anchorfile>classhiprand__cpp_1_1mt19937__engine.html</anchorfile>
      <anchor>aaab0d45a9ce04bd380c4abc71c723d4e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::mtgp32_engine</name>
    <filename>classhiprand__cpp_1_1mtgp32__engine.html</filename>
    <templarg>DefaultSeed</templarg>
    <member kind="typedef">
      <type>unsigned int</type>
      <name>result_type</name>
      <anchorfile>classhiprand__cpp_1_1mtgp32__engine.html</anchorfile>
      <anchor>a99c2f6db3cf4467cbdcbbd0daa35c34c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long long</type>
      <name>seed_type</name>
      <anchorfile>classhiprand__cpp_1_1mtgp32__engine.html</anchorfile>
      <anchor>aacbbfd8e0c4b880c035b4f608eab509b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>mtgp32_engine</name>
      <anchorfile>classhiprand__cpp_1_1mtgp32__engine.html</anchorfile>
      <anchor>a12fbeead28a881d656dc11edadb63559</anchor>
      <arglist>(seed_type seed_value=DefaultSeed)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>mtgp32_engine</name>
      <anchorfile>classhiprand__cpp_1_1mtgp32__engine.html</anchorfile>
      <anchor>aaaf70fd12851af1436faf55c3207c7e5</anchor>
      <arglist>(hiprandGenerator_t &amp;generator)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~mtgp32_engine</name>
      <anchorfile>classhiprand__cpp_1_1mtgp32__engine.html</anchorfile>
      <anchor>a023b74c8c8562ea2ead9f37010750b91</anchor>
      <arglist>() noexcept(false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stream</name>
      <anchorfile>classhiprand__cpp_1_1mtgp32__engine.html</anchorfile>
      <anchor>a98083d609dc9c0fb6f755cf7cb598b15</anchor>
      <arglist>(hipStream_t value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>seed</name>
      <anchorfile>classhiprand__cpp_1_1mtgp32__engine.html</anchorfile>
      <anchor>a5ea1073ba428fe9303b8ec01fa264033</anchor>
      <arglist>(seed_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1mtgp32__engine.html</anchorfile>
      <anchor>a59a71b9f24867c9b798021389534dfd2</anchor>
      <arglist>(result_type *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1mtgp32__engine.html</anchorfile>
      <anchor>a030610d9c1a933bb1c954be2c427bd84</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1mtgp32__engine.html</anchorfile>
      <anchor>a8a6ddc90b08834be5b8dbf202998984b</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static constexpr hiprandRngType</type>
      <name>type</name>
      <anchorfile>classhiprand__cpp_1_1mtgp32__engine.html</anchorfile>
      <anchor>ad7a6c8886494d53bc0ff6e50e881484d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static constexpr seed_type</type>
      <name>default_seed</name>
      <anchorfile>classhiprand__cpp_1_1mtgp32__engine.html</anchorfile>
      <anchor>a3cdb547c9b66aa941f136804429b9eac</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::normal_distribution</name>
    <filename>classhiprand__cpp_1_1normal__distribution.html</filename>
    <templarg></templarg>
    <class kind="class">hiprand_cpp::normal_distribution::param_type</class>
    <member kind="function">
      <type></type>
      <name>normal_distribution</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution.html</anchorfile>
      <anchor>a8f8b5cef0e337583d41340e9a86ccca4</anchor>
      <arglist>(RealType mean=0.0, RealType stddev=1.0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>normal_distribution</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution.html</anchorfile>
      <anchor>ad29d4b874c9ab88661c23fa18dd6087a</anchor>
      <arglist>(const param_type &amp;params)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution.html</anchorfile>
      <anchor>ac0449290fa457aee8a870355889243aa</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>RealType</type>
      <name>mean</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution.html</anchorfile>
      <anchor>aab5ef8dd6dae6eb2611c8b3df537a4d9</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>RealType</type>
      <name>stddev</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution.html</anchorfile>
      <anchor>a54baafc38681cbfda3205661d348e8e1</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>RealType</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution.html</anchorfile>
      <anchor>a7802c8662e71b36d1e4ce56db5d48ba5</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>RealType</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution.html</anchorfile>
      <anchor>acd28d83e791b6f70a833e838be2106aa</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>param_type</type>
      <name>param</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution.html</anchorfile>
      <anchor>a2394728452fb280b044a9ab3c22caaf2</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>param</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution.html</anchorfile>
      <anchor>a5b5152c4a3a9feb212209cb998c1b9e5</anchor>
      <arglist>(const param_type &amp;params)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution.html</anchorfile>
      <anchor>acbb1f5d4ba12dcddd0d3341333440297</anchor>
      <arglist>(Generator &amp;g, RealType *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution.html</anchorfile>
      <anchor>a08d32215fd6bc4d830c801071a612a55</anchor>
      <arglist>(const normal_distribution&lt; RealType &gt; &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution.html</anchorfile>
      <anchor>ad52293bfadf3fcd009aa7ee53e17105f</anchor>
      <arglist>(const normal_distribution&lt; RealType &gt; &amp;other)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::lognormal_distribution::param_type</name>
    <filename>classhiprand__cpp_1_1lognormal__distribution_1_1param__type.html</filename>
    <member kind="function">
      <type>RealType</type>
      <name>m</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution_1_1param__type.html</anchorfile>
      <anchor>a1ea9203e90b853db7ea8f4daf94aa500</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>RealType</type>
      <name>s</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution_1_1param__type.html</anchorfile>
      <anchor>ac5049c5b5b198d2704703304f304ccbc</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution_1_1param__type.html</anchorfile>
      <anchor>a49e73f3ca8b30104139b7575af1b7372</anchor>
      <arglist>(const param_type &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classhiprand__cpp_1_1lognormal__distribution_1_1param__type.html</anchorfile>
      <anchor>a182f6f9974422c4088a8c8508f60bd4d</anchor>
      <arglist>(const param_type &amp;other)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::poisson_distribution::param_type</name>
    <filename>classhiprand__cpp_1_1poisson__distribution_1_1param__type.html</filename>
    <member kind="function">
      <type>double</type>
      <name>mean</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution_1_1param__type.html</anchorfile>
      <anchor>aeb0a8afc714863cb705e1cacc774d602</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution_1_1param__type.html</anchorfile>
      <anchor>a3761abb1ab70bfdc5c5569ccaae072b2</anchor>
      <arglist>(const param_type &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution_1_1param__type.html</anchorfile>
      <anchor>adb5ef34a3da29673e532f0a360d7e2d4</anchor>
      <arglist>(const param_type &amp;other)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::normal_distribution::param_type</name>
    <filename>classhiprand__cpp_1_1normal__distribution_1_1param__type.html</filename>
    <member kind="function">
      <type>RealType</type>
      <name>mean</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution_1_1param__type.html</anchorfile>
      <anchor>a8422f56dda7baac791a249b7ce42d15e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>RealType</type>
      <name>stddev</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution_1_1param__type.html</anchorfile>
      <anchor>a359fec9272a2e2e01fce3efda4d22cde</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution_1_1param__type.html</anchorfile>
      <anchor>a8cf24832a5a36bf40420d25b2eb65faa</anchor>
      <arglist>(const param_type &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classhiprand__cpp_1_1normal__distribution_1_1param__type.html</anchorfile>
      <anchor>a84f3ae5f74f98114e449d5dce061a138</anchor>
      <arglist>(const param_type &amp;other)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::philox4x32_10_engine</name>
    <filename>classhiprand__cpp_1_1philox4x32__10__engine.html</filename>
    <templarg>DefaultSeed</templarg>
    <member kind="typedef">
      <type>unsigned int</type>
      <name>result_type</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>af9392dcbd7e1aa21fd63224d59535372</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long long</type>
      <name>offset_type</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>ad6802d32c459015905e335f2c89077f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long long</type>
      <name>seed_type</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>a157283e8393271ec6951f2f6468eb23f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>philox4x32_10_engine</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>a07f1dd943768613a9ad1bc24e356e179</anchor>
      <arglist>(seed_type seed_value=DefaultSeed, offset_type offset_value=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>philox4x32_10_engine</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>ae5274e9a70c0203fe0be8e28c6868833</anchor>
      <arglist>(hiprandGenerator_t &amp;generator)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~philox4x32_10_engine</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>a4b080e4817a3e4af5e45b90fbe416759</anchor>
      <arglist>() noexcept(false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stream</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>a06c42ea1f08d8d5b17daeef8591fb8c7</anchor>
      <arglist>(hipStream_t value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>offset</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>abd01903d0546a48d22a4641f2aea4196</anchor>
      <arglist>(offset_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>seed</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>aacb875fa7e8f7a1cf69ef5ebace65982</anchor>
      <arglist>(seed_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>a8d814f1235fa257943867edd0ff66532</anchor>
      <arglist>(result_type *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>a3d425ce81bb4265cf6d7c7b05a270ca4</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>acbf0cbf44220860a8d68aa4b9da56411</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static constexpr hiprandRngType</type>
      <name>type</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>a0d1d0a66bd19ca418d97a4f9269ab7f3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static constexpr seed_type</type>
      <name>default_seed</name>
      <anchorfile>classhiprand__cpp_1_1philox4x32__10__engine.html</anchorfile>
      <anchor>ac781f62afd03719fce1e75e8149d7bf4</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::poisson_distribution</name>
    <filename>classhiprand__cpp_1_1poisson__distribution.html</filename>
    <templarg></templarg>
    <class kind="class">hiprand_cpp::poisson_distribution::param_type</class>
    <member kind="function">
      <type></type>
      <name>poisson_distribution</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution.html</anchorfile>
      <anchor>a1d3a0260885f72523ad42fd710026c77</anchor>
      <arglist>(double mean=1.0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>poisson_distribution</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution.html</anchorfile>
      <anchor>a442ab6fff18f79a8c580133c4c20095b</anchor>
      <arglist>(const param_type &amp;params)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution.html</anchorfile>
      <anchor>a768f29974d867a62320a2791f7d4f2a4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>mean</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution.html</anchorfile>
      <anchor>a8423f8c185267d2196aa6582274417df</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>IntType</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution.html</anchorfile>
      <anchor>ac8751f30cd4b20b81fc22cb78ce9f35e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>IntType</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution.html</anchorfile>
      <anchor>a3d9f7e8e15c1c6a48728980a542ea349</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>param_type</type>
      <name>param</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution.html</anchorfile>
      <anchor>a05dded4b9cebf5fd3d6122ebfd393710</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>param</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution.html</anchorfile>
      <anchor>a34ae7291823c7f742d19602e95dec870</anchor>
      <arglist>(const param_type &amp;params)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution.html</anchorfile>
      <anchor>a01dc9f442a95855cbcac3e60ac6264ce</anchor>
      <arglist>(Generator &amp;g, IntType *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution.html</anchorfile>
      <anchor>a85b49af7e3094253618543278e9fda3b</anchor>
      <arglist>(const poisson_distribution&lt; IntType &gt; &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classhiprand__cpp_1_1poisson__distribution.html</anchorfile>
      <anchor>a151969fff15bb46197583337c2212c56</anchor>
      <arglist>(const poisson_distribution&lt; IntType &gt; &amp;other)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::scrambled_sobol32_engine</name>
    <filename>classhiprand__cpp_1_1scrambled__sobol32__engine.html</filename>
    <templarg>DefaultNumDimensions</templarg>
    <member kind="typedef">
      <type>unsigned int</type>
      <name>result_type</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>aab01a35fa0518357b220934b9d6d497d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long long</type>
      <name>offset_type</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>ac5c54c1691f7ef1756966ea904e73684</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned int</type>
      <name>dimensions_num_type</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>a8954baa0521ed3ef71e9a1c983de1833</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>scrambled_sobol32_engine</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>a7694b43784b26f923ad4100abc7e7000</anchor>
      <arglist>(dimensions_num_type num_of_dimensions=DefaultNumDimensions, offset_type offset_value=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>scrambled_sobol32_engine</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>a2562f31e3d1b48a444bd3b5fee95a490</anchor>
      <arglist>(hiprandGenerator_t &amp;generator)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~scrambled_sobol32_engine</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>a16b951ae9b2b6b5756acf65cf19a169c</anchor>
      <arglist>() noexcept(false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stream</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>aea1af1b2929873d4cad811f68e30d09c</anchor>
      <arglist>(hipStream_t value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>offset</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>ad41a01f4534abf24b7063dc60223176a</anchor>
      <arglist>(offset_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dimensions</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>ade0d313ce76f7bc86a533b3001d784fb</anchor>
      <arglist>(dimensions_num_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>af84c45f8cd868928aed915a7a559d006</anchor>
      <arglist>(result_type *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>a50f800705eb0235c7e2d186744fae1ba</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>afc1fe988ad7000aabd15930a6a53918a</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static constexpr hiprandRngType</type>
      <name>type</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>a71dbdf4684986eb3eef65c90acddd958</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static constexpr dimensions_num_type</type>
      <name>default_num_dimensions</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol32__engine.html</anchorfile>
      <anchor>a4eb70a40223745662cf1f4f5cef48120</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::scrambled_sobol64_engine</name>
    <filename>classhiprand__cpp_1_1scrambled__sobol64__engine.html</filename>
    <templarg>DefaultNumDimensions</templarg>
    <member kind="typedef">
      <type>unsigned long long int</type>
      <name>result_type</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>a87b6da83647df5e21e25ecb73ef0592e</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long long</type>
      <name>offset_type</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>aac48a0be00ce5227baa83d7d792f5c37</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned int</type>
      <name>dimensions_num_type</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>aa15b2601747e51dcb25f734c1e8980f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>scrambled_sobol64_engine</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>aeb7c48aebeec0d305df887d1c485ca2e</anchor>
      <arglist>(dimensions_num_type num_of_dimensions=DefaultNumDimensions, offset_type offset_value=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>scrambled_sobol64_engine</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>a68acecdb84dec9e6b852c2ee47a2db8b</anchor>
      <arglist>(hiprandGenerator_t &amp;generator)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~scrambled_sobol64_engine</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>a619d9687fe3dd14d91ea905b067e84ab</anchor>
      <arglist>() noexcept(false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stream</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>a5f0262983463c63b2ea0977a0ad9e3a4</anchor>
      <arglist>(hipStream_t value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>offset</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>a9e5051fdfc889c726d268878a2dc16dd</anchor>
      <arglist>(offset_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dimensions</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>ad5f21b1875ab6126f35eaad27cc7d040</anchor>
      <arglist>(dimensions_num_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>a98c2a50baf7350a9a29b1915cbec8728</anchor>
      <arglist>(result_type *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>a47b03239fce44bcce26774828c679d61</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>a8578f77ecbb2d867b7b3fca2ff5bb720</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static constexpr hiprandRngType</type>
      <name>type</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>a1aac85cf0dd87f322c8055064ceb8bd9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static constexpr dimensions_num_type</type>
      <name>default_num_dimensions</name>
      <anchorfile>classhiprand__cpp_1_1scrambled__sobol64__engine.html</anchorfile>
      <anchor>a794753a2c51052c07c29a212054cf804</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::sobol32_engine</name>
    <filename>classhiprand__cpp_1_1sobol32__engine.html</filename>
    <templarg>DefaultNumDimensions</templarg>
    <member kind="typedef">
      <type>unsigned int</type>
      <name>result_type</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>a2c2f261cc250fb81051d6386ff9420e2</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long long</type>
      <name>offset_type</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>a297e9764b5cbc6b433fd15a23a0a812f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned int</type>
      <name>dimensions_num_type</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>a2b1a2f35d9546ca05c385faa30fca15f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>sobol32_engine</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>a079a8f76a2709aee22ad501267fda1cf</anchor>
      <arglist>(dimensions_num_type num_of_dimensions=DefaultNumDimensions, offset_type offset_value=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>sobol32_engine</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>acce03d5179dfdbc673de42eafa6ee1b3</anchor>
      <arglist>(hiprandGenerator_t &amp;generator)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~sobol32_engine</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>af945859de06bbd0edfe28942e622b42f</anchor>
      <arglist>() noexcept(false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stream</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>ac60775dc41446eb8c4f34db702bba16a</anchor>
      <arglist>(hipStream_t value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>offset</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>ae2dfa652f690f44f04c55737fdbe98de</anchor>
      <arglist>(offset_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dimensions</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>ab6c6c9d7effdf6d04a887fc9070505e7</anchor>
      <arglist>(dimensions_num_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>a1c45f2897920d608ca483528e6489e4d</anchor>
      <arglist>(result_type *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>a0f8d46a74bc648f1880c658239252f4f</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>a2c20d3c8815e1a1ca9b91de0d66b8d1f</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static constexpr hiprandRngType</type>
      <name>type</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>a0d08fccaacf4b813665dd695ad6141e5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static constexpr dimensions_num_type</type>
      <name>default_num_dimensions</name>
      <anchorfile>classhiprand__cpp_1_1sobol32__engine.html</anchorfile>
      <anchor>a500889811adaa79d1f71507ff30ad827</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::sobol64_engine</name>
    <filename>classhiprand__cpp_1_1sobol64__engine.html</filename>
    <templarg>DefaultNumDimensions</templarg>
    <member kind="typedef">
      <type>unsigned long long int</type>
      <name>result_type</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>a66cc012623b52d424375ce391b8a7884</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long long</type>
      <name>offset_type</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>a3a942d3733059b55b81445a2ec825bb0</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned int</type>
      <name>dimensions_num_type</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>ab7abee630c3b89ce28d6ce5efe2fa21d</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>sobol64_engine</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>a5509eecf0e969b236c650a7ed3a397b2</anchor>
      <arglist>(dimensions_num_type num_of_dimensions=DefaultNumDimensions, offset_type offset_value=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>sobol64_engine</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>aa7f12adb39213ec8afaeef3f067cf5c6</anchor>
      <arglist>(hiprandGenerator_t &amp;generator)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~sobol64_engine</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>a29e996cf79f6265fa3368bf3a8d4904a</anchor>
      <arglist>() noexcept(false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stream</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>abcf43582e309c6600c1073b0dd4ac964</anchor>
      <arglist>(hipStream_t value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>offset</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>a46c759ba5e222f259685e6c8cb2bcc70</anchor>
      <arglist>(offset_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dimensions</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>ada2af8685073616ae865224370aa7763</anchor>
      <arglist>(dimensions_num_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>a762be8143ffc56542dbc8b8cefb87841</anchor>
      <arglist>(result_type *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>abef7ae565286e51f32665b8b5a2920b6</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>a01a8723efdb844210fc49d7b312a86fc</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static constexpr hiprandRngType</type>
      <name>type</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>a071c4791e9f21ee6012e5b66151ea6b2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static constexpr dimensions_num_type</type>
      <name>default_num_dimensions</name>
      <anchorfile>classhiprand__cpp_1_1sobol64__engine.html</anchorfile>
      <anchor>a394c48e281315d532e2d80598d79cad1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::uniform_int_distribution</name>
    <filename>classhiprand__cpp_1_1uniform__int__distribution.html</filename>
    <templarg></templarg>
    <member kind="function">
      <type></type>
      <name>uniform_int_distribution</name>
      <anchorfile>classhiprand__cpp_1_1uniform__int__distribution.html</anchorfile>
      <anchor>a620e59a62c524d1a3fdd42f1a831dd54</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>classhiprand__cpp_1_1uniform__int__distribution.html</anchorfile>
      <anchor>af98b57a3946e0e35f989b6e1a43ce7aa</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>IntType</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1uniform__int__distribution.html</anchorfile>
      <anchor>af02b08645f937ab61aa6601e8ade8960</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>IntType</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1uniform__int__distribution.html</anchorfile>
      <anchor>a2a8c47e7f19c2e3262fc9317a6d9bafe</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1uniform__int__distribution.html</anchorfile>
      <anchor>a664eda5c7defefa9b62b70d861be8f21</anchor>
      <arglist>(Generator &amp;g, IntType *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classhiprand__cpp_1_1uniform__int__distribution.html</anchorfile>
      <anchor>a4d993004596354c8afa2751e7451389d</anchor>
      <arglist>(const uniform_int_distribution&lt; IntType &gt; &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classhiprand__cpp_1_1uniform__int__distribution.html</anchorfile>
      <anchor>a62d4f09565741530ba482f6098b27119</anchor>
      <arglist>(const uniform_int_distribution&lt; IntType &gt; &amp;other)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::uniform_real_distribution</name>
    <filename>classhiprand__cpp_1_1uniform__real__distribution.html</filename>
    <templarg></templarg>
    <member kind="function">
      <type></type>
      <name>uniform_real_distribution</name>
      <anchorfile>classhiprand__cpp_1_1uniform__real__distribution.html</anchorfile>
      <anchor>ad30803a2e6a0665da523fe49bc64572b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>classhiprand__cpp_1_1uniform__real__distribution.html</anchorfile>
      <anchor>af1de49e7196f896fec151b544aa914f2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>RealType</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1uniform__real__distribution.html</anchorfile>
      <anchor>a5352a2a25557e10bb9398b2b67e4ce34</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>RealType</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1uniform__real__distribution.html</anchorfile>
      <anchor>a52edf9227a8a1f8c9095e90d7f806f31</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1uniform__real__distribution.html</anchorfile>
      <anchor>ace8c9a712ef4f94387d75e5e0cb506f4</anchor>
      <arglist>(Generator &amp;g, RealType *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classhiprand__cpp_1_1uniform__real__distribution.html</anchorfile>
      <anchor>a09ef4de2915a2698b0a6897d4cdff029</anchor>
      <arglist>(const uniform_real_distribution&lt; RealType &gt; &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classhiprand__cpp_1_1uniform__real__distribution.html</anchorfile>
      <anchor>aaaca0bf36fa4d36bc3d42599037707ad</anchor>
      <arglist>(const uniform_real_distribution&lt; RealType &gt; &amp;other)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>hiprand_cpp::xorwow_engine</name>
    <filename>classhiprand__cpp_1_1xorwow__engine.html</filename>
    <templarg>DefaultSeed</templarg>
    <member kind="typedef">
      <type>unsigned int</type>
      <name>result_type</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>a9adbe787fb5216b993d0bac002668c3b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long long</type>
      <name>offset_type</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>ad668835c52354dc88ee341ef0e5eeaaa</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long long</type>
      <name>seed_type</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>a8d314d434ec780836b110cccc77c8df0</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>xorwow_engine</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>a08c4cf4679ad06202599052722d2cf51</anchor>
      <arglist>(seed_type seed_value=DefaultSeed, offset_type offset_value=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>xorwow_engine</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>ab20dcdf9a7fd9a06d3b978961d307c0a</anchor>
      <arglist>(hiprandGenerator_t &amp;generator)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~xorwow_engine</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>ab7a17d0d556ac620610848a0a4e2f738</anchor>
      <arglist>() noexcept(false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stream</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>a5a7e86e9df9fc63c908aaae05bd3bb02</anchor>
      <arglist>(hipStream_t value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>offset</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>a5b88ffa6a7f4a7de9f1a175edd3c619e</anchor>
      <arglist>(offset_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>seed</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>aa9206e290cda8336daf1b5ac51cfec06</anchor>
      <arglist>(seed_type value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>a8407b0efdeaf54208d5a1346f4c150c2</anchor>
      <arglist>(result_type *output, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>min</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>afc401167a73dfb67d5695a2069a5cc50</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>result_type</type>
      <name>max</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>a88918db4a03b93e6800b940b7c8a4be3</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static constexpr hiprandRngType</type>
      <name>type</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>ab4e5143c2bf41a3090db53974c4ac3f4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static constexpr seed_type</type>
      <name>default_seed</name>
      <anchorfile>classhiprand__cpp_1_1xorwow__engine.html</anchorfile>
      <anchor>a3281272c0ce52ca900d3e6d2d370d1bc</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>hipranddevice</name>
    <title>hipRAND device functions</title>
    <filename>group__hipranddevice.html</filename>
    <member kind="define">
      <type>#define</type>
      <name>HIPRAND_PHILOX4x32_DEFAULT_SEED</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gaffe282ce91ff23e56e033fe1014bde39</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>HIPRAND_XORWOW_DEFAULT_SEED</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga77b588f7a94fc7f1d7822b81ac945acb</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>HIPRAND_MRG32K3A_DEFAULT_SEED</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gafeb5d0737ded8005bf8a1f93782ca754</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>HIPRAND_MTGP32_DEFAULT_SEED</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gaca104632d34f05d6a7243a98d4036462</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>HIPRAND_MT19937_DEFAULT_SEED</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gaaafd87b238238db36b195e6464ccb9fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hiprand_mtgp32_block_copy</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga2fd32ae6797d103b8e290311f92a20f3</anchor>
      <arglist>(hiprandStateMtgp32_t *src, hiprandStateMtgp32_t *dest)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hiprand_mtgp32_set_params</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gab01bdceb166ce4dabbc0c248823ba731</anchor>
      <arglist>(hiprandStateMtgp32_t *state, mtgp32_kernel_params_t *params)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hiprand_init</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga2beb732aa9682c07c5efc87e168d79e9</anchor>
      <arglist>(const unsigned long long seed, const unsigned long long subsequence, const unsigned long long offset, StateType *state)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hiprand_init</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gaeb5fbba1ce31a9ebae8e9f914e52c0f1</anchor>
      <arglist>(hiprandDirectionVectors32_t direction_vectors, unsigned int offset, hiprandStateSobol32_t *state)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hiprand_init</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gaab7d8146f9d0c1eea6ff7654cec83890</anchor>
      <arglist>(hiprandDirectionVectors32_t direction_vectors, unsigned int scramble_constant, unsigned int offset, hiprandStateScrambledSobol32_t *state)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hiprand_init</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga949873de07110166462b6a4125e22e2c</anchor>
      <arglist>(hiprandDirectionVectors64_t direction_vectors, unsigned int offset, hiprandStateSobol64_t *state)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hiprand_init</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga07ff4249e5fdaa82b7e889c4c5fe8c95</anchor>
      <arglist>(hiprandDirectionVectors64_t direction_vectors, unsigned long long int scramble_constant, unsigned int offset, hiprandStateScrambledSobol64_t *state)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>skipahead</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga4b8779d43aabf9d33bb4090216245f6f</anchor>
      <arglist>(unsigned long long n, StateType *state)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>skipahead_sequence</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gad60655ca3f29a353d650548276a993ca</anchor>
      <arglist>(unsigned long long n, StateType *state)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>skipahead_subsequence</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gad6f56f4f79e2d83806bcf3ab68b6eaa4</anchor>
      <arglist>(unsigned long long n, StateType *state)</arglist>
    </member>
    <member kind="function">
      <type>unsigned int</type>
      <name>hiprand</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga6aee8e610cf18aabb5636a09980ccb0f</anchor>
      <arglist>(StateType *state)</arglist>
    </member>
    <member kind="function">
      <type>uint4</type>
      <name>hiprand4</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gab6c51e77b33f283dd329067836337783</anchor>
      <arglist>(hiprandStatePhilox4_32_10_t *state)</arglist>
    </member>
    <member kind="function">
      <type>unsigned long long int</type>
      <name>hiprand_long_long</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga197d5951d508bac508bf1c6a233324fe</anchor>
      <arglist>(StateType *state)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>hiprand_uniform</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga0a826214ec4cb5dabb27c249ac085230</anchor>
      <arglist>(StateType *state)</arglist>
    </member>
    <member kind="function">
      <type>float4</type>
      <name>hiprand_uniform4</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga1ed0643ecbd42a8413b95247362d669d</anchor>
      <arglist>(hiprandStatePhilox4_32_10_t *state)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>hiprand_uniform_double</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gad928a692969f8ce15850c788764898ea</anchor>
      <arglist>(StateType *state)</arglist>
    </member>
    <member kind="function">
      <type>double2</type>
      <name>hiprand_uniform2_double</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga54334c8e7521ee4155f31297614f81d9</anchor>
      <arglist>(hiprandStatePhilox4_32_10_t *state)</arglist>
    </member>
    <member kind="function">
      <type>double4</type>
      <name>hiprand_uniform4_double</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gad4154b3fc912a875f91350e514b22365</anchor>
      <arglist>(hiprandStatePhilox4_32_10_t *state)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>hiprand_normal</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga88fab4b79b3bfbb3b419035f6f1d0de8</anchor>
      <arglist>(StateType *state)</arglist>
    </member>
    <member kind="function">
      <type>float2</type>
      <name>hiprand_normal2</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga6c3e1a4e6c058bb91592be40a409bd99</anchor>
      <arglist>(StateType *state)</arglist>
    </member>
    <member kind="function">
      <type>float4</type>
      <name>hiprand_normal4</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gaaf9a333f9d06157274caafaaab5302f6</anchor>
      <arglist>(hiprandStatePhilox4_32_10_t *state)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>hiprand_normal_double</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gafc7503de812a40f5ec2bbb8ac4353267</anchor>
      <arglist>(StateType *state)</arglist>
    </member>
    <member kind="function">
      <type>double2</type>
      <name>hiprand_normal2_double</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga730d07d06e667c726359d1fdf649f233</anchor>
      <arglist>(StateType *state)</arglist>
    </member>
    <member kind="function">
      <type>double4</type>
      <name>hiprand_normal4_double</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gac3479fffe607dc6a3195667a6ef38097</anchor>
      <arglist>(hiprandStatePhilox4_32_10_t *state)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>hiprand_log_normal</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga94c1029d0bea2416ac358122dedb7a99</anchor>
      <arglist>(StateType *state, float mean, float stddev)</arglist>
    </member>
    <member kind="function">
      <type>float2</type>
      <name>hiprand_log_normal2</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga1ce229467434cfe0e6d8226489e0aa5e</anchor>
      <arglist>(StateType *state, float mean, float stddev)</arglist>
    </member>
    <member kind="function">
      <type>float4</type>
      <name>hiprand_log_normal4</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gad3e94709d2623e2870347688cba9dc98</anchor>
      <arglist>(hiprandStatePhilox4_32_10_t *state, float mean, float stddev)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>hiprand_log_normal_double</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga026f067ded4e3b926a6de60bb168fe68</anchor>
      <arglist>(StateType *state, double mean, double stddev)</arglist>
    </member>
    <member kind="function">
      <type>double2</type>
      <name>hiprand_log_normal2_double</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga8b45d997fd3190f5b2dd78e6b719928b</anchor>
      <arglist>(StateType *state, double mean, double stddev)</arglist>
    </member>
    <member kind="function">
      <type>double4</type>
      <name>hiprand_log_normal4_double</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>gaf2aa989965aee17d973ed7fd6135f24a</anchor>
      <arglist>(hiprandStatePhilox4_32_10_t *state, double mean, double stddev)</arglist>
    </member>
    <member kind="function">
      <type>uint</type>
      <name>hiprand_poisson</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga508b7fd6158e69475e014f34c6415521</anchor>
      <arglist>(StateType *state, double lambda)</arglist>
    </member>
    <member kind="function">
      <type>uint4</type>
      <name>hiprand_poisson4</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga2b7052a5ca8a6bdf4125093b65bd14cf</anchor>
      <arglist>(hiprandStatePhilox4_32_10_t *state, double lambda)</arglist>
    </member>
    <member kind="function">
      <type>uint</type>
      <name>hiprand_discrete</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga101cecb2204367ade983ced0f636bf86</anchor>
      <arglist>(StateType *state, hiprandDiscreteDistribution_t discrete_distribution)</arglist>
    </member>
    <member kind="function">
      <type>uint4</type>
      <name>hiprand_discrete4</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga08d20d196ec10e98ba4a6cc68a70ca93</anchor>
      <arglist>(hiprandStatePhilox4_32_10_t *state, hiprandDiscreteDistribution_t discrete_distribution)</arglist>
    </member>
    <member kind="function">
      <type>__host__ hiprandStatus_t</type>
      <name>hiprandMakeMTGP32Constants</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga4628946b99acbf5a2b6967b6c58159b6</anchor>
      <arglist>(const mtgp32_params_fast_t params[], mtgp32_kernel_params_t *p)</arglist>
    </member>
    <member kind="function">
      <type>__host__ hiprandStatus_t</type>
      <name>hiprandMakeMTGP32KernelState</name>
      <anchorfile>group__hipranddevice.html</anchorfile>
      <anchor>ga7874b6a24bc4eff42f8da5cc6f8140eb</anchor>
      <arglist>(hiprandStateMtgp32_t *s, mtgp32_params_fast_t params[], mtgp32_kernel_params_t *k, int n, unsigned long long seed)</arglist>
    </member>
    <page>group__hipranddevice</page>
  </compound>
  <compound kind="group">
    <name>hiprandhost</name>
    <title>hipRAND host API</title>
    <filename>group__hiprandhost.html</filename>
    <member kind="define">
      <type>#define</type>
      <name>HIPRAND_VERSION</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga1d0abfd2dbbd54b9279b26ef97383a2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>enum hiprandStatus</type>
      <name>hiprandStatus_t</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga846bcefb54f62c83e7570ae6a3663944</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>enum hiprandRngType</type>
      <name>hiprandRngType_t</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga8342497b4c9ca750f3d8ed91c5d48c57</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>hiprandStatus</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga61cb3bf3103290101a9f2c1c97f9b579</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_SUCCESS</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579abf4561e319daed4f7a7b3c42c4a3ce5b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_VERSION_MISMATCH</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579a91628761bad75b75eb3abe53c67b3ddd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_NOT_INITIALIZED</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579aee4d12abd7528c0e4583d4c857911e40</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_ALLOCATION_FAILED</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579a24284cf88f8c4020bc33243d67c6bf3b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_TYPE_ERROR</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579a08a0a01e01e82936a12b6f891a582474</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_OUT_OF_RANGE</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579a31207039e0c0b32e04cd26b91a034bc1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_LENGTH_NOT_MULTIPLE</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579aeca10dae2a2112293aaee39d683e4165</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_DOUBLE_PRECISION_REQUIRED</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579a918a5c6b4dd5320423bb0da1b4d9265f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_LAUNCH_FAILURE</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579aa1f78162079dcffa517b6df5ddb0bbae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_PREEXISTING_FAILURE</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579ab8a39966ea75a823b0066b1a7fc1a002</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_INITIALIZATION_FAILED</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579a5c046b7747894c066acd5df87348262a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_ARCH_MISMATCH</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579a6f9632af1740aae8757b66ccd1c59466</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_INTERNAL_ERROR</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579ae4322a6a1e34d8a36938dc61d4be0c55</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_STATUS_NOT_IMPLEMENTED</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga61cb3bf3103290101a9f2c1c97f9b579a874bb78273920a8376dd4a486f356039</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>hiprandRngType</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga2750c0de9515724e40b7b380add7ae68</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_RNG_PSEUDO_DEFAULT</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga2750c0de9515724e40b7b380add7ae68ae14f22f659162b01357217dd83aff1c0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_RNG_PSEUDO_XORWOW</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga2750c0de9515724e40b7b380add7ae68a2385524478ddb510a5997b30108036fe</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_RNG_PSEUDO_MRG32K3A</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga2750c0de9515724e40b7b380add7ae68a542b09880d4407c358427b6da988674e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_RNG_PSEUDO_MTGP32</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga2750c0de9515724e40b7b380add7ae68ad5d146483c333e60c3a997ce326cf5dc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_RNG_PSEUDO_MT19937</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga2750c0de9515724e40b7b380add7ae68a63ea2953462abd7d0831e8ef69d024dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_RNG_PSEUDO_PHILOX4_32_10</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga2750c0de9515724e40b7b380add7ae68afceab81967c5ba6e5eab79f001bc91f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_RNG_QUASI_DEFAULT</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga2750c0de9515724e40b7b380add7ae68a83ddb03104836744e522659492aaa993</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_RNG_QUASI_SOBOL32</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga2750c0de9515724e40b7b380add7ae68afc33e3afca3aa2320b8a396ad99c0289</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_RNG_QUASI_SCRAMBLED_SOBOL32</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga2750c0de9515724e40b7b380add7ae68a5408918003e0fa2658f092982b2be59d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_RNG_QUASI_SOBOL64</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga2750c0de9515724e40b7b380add7ae68aa77f8e8c563e93b9d68c26fae613a01e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HIPRAND_RNG_QUASI_SCRAMBLED_SOBOL64</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gga2750c0de9515724e40b7b380add7ae68a1cbc0eb504419b16117ec5840d89783e</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandCreateGenerator</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gac4998bac5c8e6010dbcfa45cd8eeb5c3</anchor>
      <arglist>(hiprandGenerator_t *generator, hiprandRngType_t rng_type)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandCreateGeneratorHost</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga2f3d14f9487e71b39b7832dd41f28195</anchor>
      <arglist>(hiprandGenerator_t *generator, hiprandRngType_t rng_type)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandDestroyGenerator</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gaecaddc15f03817bee58474daf908df01</anchor>
      <arglist>(hiprandGenerator_t generator)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerate</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga9ed176ab4295d6d2c19b0b976941b124</anchor>
      <arglist>(hiprandGenerator_t generator, unsigned int *output_data, size_t n)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerateChar</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga3334da63dbe616444c0eb7930dcc7bd2</anchor>
      <arglist>(hiprandGenerator_t generator, unsigned char *output_data, size_t n)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerateShort</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gaa16379981d37fe7102ea5c67a3dc0142</anchor>
      <arglist>(hiprandGenerator_t generator, unsigned short *output_data, size_t n)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerateLongLong</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gada4396bc602a5d80b342afcbfe487b67</anchor>
      <arglist>(hiprandGenerator_t generator, unsigned long long *output_data, size_t n)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerateUniform</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga041797e2c1b813ab558015f07647534a</anchor>
      <arglist>(hiprandGenerator_t generator, float *output_data, size_t n)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerateUniformDouble</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gae4b3280676d0416c58327b80481e18dd</anchor>
      <arglist>(hiprandGenerator_t generator, double *output_data, size_t n)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerateUniformHalf</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gaa2b95a7ca86bfa9ae9738a4d5d682cb2</anchor>
      <arglist>(hiprandGenerator_t generator, half *output_data, size_t n)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerateNormal</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gac2560fd9f148ecc860cb4b81a52362e0</anchor>
      <arglist>(hiprandGenerator_t generator, float *output_data, size_t n, float mean, float stddev)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerateNormalDouble</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga5a11d273428bb1990664faf646188f51</anchor>
      <arglist>(hiprandGenerator_t generator, double *output_data, size_t n, double mean, double stddev)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerateNormalHalf</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga08ced984fedd38d224b74867eb7b9680</anchor>
      <arglist>(hiprandGenerator_t generator, half *output_data, size_t n, half mean, half stddev)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerateLogNormal</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gab229d82fc3b4d68408517cbf8de0c39b</anchor>
      <arglist>(hiprandGenerator_t generator, float *output_data, size_t n, float mean, float stddev)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerateLogNormalDouble</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga8e707854c2a0f799a97958e755b7c1a8</anchor>
      <arglist>(hiprandGenerator_t generator, double *output_data, size_t n, double mean, double stddev)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerateLogNormalHalf</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gaaea6d227d9f97e7d5b6f154fe4eb41e7</anchor>
      <arglist>(hiprandGenerator_t generator, half *output_data, size_t n, half mean, half stddev)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGeneratePoisson</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga61fea1c8936ce067fa5ae0457930fbf8</anchor>
      <arglist>(hiprandGenerator_t generator, unsigned int *output_data, size_t n, double lambda)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGenerateSeeds</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga0fa18f793ad80b753be53f4a95a94f2b</anchor>
      <arglist>(hiprandGenerator_t generator)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandSetStream</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga8e6f855ff18e82794bef9479d2e8888c</anchor>
      <arglist>(hiprandGenerator_t generator, hipStream_t stream)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandSetPseudoRandomGeneratorSeed</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gaa83b6ce4960273d6c3dd7e02e3fdd6b5</anchor>
      <arglist>(hiprandGenerator_t generator, unsigned long long seed)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandSetGeneratorOffset</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga12c6f6267b9fed7feba0459597016837</anchor>
      <arglist>(hiprandGenerator_t generator, unsigned long long offset)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandSetQuasiRandomGeneratorDimensions</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga13468b9d1b5d4dcbc020ef18585bc722</anchor>
      <arglist>(hiprandGenerator_t generator, unsigned int dimensions)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandGetVersion</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga17a7c61ea80b98354591cc08433eb09b</anchor>
      <arglist>(int *version)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandCreatePoissonDistribution</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>ga82c3a994afd78ba0631cfd8c1b9a5a6a</anchor>
      <arglist>(double lambda, hiprandDiscreteDistribution_t *discrete_distribution)</arglist>
    </member>
    <member kind="function">
      <type>hiprandStatus_t</type>
      <name>hiprandDestroyDistribution</name>
      <anchorfile>group__hiprandhost.html</anchorfile>
      <anchor>gafa1fa3f4b8cd51b8e69ac8a4c9ca4664</anchor>
      <arglist>(hiprandDiscreteDistribution_t discrete_distribution)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>hiprandhostcpp</name>
    <title>hipRAND host API C++ Wrapper</title>
    <filename>group__hiprandhostcpp.html</filename>
    <class kind="class">hiprand_cpp::error</class>
    <class kind="class">hiprand_cpp::uniform_int_distribution</class>
    <class kind="class">hiprand_cpp::uniform_real_distribution</class>
    <class kind="class">hiprand_cpp::normal_distribution</class>
    <class kind="class">hiprand_cpp::lognormal_distribution</class>
    <class kind="class">hiprand_cpp::poisson_distribution</class>
    <class kind="class">hiprand_cpp::philox4x32_10_engine</class>
    <class kind="class">hiprand_cpp::xorwow_engine</class>
    <class kind="class">hiprand_cpp::mrg32k3a_engine</class>
    <class kind="class">hiprand_cpp::mtgp32_engine</class>
    <class kind="class">hiprand_cpp::mt19937_engine</class>
    <class kind="class">hiprand_cpp::sobol32_engine</class>
    <class kind="class">hiprand_cpp::scrambled_sobol32_engine</class>
    <class kind="class">hiprand_cpp::sobol64_engine</class>
    <class kind="class">hiprand_cpp::scrambled_sobol64_engine</class>
    <member kind="typedef">
      <type>philox4x32_10_engine</type>
      <name>philox4x32_10</name>
      <anchorfile>group__hiprandhostcpp.html</anchorfile>
      <anchor>ga95449a12c0aca4262893e484284aff61</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>xorwow_engine</type>
      <name>xorwow</name>
      <anchorfile>group__hiprandhostcpp.html</anchorfile>
      <anchor>gac637a5c9edb4acca143e333e10a60310</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>mrg32k3a_engine</type>
      <name>mrg32k3a</name>
      <anchorfile>group__hiprandhostcpp.html</anchorfile>
      <anchor>ga9a17628059a39139d272a78ddb8e677f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>mtgp32_engine</type>
      <name>mtgp32</name>
      <anchorfile>group__hiprandhostcpp.html</anchorfile>
      <anchor>ga6fb4c2257b85a8bf5288596585e77a3c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>mt19937_engine</type>
      <name>mt19937</name>
      <anchorfile>group__hiprandhostcpp.html</anchorfile>
      <anchor>gafabd9844a5825c95c1a7bc262eb5eafd</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>sobol32_engine</type>
      <name>sobol32</name>
      <anchorfile>group__hiprandhostcpp.html</anchorfile>
      <anchor>gac5e2977cc045f960f8328fae9b752dea</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>scrambled_sobol32_engine</type>
      <name>scrambled_sobol32</name>
      <anchorfile>group__hiprandhostcpp.html</anchorfile>
      <anchor>gaecada5c34e1ade6cb5754eca9c7fa970</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>sobol64_engine</type>
      <name>sobol64</name>
      <anchorfile>group__hiprandhostcpp.html</anchorfile>
      <anchor>ga33230c32f0f2bd3e7262030a46b05949</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>scrambled_sobol64_engine</type>
      <name>scrambled_sobol64</name>
      <anchorfile>group__hiprandhostcpp.html</anchorfile>
      <anchor>ga37423a9b721f6ce1a0f49a0e9c4ffa0b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>xorwow</type>
      <name>default_random_engine</name>
      <anchorfile>group__hiprandhostcpp.html</anchorfile>
      <anchor>ga50cfb76aa68850cf46d05d0eaf5a2710</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::random_device</type>
      <name>random_device</name>
      <anchorfile>group__hiprandhostcpp.html</anchorfile>
      <anchor>gaa31659e36f7f5b6f9c6faa96818d1580</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>version</name>
      <anchorfile>group__hiprandhostcpp.html</anchorfile>
      <anchor>ga3f15379baa930c8f444780d1bc43b45d</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>hipranddevice_page</name>
    <title>hipRAND RNG&apos;s state types</title>
    <filename>group__hipranddevice</filename>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>hipRAND Documentation</title>
    <filename>index</filename>
    <docanchor file="index.html" title="Overview">overview</docanchor>
  </compound>
</tagfile>
