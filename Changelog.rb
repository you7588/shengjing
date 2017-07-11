Sun Feb 24 15:16:00 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http.rb:  Removed duplicate Accept-Encoding in Net::HTTP#get.
	  [ruby-trunk - Bug #7924]
	* test/net/http/test_http.rb:  Test for the above.

Wed Feb 20 14:23:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* thread.c: Grammar for #backtrace_locations and ::handle_interrupt

Fri Feb 22 11:10:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* enum.c (Enumerable#chunk: Improved examples, grammar, and formatting
	  Patch by Dan Bernier and Rich Bruchal of newhaven.rb
	  [Backport #7926]

Fri Feb 22 02:33:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/abbrev.rb: Add words parameter to Abbrev::abbrev
	  Patch by Devin Weaver [Backport #7927]

Wed Feb 20 13:37:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* ext/pty/pty.c: Documentation for the PTY module [Backport #7928]

Wed Feb 20 12:18:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* object.c: Document Data class by Matthew Mongeau [Backport #7929]

Wed Feb 20 11:50:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/mutex_m.rb: Add rdoc for Mutex_m module [Backport #7930]

Tue Feb 19 12:30:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* object.c: rdoc formatting for Kernel#Array() [Backport #7931]
	* array.c: Add rdoc for Array() method to Creating Arrays section

Sat Feb 23 16:51:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* thread.c: Documentation for Thread#backtrace_locations
	  [Backport #7932]

Sat Feb 23 16:05:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* vm.c: Typo in ObjectSpace::WeakMap overview [Backport #7933]

Sat Feb 23 16:00:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* thread.c: Improved rdoc for ::handle_interrupt, ::pending_interrupt?
	  and #pending_interrupt? [Backport #7934]

Sat Feb 23 14:19:51 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/ruby.h (HAVE_RB_SCAN_ARGS_OPTIONAL_HASH): for
	  rb_scan_args() optional hash feature.  [Bug #7861]

Sat Feb 23 13:03:22 2013  Akinori MUSHA  <knu@iDaemons.org>

	* lib/ipaddr.rb (IPAddr#in6_addr): Fix a typo with the closing
	  parenthesis.

Sat Feb 23 13:03:22 2013  Akinori MUSHA  <knu@iDaemons.org>

	* lib/ipaddr.rb (IPAddr#in6_addr): Fix the parser so that it can
	  recognize IPv6 addresses with only one edge 16-bit piece
	  compressed, like [::2:3:4:5:6:7:8] or [1:2:3:4:5:6:7::].
	  [Bug #7477]

Sat Feb 23 13:00:49 2013  Akinori MUSHA  <knu@iDaemons.org>

	* configure.in (LIBRUBY_DLDFLAGS): Fix a bug where --with-opt-dir
	  options given were not reflected to LIBRUBY_DLDFLAGS on many
	  platforms including Linux and other GNU-based systems, NetBSD,
	  AIX and BeOS.

Sat Feb 23 13:00:07 2013  Akinori MUSHA  <knu@iDaemons.org>

	* configure.in: Fix a bug introduced in r38342 that the cflagspat
	  substitution is messed up by the way CFLAGS and optflags are
	  modified, which affected FreeBSD and NetBSD/amd64 when
	  configured to use libexecinfo.  This bug resulted in CFLAGS and
	  CXXFLAGS in RbConfig::CONFIG having warnflags expanded in them,
	  forcing third-party C/C++ extensions to follow what warnflags
	  demands, like ANSI/ISO-C90 conformance.  ref [Bug #7101]

Sat Feb 23 12:58:32 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb: remove extra topdir in VPATH, which was in
	  win32/Makefile.sub for some reason and moved from there.
	  [ruby-dev:46998] [Bug #7864]

Tue Feb 23 12:07:00 2013  Kenta MURATA  <mrkn@mrkn.jp>

	* backport r39321 from trunk. [ruby-core:51777] [Bug #7761]

	* ext/bigdecimal/bigdecimal.gemspec: bump to 1.2.0.
	  [ruby-core:51777] [Bug #7761]

Sat Feb 23 08:57:46 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* backport r39410 from trunk

	* doc/NEWS-*: Update NEWS from their respective branches

Sat Feb 23 08:14:43 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* backport r39400-r39407 from trunk.

	* NEWS: many additions

	* object.c: Add doc for Module.prepended

Sat Feb 23 06:07:04 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/installer.rb (build_extensions):  Create extension
	  install destination before building extension.  Patch by Kenta Murata.
	  [ruby-trunk - Bug #7897]
	* test/rubygems/test_gem_installer.rb:  Test for the above.

Sat Feb 23 04:34:44 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* NEWS: pending_interrupt? is both instance and singleton method

Sat Feb 23 02:49:10 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* NEWS: Add Thread#pending_interrupt? and Thread.handle_interrupt

Fri Feb 22 19:22:05 2013  Aaron Patterson <aaron@tenderlovemaking.com>

	* lib/rexml/document.rb (REXML::Document.entity_expansion_text_limit):
	  new attribute to read/write entity expansion text limit.  the default
	  limit is 10Kb.

	* lib/rexml/text.rb (REXML::Text.unnormalize): check above attribute.

Thu Feb 21 05:03:38 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/commands/update_command.rb:  Create the installer after
	  options are processed.  [ruby-trunk - Bug #7779]
	* test/rubygems/test_gem_commands_update_command.rb:  Test for the
	  above.

Thu Feb 21 04:54:14 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/installer.rb:  Use gsub instead of gsub! to avoid
	  altering @bin_dir.  Fixes tests on windows.  [ruby-trunk - Bug #7885]

Thu Feb 21 03:16:37 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* NEWS: Floats are frozen too

Thu Feb 21 03:10:53 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* NEWS: Add that Fixnums and Bignums are frozen

Wed Feb 20 17:02:12 2013  Koichi Sasada  <ko1@atdot.net>

	* vm_eval.c (vm_call0_body): check interrupts after method dispatch
	  from C methods. [Bug #7878]

Wed Feb 20 08:05:25 2013 Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* compar.c (rb_invcmp): compare by inversed comarison, with preventing
	  from infinite recursion.  [ruby-core:52305] [Bug #7870]

	* string.c (rb_str_cmp_m), time.c (time_cmp): get rid of infinite
	  recursion.

Tue Feb 19 15:49:58 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (unexpand_shvar): regularize a shell variable by
	  unexpanding shell variables in it.

	* configure.in (shvar_to_cpp): do not substitute exec_prefix itself
	  with RUBY_EXEC_PREFIX, which cause recursive definition.
	  [ruby-core:52296] [Bug #7860]

	* configure.in: unexpand arch sitearch and exec_prefix values, so
	  directly specified bindir, libdir, rubyprefix, etc can be properly
	  substituted.  [ruby-core:52296] [Bug #7860]

Tue Feb 19 14:08:46 2013  Eric Hodel  <drbrain@segment7.net>

	* backport r39307 from trunk.  [Bug #7880]

	* lib/rubygems/installer.rb:  Fixed placement of executables with
	  --user-install.  [ruby-trunk - Bug #7779]

	* test/rubygems/test_gem_installer.rb:  Test for above.

Tue Feb 19 13:57:26 2013  Eric Hodel  <drbrain@segment7.net>

	* backport r39247 from trunk. [Bug #7853]

	* lib/rdoc.rb:  Update to release version of 4.0.0

	* lib/rubygems.rb:  Update to release version of 2.0.0

Tue Feb 19 12:25:27 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/Makefile.sub (config.status): site and vendor directories
	  should use sitearch, not arch.  [ruby-dev:46964] [Bug #7823]

Tue Feb 19 07:51:01 2013  Koichi Sasada  <ko1@atdot.net>

	* backport r39275 from trunk. [ruby-dev:46994] [Bug #7774]

	* proc.c (rb_binding_new_with_cfp): create binding object even if
	  the frame is IFUNC. But return a ruby-level binding to keep
	  compatibility.
	  This patch fix degradation introduced from r39067.
	  [Bug #7774] [ruby-dev:46960]

	* test/ruby/test_settracefunc.rb: add a test.

Sat Feb 16 20:43:43 2013  Koichi Sasada  <ko1@atdot.net>

	* backport r39276 from trunk. [ruby-dev:46997] [Bug #7825]

	* vm.c (rb_thread_mark): mark a working Proc of bmethod
	  (a method defined by define_method) even if the method was removed.
	  We could not trace working Proc object which represents the body
	  of bmethod if the method was removed (alias/undef/overridden).
	  Simply, it was mark miss.
	  This patch by Kazuki Tsujimoto. [Bug #7825]

	  NOTE: We can brush up this marking because we do not need to mark
	  `me' on each living control frame. We need to mark `me's
	  only if `me' was free'ed. This is future work after Ruby 2.0.0.

	* test/ruby/test_method.rb: add a test.

Fri Feb 15 00:49:32 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http.rb:  Removed OpenSSL dependency from Net::HTTP.

	* test/net/http/test_http.rb:  Remove Zlib dependency from tests.
	* test/net/http/test_http_request.rb:  ditto.

Fri Feb 15 00:49:32 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http:  Do not handle Content-Encoding when the user sets
	  Accept-Encoding.  This allows users to handle Content-Encoding for
	  themselves.  This restores backwards-compatibility with Ruby 1.x.
	  [ruby-trunk - Bug #7831]
	* lib/net/http/generic_request.rb:  ditto.
	* lib/net/http/response.rb:  ditto
	* test/net/http/test_http.rb:  Test for the above.
	* test/net/http/test_http_request.rb:  ditto.
	* test/net/http/test_httpresponse.rb:  ditto.

Thu Feb 14 13:17:10 2013  Zachary Scott  <zachary@zacharyscott.net>

	* Backport r39168 Warning about TracePoint events to 2.0.0
	  [ruby-core:52073] [Bug #7815]

	* vm_trace.c: note about TracePoint events set

Thu Feb 14 07:04:13 2013  Eric Hodel  <drbrain@segment7.net>

	* Backport r39213 from trunk [ruby-trunk - Bug #7383]

	* lib/rubygems.rb:  Return BINARY strings from Gem.gzip and Gem.gunzip.
	  Fixes intermittent test failures.  RubyGems issue #450 by Jeremey
	  Kemper.
	* test/rubygems/test_gem.rb:  Test for the above.

Thu Feb 14 07:01:12 2013  Eric Hodel  <drbrain@segment7.net>

	* Backport part of r39166 from trunk [ruby-trunk - Bug #7809]

	* lib/rubygems/package.rb:  Include checksums.yaml.gz signatures for
	  verification.
	* test/rubygems/test_gem_package.rb:  Test for the above.

Wed Feb 13 15:34:21 2013  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/json: merge JSON 1.7.7.
	  This includes security fix. [CVE-2013-0269]
	  https://github.com/flori/json/commit/d0a62f3ced7560daba2ad546d83f0479a5ae2cf2
	  https://groups.google.com/d/topic/rubyonrails-security/4_YvCpLzL58/discussion

Sat Feb  9 21:13:35 2013  Kazuki Tsujimoto  <kazuki@callcc.net>

	* backport r39167 from trunk. [ruby-core:52059] [Bug #7812]

	* BSDL: update copyright notice for 2013.

Fri Feb  8 19:56:54 2013  NAKAMURA Usaku  <usa@ruby-lang.org>

	* array.c (rb_ary_dup): reverted r39004.  see [Bug #7768], and
	  release manager finailly decided to revert it.

Fri Feb  8 16:09:45 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* eval.c (rb_ensure): preserve errinfo accross ensure proc before
	  JUMP_TAG().  [ruby-core:52022] [Bug #7802]

Fri Feb  8 16:08:28 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/envutil.rb (assert_separately): check also terminating
	  signal not only if core dumped.

Fri Feb  8 13:12:04 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/generator/darkfish.rb:  Set encoding on output template to
	  user-specified encoding.
	* test/rdoc/test_rdoc_generator_darkfish.rb:  Test for above.

	* lib/rdoc.rb:  Bump version

Fri Feb  8 11:53:33 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/security/policy.rb:  Raise proper exceptions when
	  verifying unsigned gems (instead of crashing).
	* test/rubygems/test_gem_security_policy.rb:  Tests for the above.

Fri Feb  8 10:44:44 2013  Eric Hodel  <drbrain@segment7.net>

	* test/rubygems/test_gem_dependency_installer.rb:  Improve coverage of
	  --install-dir feature of gem install.

Fri Feb  8 10:11:09 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/config_file.rb:  Add missing require for
	  user_interaction.rb

	* lib/rubygems/dependency_installer.rb:  Minor refactor for clarity.

Fri Feb  8 09:35:17 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (MakeMakefile#configuration): set all ruby names.
	  hdrdir now needs RUBY_VERSION_NAME.

Fri Feb  8 08:58:26 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/package/old.rb:  Fix loading old format gems on ruby
	  1.8.  This commit is only so trunk and rubygems master have the same
	  code.

Fri Feb  8 08:53:27 2013  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/yaml_tree.rb: fixing string quotation
	  when dumping Ruby strings. Thanks Ingy

	* test/psych/test_psych.rb: appropriate tests.

	* test/psych/test_yaml.rb: ditto

Fri Feb  8 08:50:42 2013  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/yaml_tree.rb: change output reference
	  ids to be sequential numbers.

Fri Feb  8 07:47:56 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/package/old.rb:  Disallow installation of old-format
	  gems when a security policy is active.
	* test/rubygems/test_gem_package_old.rb:  Test for above.

Fri Feb  8 07:34:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/net/http.rb (HTTP.post_form): Fix module scope in documentation
	  Patch by David Albert [Bug #7794] [ruby-core:51955]

Fri Feb  8 07:33:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* compar.c (cmp_equal): Document ignored exception and return false
	  By Makoto Kishimoto [Bug #7790] [ruby-dev:46925] [ruby-dev:46910]

Fri Feb  8 07:17:00 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/dependency_installer.rb:  Only install local gems if
	  they end in '.gem'.  Fixes github rubygems issue #407.
	* test/rubygems/test_gem_dependency_installer.rb:  Test for the above.

Fri Feb  8 00:02:48 2013  Tanaka Akira  <akr@fsij.org>

	* process.c (obj2gid): use getgrnam_r() only if getgrnam_r() and
	  _SC_GETGR_R_SIZE_MAX is available.
	  MirOS BSD (MirBSD 10 GENERIC#1382 i386) have getgrnam_r() but
	  no _SC_GETGR_R_SIZE_MAX.
	  (obj2uid): use getpwnam_r() only if getpwnam_r() and
	  _SC_GETPW_R_SIZE_MAX is available.
	  This is consistency for obj2gid.
	  MirOS BSD have neither getpwnam_r() nor _SC_GETPW_R_SIZE_MAX.

Thu Feb  7 22:01:18 2013  Tanaka Akira  <akr@fsij.org>

	* configure.in: define linker for shared library on MirOS BSD.

Thu Feb  7 21:09:23 2013  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/rubygems/test_gem_config_file.rb
	  (TestGemConfigFile#test_check_credentials_permissions): skip on
	  Windows. see [Bug #7784] [ruby-core:51864] and r39070.

Thu Feb  7 20:52:40 2013  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/Makefile.sub (config.status): added variables which were
	  missing at r39130.

Thu Feb  7 15:33:17 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (MakeMakefile#merge_libs): insert following reversal
	  ordered elements just after the duplicated element, not overwriting
	  successive elements.  [ruby-core:50314] [Bug #7467]

Thu Feb  7 14:56:15 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/package.rb:  Ensure digests are generated for signing.
	* test/rubygems/test_gem_package.rb:  Test for the above.

	* lib/rubygems/security/policy.rb:  Ensure digests are present when
	  verifying a gem and match the number of signatures bidirectionally.
	* test/rubygems/test_gem_security_policy.rb:  Test for the above.

	* lib/rubygems.rb:  Documentation improvements (by zzak)

Thu Feb  7 05:52:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* doc/pty/README: Remove static documentation file
	* ext/pty/pty.c: Add License to PTY module overview

Thu Feb  7 02:31:10 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* vm_insnhelper.c: attr_writer should return its argument [Bug #7773]

	* test/ruby/test_basicinstructions.rb: Test for above

Thu Feb  7 01:35:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* doc/security.rdoc: Link to japanese version of CVE page patch by
	  nagachika

Wed Feb  6 23:30:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* doc/pty/README.expect: Removed static documentation file
	* ext/pty/lib/expect.rb: Documentation for IO#expect

Wed Feb  6 22:25:00 2013  Charlie Somerville  <charlie@charliesomerville.com>

	* hash.c (env_reject_bang): hide keys array from ObjectSpace
	* hash.c (env_select_bang): ditto

Wed Feb  6 17:33:01 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (multiarch): add option to move architecture dependent
	  directories.  [Feature #6111]

	* template/ruby.pc.in: add arch dependent paths.

	* configure.in (rubyarchhdrdir, sitearchhdrdir, vendorarchhdrdir): add
	  options to customize architecture dependent header directories.

	* configure.in (rubyarchprefix, sitearchdir, vendorarchdir): add
	  options to customize architecture dependent library directories.

	* template/ruby.pc.in, tool/mkconfig.rb, tool/rbinstall.rb: use
	  configured values.

	* tool/mkconfig.rb: expand rubyarchdir to extract prefix.

	* configure.in (RUBY_VERSION_NAME), template/ruby.pc.in: add
	  substitution and define.

	* configure.in, version.c: parametric architecture name for paths.

	* configure.in (shvar_to_cpp): convert sh variable references
	  by replacing with string literal forms in cpp.

Wed Feb  6 17:05:26 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc:  Import RDoc 4.0.0.rc.2

Mon Feb  4 02:22:49 2013  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_process.rb (test_setsid): ensure to call
	  Process.wait(). Reported by George Koehler. Thanks.

Mon Feb  4 02:18:00 2013  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_process.rb (test_setsid): skip when platform is
	  OpenBSD. Contributed from George Koehler.
	  [Bug #7789] [ruby-core:51889]

Wed Feb  6 13:35:20 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* proc.c (rb_method_entry_location, rb_{mod,obj}_method_location): new
	  functions to obtain source location of method definition.

	* vm_method.c (rb_obj_respond_to): show the location of old style
	  respond_to? method.

Wed Feb  6 13:03:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* doc/security.rdoc: Add link to CVEs on ruby-lang.org/en/security

Wed Feb  6 12:49:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* NEWS: Add note about removal of CSV::load and CSV::dump from r39077

Wed Feb  6 05:57:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/racc/parser.rb: Hide copyright notice from Racc doc

Wed Feb  6 05:50:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* doc/rubygems/*: Removed outdated documentation files
	* lib/rubygems/LICENSE.txt: Include license file
	* lib/rubygems.rb: Move Gem module documentation so rdoc can parse it
	  and link to LICENSE.txt
	* lib/rubygems/*: Hide useless documentation from Gem module rdoc

Wed Feb  6 03:45:19 2013  Zachary Scott  <zachary@zacharyscott.net>

	* doc/security.rdoc: Remove documentation for unsafe CSV.load which
	  was deleted in r39077

Wed Feb  6 03:27:19 2013  James Edward Gray II  <james@graysoftinc.com>

	* lib/csv.rb: Remove the dangerous serialization feature.

Wed Feb  6 00:56:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/irb.rb: Remove example from restrictions, it works [Github #246]
	  Based on patch by Ryunosuke SATO

Wed Feb  6 00:46:53 2013  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm.c (rb_vm_stack_to_heap): call rb_vm_get_binding_creatable_next_cfp
	  instead of rb_vm_get_ruby_level_next_cfp to prevent a segfault by
	  calling Kernel#callcc. See r39067 for more details.
	  [ruby-dev:46908] [ruby-trunk - Bug #7774]

	* test/ruby/test_settracefunc.rb: add a test.

Tue Feb  5 18:48:00 2013  Charlie Somerville  <charlie@charliesomerville.com>

	* doc/security.rdoc: add regex, eval and drb sections

Tue Feb  5 17:24:02 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/servlet.rb:  Fixed root search paths, filesystem paths
	  instead of HTTP paths were returned.
	* test/rdoc/test_rdoc_servlet.rb:  Test for above.

Tue Feb  5 16:37:00 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/config_file.rb:  Ignore permissions check on windows.
	  Windows writes 0600 file as 0644 permissions making the check
	  useless.

Tue Feb  5 16:25:25 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_method.c (rb_obj_respond_to): drop optional include_all flag if
	  respond_to? method is defined in old style.  [Bug #7722]

Tue Feb 05 15:04:34 2013  Koichi Sasada  <ko1@atdot.net>

	* proc.c (rb_binding_new_with_cfp): permit to create binding object
	  of IFUNC frame.
	  When `rb_binding_new_with_cfp()' is called, VM finds out the first
	  normal (has iseq) frame and create a binding object of this frame
	  and create Env objects. `ep's of related frames are updated
	  (`ep's point Env object managed spaces).
	  However, `ep' of skipped IFUNC frame was not updated and
	  old invalid `ep' was remained. It causes serious problems.
	  To solve this issue, permit IFUNC to create binding.
	  (Maybe there is no problem on it)
	  [ruby-dev:46908] [ruby-trunk - Bug #7774]

	* test/ruby/test_settracefunc.rb: add a test.

	* vm.c (rb_vm_get_binding_creatable_next_cfp), vm_core.h: added.

	* vm_trace.c: fix to use `rb_vm_get_binding_creatable_next_cfp()'.

Tue Feb  5 14:43:15 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/matrix.rb: Fix error message, patch by pypypy [Bug #7777]

Tue Feb  5 14:36:04 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* numeric.c (fix_pow): Handle special cases when base is 0, -1 or +1
	  [Bug #5713] [Bug #5715]

	* rational.c (nurat_expt): ditto

Tue Feb  5 13:27:53 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/io/console/console.c (rawmode_opt): use default values by `stty
	  raw`.

Tue Feb  5 12:50:47 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* range.c: Use div instead of / for bsearch

	* test/ruby/test_range.rb: Test showing bug when requiring mathn

Tue Feb  5 12:48:38 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* enumerator.c: Use to_enum for Enumerable methods returning
	  Enumerators.
	  This makes Lazy#cycle no longer needed, so it was removed.
	  Make Enumerator#chunk and slice_before return lazy Enumerators.
	  [Bug #7715]

	* internal.h: Remove ref to rb_enum_cycle_size; no longer needed

	* enum.c: Make enum_cycle_size static.

	* test/ruby/test_lazy_enumerator.rb: Test for above

Tue Feb  5 12:48:10 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* enumerator.c: Finalize and document Lazy.new. [Bug #7248]
	  Add Lazy#to_enum and simplify Lazy#size.

	* test/ruby/test_lazy_enumerator.rb: tests for above

Tue Feb  5 11:35:35 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/commands/push_command.rb:  Fixed credential download for
	  `gem push --host`
	* lib/rubygems/gemcutter_utilities.rb:  ditto.
	* test/rubygems/test_gem_commands_push_command.rb:  Test for the above.
	* test/rubygems/test_gem_gemcutter_utilities.rb:  ditto.

	* lib/rubygems/config_file.rb:  Abort if the `gem push` credentials
	  file has insecure permissions.
	* test/rubygems/test_gem_config_file.rb:  Test for the above.

	* lib/rubygems/ext/builder.rb:  Do not look for Gemfile, Isolate, etc.
	  while building gem extensions.

	* lib/rubygems/package.rb:  Unset spec and files list if a gem's
	  signatures cannot be verified.
	* test/rubygems/test_gem_package.rb:  Test for the above.

	* lib/rubygems/specification.rb:  Reduce use of eval.
	* lib/rubygems/test_case.rb:  ditto.

	* test/rubygems/test_gem_specification.rb:  Test setting
	  specification_version for legacy gems.  Dup Gem.ruby before
	  untainting in case it's frozen.

	* lib/rubygems.rb:  Reduce use of eval.  Only read files when looking
	  for Gemfile, Isolate, etc.
	* test/rubygems/test_gem.rb:  Test for the above.

Tue Feb  5 10:15:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* doc/security.rdoc: Wrap security guide at 80 columns

Tue Feb  5 10:15:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* doc/security.rdoc: Grammatical error on security guide
	  Patch by Josh Bassett [Github fixes #245]

Tue Feb  5 10:00:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/racc/parser.rb: Update #do_parse and #yyparse from upstream
	  See [Github tenderlove/racc@7d954b5]

Tue Feb  5 09:55:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/racc: Merge Racc documentation downstream, add grammar ref file

Tue Feb  5 08:03:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/irb.rb, lib/irb/ext/save-history.rb: Add documentation on how to
	  enabled irb history [ruby-core:51347] [Bug #7679]

Tue Feb  5 07:35:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/irb.rb, lib/irb/context.rb: Add documentation on how to enable
	  auto-indentation and autocompletion using irbrc and irb_context
	  [ruby-core:51209] [Bug #7642] and [ruby-core:51348] [Bug #7680]

Tue Feb  5 05:20:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* doc/standard_library.rdoc: Document list of libraries and extensions
	  and their purpose or short description
	* lib/README: Remove lib/README in favor of doc/standard_library.rdoc

Tue Feb  5 04:40:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* ext/json/lib/json.rb: Move module overview definition for rdoc

Tue Feb  5 03:00:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/tracer.rb: Move class overview definition and reformat

Mon Feb  4 15:10:10 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/io/console/console.c (rawmode_opt): initialize options for the
	  case all options are not given.

Mon Feb  4 12:44:13 2013  Koichi Sasada  <ko1@atdot.net>

	* vm_dump.c (control_frame_dump): capitalize prefix of `ep'
	  if `ep' points an env object.

Mon Feb  4 04:20:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/English.rb: Add English module for RDoc to parse, then
	  remove_const to avoid confusion. Include full list of aliases and
	  their associated global variable.

Mon Feb  4 02:40:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/yaml.rb (YAML::EngineManager): Documentation for #yamler and
	  #yamler= for using the removed Syck gem as the YAML::ENGINE

Sun Feb  3 16:54:27 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/io/console/io-console.gemspec: bump.  [Bug #7762]

	* test/io/console/test_io_console.rb (test_stringio_getch): use more
	  descriptive assertions.

	* ext/io/console/console.c (rawmode_opt): min is minimum characters,
	  not tenths.

Sun Feb  3 16:13:00 2013  Charlie Somerville  <charlie@charliesomerville.com>

	* doc/security.rdoc: add first cut at a Ruby security document

Sun Feb  3 10:25:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* random.c: Document range argument for Kernel#rand.
	  [ruby-core:51794] [Bug #7770]

Sun Feb  3 10:00:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* numeric.c: Document Float constants [ruby-core:51484] [Bug #7709]

Sun Feb  3 09:38:44 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/profiler.rb (PROFILE_CALL_PROC, PROFILE_RETURN_PROC): add b_call
	  and b_return to profile block calls.

	* lib/profiler.rb (PROFILE_CALL_PROC, PROFILE_RETURN_PROC): split
	  PROFILE_PROC for call and return events.

Sat Feb  2 14:32:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/minitest/mock.rb, lib/minitest/hell.rb: nodoc top-level module

Sat Feb  2 14:05:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/debug.rb: Documentation for DEBUGGER__ class methods based on
	  patch by Vincent Batts [ruby-core:51253]

Sat Feb  2 13:37:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/net/smtp.rb: Fix rdoc title for Net::SMTP

Sat Feb  2 13:32:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/net/pop.rb: Fix rdoc title for Net::POP3

Sat Feb  2 13:00:11 2013  Yusuke Endoh  <mame@tsg.ne.jp>

	* lib/gserver.rb (GServer#start): fix a timing issue.  patch from
	  Charles Nutter.  [Bug #7081]

Sat Feb  2 12:36:54 2013  Yusuke Endoh  <mame@tsg.ne.jp>

	* lib/fileutils.rb (copy_entry, wrap_traverse): preserve attributes of
	  directories on FileUtils.cp_r.  The fix was proposed by Jan
	  Wedekind.  [Bug #7246]

	* test/fileutils/test_fileutils.rb: add a test for above.

Sat Feb  2 12:30:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/uri/ftp.rb (URI::FTP.new2): nodoc method from r39013 [Bug #7301]

Sat Feb  2 12:15:36 2013  Yusuke Endoh  <mame@tsg.ne.jp>

	* lib/uri/ftp.rb (URI::FTP.new2): remove the rdoc because it is not
	  well tested yet.  [Bug #7301]

Sat Feb  2 12:07:41 2013  Yusuke Endoh  <mame@tsg.ne.jp>

	* ChangeLog: Forgot to add a reference to the ChangeLog of the
	  previous commit.

Sat Feb  2 12:05:18 2013  Yusuke Endoh  <mame@tsg.ne.jp>

	* lib/fileutils.rb: chmod/chmod_R with a string mode (e.g., "+x")
	  caused error in verbose mode.  [Bug #7373]

	* test/fileutils/test_fileutils.rb: add a test for above.

Sat Feb  2 11:44:42 2013  Yusuke Endoh  <mame@tsg.ne.jp>

	* lib/English.rb: Remove some confusing words from rdoc.  [Bug #7406]

Sat Feb  2 10:17:12 2013  Kazuki Tsujimoto  <kazuki@callcc.net>

	* NEWS: add keyword arguments.

Sat Feb  2 07:45:44 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* proc.c (proc_curry): Fix arity check [Bug #5747]

	* test/ruby/test_proc.rb: Test for above

Sat Feb  2 07:44:15 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* proc.c: Add {*}_min_max_arity and refactor.
	  [Bug #7765]

	* test/ruby/test_proc.rb: Fix wrong test

Fri Feb  2 00:46:00 2013  Charlie Somerville  <charlie@charliesomerville.com>

	* marshal.c: add security considerations to marshal overview, refer to
	  overview from Marshal.load documentation [#7759]

Fri Feb  1 23:04:00 2013  Charlie Somerville  <charlie@charliesomerville.com>

	* array.c (rb_ary_dup): make returned array the same class as the original
	  array [Bug #7768] [ruby-core:51792]
	* test/ruby/test_array.rb (class TestArray): add test

Fri Feb  1 16:35:34 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* marshal.c (r_object0): prohibit setting instance variables of
	  existing class/module.

Fri Feb  1 14:34:29 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* ext/readline/extconf.rb, ext/readline/readline.c: check
	  RL_PROMPT_START_IGNORE and RL_PROMPT_END_IGNORE directly in
	  readline.c.  Patch by Zachary Scott.  [Bug #7397] [ruby-core:49561]

Thu Jan 31 21:55:00 2013  Charlie Somerville  <charlie@charliesomerville.com>

	* marshal.c (marshal_load): Add documentation warning against using
	  Marshal.load on untrusted data [Bug #7759] [ruby-core:51765]

Thu Jan 31 16:33:27 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (local_push_gen): no assigned but unused variable warnings
	  in eval as well as -e.  [Feature #7730] [ruby-core:51580]

Wed Jan 30 12:30:08 2013  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_signal.rb (test_trap_puts): Fix typo. "sync"
	  should be "STDOUT.sync".

Thu Jan 31 15:39:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* string.c (rb_str_aset_m): Documentation for String#[]= fix
	  Raises an IndexError if Regexp match is out of range.
	  Github fixes #243 Patch by Dmtiriy Budnik

Thu Jan 31 13:54:44 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* ext/socket/raddrinfo.c (rsock_unix_sockaddr_len): return
	  sizeof(sa_family_t) if path is empty.  see "Autobind Feature" in
	  unix(7) for details.

	* ext/socket/lib/socket.rb (unix_socket_abstract_name?): treat an
	  empty path as an abstract name.

	* test/socket/test_unix.rb: related test.

Wed Jan 30 20:58:50 2013  Tanaka Akira  <akr@fsij.org>

	* ext/socket/basicsocket.c (bsock_getsockname): ignore truncated
	  part of socket address.
	  (bsock_getpeername): ditto.
	  (bsock_local_address): ditto.
	  (bsock_remote_address): ditto.

	* ext/socket/unixsocket.c (unix_path): ditto.
	  (unix_addr): ditto.
	  (unix_peeraddr): ditto.

	* ext/socket/init.c (cloexec_accept): ditto.

Wed Jan 30 17:08:20 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/win32.h (fstat): revert r37337, which uses _fstati64()
	  instead of fstati64() on mingw32.  [Bug #7276]

Wed Jan 30 15:26:37 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* ext/socket/unixsocket.c (rsock_init_unixsock): use rb_inspect()
	  because rb_sys_fail_str() fails if its argument contains NUL.

	* test/socket/test_unix.rb: related test.

Wed Jan 30 15:21:30 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_dump.c (rb_vm_bugreport): show the most important message, Crash
	  Report log information, first.

Wed Jan 30 15:00:05 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* array.c (rb_ary_bsearch): Raise TypeError on bad return from block

	* range.c (range_bsearch): ditto

	* test/ruby/test_array.rb (class): Test for above

	* test/ruby/test_range.rb (class): ditto

Wed Jan 30 14:46:28 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* range.c: Restrict bsearch to integers [#7728]

	* test/ruby/test_range.rb: Test for above

Wed Jan 30 14:10:52 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* array.c (rb_ary_bsearch): Return enumerator if no block [#7725]

	* range.c (range_bsearch): ditto

	* test/ruby/test_array.rb: Test for above

	* test/ruby/test_range.rb: ditto

Wed Jan 30 13:53:43 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/matrix.rb: Take conjugate for inner product
	  [rubyspec:5a01ad5719f2] [ruby-dev:46101]

Wed Jan 30 13:22:05 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (local_push_gen): warn assigned but unused variables also in
	  toplevel, except for -e option.  [Feature #7730] [ruby-core:51580]

Wed Jan 30 13:17:53 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* cont.c (cont_restore_thread): svar should be separate per fibers.
	  [ruby-core:51331] [Bug #7678]

Wed Jan 30 07:15:04 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* re.c (reg_operand): Simplify and reuse error handling [Bug #7539]

	* test/ruby/test_regexp.rb: Test for above

Wed Jan 30 07:00:16 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* object.c: Improve error for failed implicit conversions [Bug #7539]

	* error.c: Adapt rdoc

	* test/ruby/test_object.rb: Test for above

Tue Jan 29 21:40:12 2013  Tanaka Akira  <akr@fsij.org>

	* lib/net/http/generic_request.rb (encode_multipart_form_data): remove
	  tempfile explicitly.

Tue Jan 29 19:27:18 2013  Benoit Daloze  <eregontp@gmail.com>

	* array.c: Improve documentation about
	  comparison by hash for concerned methods. [ruby-core:51266]

Tue Jan 29 17:03:28 2013  Koichi Sasada  <ko1@atdot.net>

	* vm_backtrace.c: fix issue of rb_debug_inspector_open().
	  The order of making binding should be stack (frame) top to bottom.
	  [Bug #7635]
	  And also fix issue of collecting klass. Collecting klass is same
	  as TracePoint#defined_class.
	  (previous version, it returns T_ICLASS (internal objects).

	* test/-ext-/debug/test_debug.rb: add a test.

	* ext/-test-/debug/extconf.rb, init.c, inspector.c: ditto.

	* vm_backtrace.c: remove magic number and add enum CALLER_BINDING_*.

	* vm_backtrace.c, include/ruby/debug.h: add new C api (experimental)
	  rb_debug_inspector_frame_self_get().

	* vm.c, vm_core.h, vm_trace.c: move decl. of
	  rb_vm_control_frame_id_and_class() and constify first parameter.

Tue Jan 29 16:50:58 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_trace.c (rb_tracepoint_enable, rb_tracepoint_disable): check safe
	  level as well as set_trace_func.

	* vm_trace.c (set_trace_func, thread_{add,set}_trace_func_m): check
	  safe level as well as 1.8.

Tue Jan 29 16:49:19 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* proc.c (rb_mod_method_arity): return original arity of the method if
	  aliased because of visibility change, like as Method#arity.

Tue Jan 29 12:05:18 2013  Tanaka Akira  <akr@fsij.org>

	* test/ruby/test_marshal.rb: remove temporally files early.

	* test/ruby/test_process.rb: ditto.

	* test/psych/test_exception.rb: ditto.

Tue Jan 29 09:26:20 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* ext/socket/socket.c (sock_s_pack_sockaddr_un): calculate the
	  correct address length of an abstract socket.

	* test/socket/test_unix.rb: related test.

Mon Jan 28 18:02:16 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_backtrace.c (rb_debug_inspector_frame_{class,binding,iseq}_get):
	  use long as index as well as RARRAY_LEN().

Mon Jan 28 17:51:38 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/envutil.rb (assert_separately): imply no core dump.

Mon Jan 28 12:32:31 2013  Tanaka Akira  <akr@fsij.org>

	* ext/fcntl/fcntl.c: update document.  use "file descriptor" instead
	  of "file handle" because it is not used other Ruby documents and
	  it is confusing with Windows file handle.
	  correct F_DUPFD behavior.

Sat Jan 26 22:39:12 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* marshal.c (w_object): dump instance variables of the result of
	  marshal_dump not the original object.  [ruby-core:51163] [Bug #7627]

	* complex.c (nucomp_marshal_dump): need to copy instance variables.

	* rational.c (nurat_marshal_dump): ditto.

Sat Jan 26 13:35:56 2013  Eric Hodel  <drbrain@segment7.net>

	* ext/fcntl/fcntl.c:  Document Fcntl constants

Sat Jan 26 12:54:40 2013  Eric Hodel  <drbrain@segment7.net>

	* hash.c (rb_env_size):  Restored documentation for ENV.size

	* lib/drb/drb.rb:  Documented DRb::DRb#run.

	* lib/erb.rb (class ERB):  Improved documentation of ERb.

	* transcode.c:  Documented Encoding::Converter constants.

Sat Jan 26 10:09:57 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/webrick/accesslog.rb:  Improved WEBrick documentation.
	* lib/webrick/cgi.rb:  ditto.
	* lib/webrick/config.rb:  ditto.
	* lib/webrick/cookie.rb:  ditto.
	* lib/webrick/httpauth/authenticator.rb:  ditto.
	* lib/webrick/httpauth/basicauth.rb:  ditto.
	* lib/webrick/httpauth/digestauth.rb:  ditto.
	* lib/webrick/httpproxy.rb:  ditto.
	* lib/webrick/httprequest.rb:  ditto.
	* lib/webrick/httpresponse.rb:  ditto.
	* lib/webrick/https.rb:  ditto.
	* lib/webrick/httpserver.rb:  ditto.
	* lib/webrick/httpservlet/cgihandler.rb:  ditto.
	* lib/webrick/httpservlet/filehandler.rb:  ditto.
	* lib/webrick/httpservlet/prochandler.rb:  ditto.
	* lib/webrick/httputils.rb:  ditto.
	* lib/webrick/httpversion.rb:  ditto.
	* lib/webrick/log.rb:  ditto.
	* lib/webrick/server.rb:  ditto.
	* lib/webrick/ssl.rb:  ditto.
	* lib/webrick/utils.rb:  ditto.
	* lib/webrick/version.rb:  ditto.

Sat Jan 26 08:29:33 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* ext/socket/raddrinfo (rsock_unix_sockaddr_len): renamed from
	  rsock_unixpath_len, because it returns not the length of the path,
	  but the length of a socket address for the path.

Sat Jan 26 01:12:23 2013  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_io.rb (test_ioctl_linux): skip if a platform is
	  not x86 because linux ioctl request number depend on cpu arch.
	  At least, alpha, mips, sparc and ppc have a different number.
	  [Bug #7718] [ruby-core:51544]

Fri Jan 25 19:14:24 2013  Masaki Suketa <masaki.suketa@nifty.ne.jp>

	* ext/win32ole/win32ole.c: use TlsAlloc instead of __declspec(thread)
	  to avoid SEGV if win32ole.so loaded with LoadLibrary in Windows
	  XP or earlier.

Fri Jan 25 16:47:31 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* ext/socket/raddrinfo.c (rsock_unixpath_len, init_unix_addrinfo),
	  ext/socket/unixsocket.c (unixsock_connect_internal,
	  rsock_init_unixsock): calculate the correct address length of
	  an abstract socket.  Without this fix, sizeof(struct sockaddr_un)
	  is specified as the length of an abstract socket for bind(2) or
	  connect(2), so the address of the socket is filled with extra NUL
	  characters.  See unix(7) for details.

	* ext/socket/lib/socket.rb (unix_server_socket): don't access the
	  file system if the platform is Linux and path starts with NUL,
	  which means that the socket is an abstract socket.

	* test/socket/test_unix.rb: related test.

Fri Jan 25 13:02:27 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/drb/drb.rb:  Updated documentation based on patch from Vincent
	  Batts.  [ruby-trunk - Bug #7714]
	* lib/drb/ssl.rb:  ditto.

Fri Jan 25 12:23:29 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/drb/drb.rb:  Improved documentation by adding or hiding methods.
	* lib/drb/eq.rb:  ditto.
	* lib/drb/extserv.rb:  ditto.
	* lib/drb/gw.rb:  ditto.
	* lib/drb/invokemethod.rb:  ditto.
	* lib/drb/observer.rb:  ditto.
	* lib/drb/ssl.rb:  ditto.
	* lib/drb/timeridconv.rb:  ditto.
	* lib/drb/unix.rb:  ditto.

	* sample/drb/gw_cu.rb:  Fixed bug in DRb gateway sample.

Fri Jan 25 12:01:56 2013  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h: modify a comment about rb_iseq_t::local_size.
	  A patch by davidbalbert (David Albert) [Bug #6750]

Fri Jan 25 10:36:31 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/mkmf.rb:  Documented MakeMakefile constants.  Hide implementation
	  details from RDoc

Fri Jan 25 10:04:07 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/compatibility.rb:  Hide compatibility shims from RDoc

	* lib/rubygems/config_file.rb:  Hide RbConfig use from RDoc

	* lib/rubygems/test_case.rb:  Added note to use realpath when 1.8
	  support is dropped.

Fri Jan 25 09:14:43 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/generator/darkfish.rb:  Fixed debug message.  RDoc bug #174
	  by Thomas Leitner.

	* lib/rdoc/store.rb:  Fixed deletion of ri attribute data when a class
	  was loaded then saved.  RDoc bug #171 by Thomas Leitner.
	* test/rdoc/test_rdoc_store.rb:  Test for above.

Thu Jan 24 19:55:25 2013  Shota Fukumori  <her@sorah.jp>

	* NEWS (yaml): Write about bundled libyaml.

Thu Jan 24 16:54:34 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/calling_methods.rdoc:  Added a Method Lookup section.
	* doc/syntax/refinements.rdoc (Method Lookup):  Clarified that
	  refinement methods are looked up in classes, not instances.

Thu Jan 24 16:49:17 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* enum.c (enum_zip): Fix error message

	* array.c (take_items): Same, for Array#zip

Thu Jan 24 16:47:26 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* enumerator.c (lazy_zip): raise error for bad arguments
	  [Bug #7706]

Thu Jan 24 16:05:08 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* enumerator.c: Optimize Lazy#zip when passed only arrays
	  [Bug #7706]

Thu Jan 24 15:21:17 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* enumerator.c: Fix state handling for Lazy#zip,{drop_take}{_while}
	  [bug #7696] [bug #7691]

Thu Jan 24 11:43:47 2013  Narihiro Nakamura  <authornari@gmail.com>

	* eval.c (f_current_dirname): Add documentation about "__dir__
	  returns always an absolute path". [Bug #7729]

Thu Jan 24 10:28:30 2013  Eric Hodel  <drbrain@segment7.net>

	* NEWS (RDoc):  Added mention of page support and markdown support.

Thu Jan 24 09:40:13 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/refinements.rdoc:  Added refinements document based on
	  the specification from the wiki.
	* doc/syntax.rdoc:  Added link to refinements document.

Wed Jan 23 16:29:09 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/win32.c (rb_w32_spawn, rb_w32_aspawn_flags): fix missing
	  initialization.  pointed out by phasis68 (Heesob Park) at
	  [ruby-core:51579].  [Bug #7721]

Wed Jan 23 16:18:04 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (MakeMakefile#try_constant): fix for large unsigned.

	* lib/mkmf.rb (MakeMakefile#try_constant): fix for larger constants.

	* test/mkmf/test_constant.rb: tests for try_constant.
	  TODO: define check_constant and use it.

Wed Jan 23 13:35:37 2013  Koichi Sasada  <ko1@atdot.net>

	* thread_pthread.c (ruby_init_stack): ignore `STACK_END_ADDRESS'
	  if Ruby interpreter is running on co-routine.
	  [Feature #2294]
	  https://bugs.ruby-lang.org/issues/2294#note-18

Wed Jan 23 12:28:22 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/win32.c (rb_w32_spawn, rb_w32_aspawn_flags): check the results
	  of acp_to_wstr() which can return NULL.  [ruby-core:51557] [Bug #7721]

Wed Jan 23 10:40:49 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/assignment.rdoc (Implicit Array Assignment):  Clarify
	  that "left-hand side" means "of the assignment".  Suggested by Jorge
	  Dias.
	* doc/syntax/assignment.rdoc (Multiple Assignment):  ditto.

Wed Jan 23 10:34:47 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/assignment.rdoc (Local Variables and Methods):  Fixed
	  example showing caching of a method's results into a local variable.
	  Added not about using an explicit receiver to call a method that
	  matches a local variable.  Suggested by markov_twain on twitter.

Wed Jan 23 10:20:08 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/README:  Fixed typo.  Patch by Pradeep Sahoo.
	  Fixes #240 on github

Wed Jan 23 09:53:39 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/servlet.rb:  Fixed display of site and home documentation.
	  Fixes rdoc issue #170 by Thomas Leitner.
	* test/rdoc/test_rdoc_servlet.rb:  Test for above.

	* lib/rdoc/code_object.rb:  Split #initialize_visibility from
	  #initialize for reuse when loading a stored object.
	  Fixes rdoc issue #171 by Thomas Leitner.

	* lib/rdoc/any_method.rb:  Initialize visibility for #display?  For
	  rdoc issue #171
	* lib/rdoc/attr.rb:  ditto.
	* lib/rdoc/class_module.rb:  ditto.
	* lib/rdoc/top_level.rb:  ditto.
	* test/rdoc/test_rdoc_any_method.rb:  Test for above.
	* test/rdoc/test_rdoc_attr.rb:  ditto.
	* test/rdoc/test_rdoc_class_module.rb:  ditto.
	* test/rdoc/test_rdoc_constant.rb:  ditto.
	* test/rdoc/test_rdoc_top_level.rb:  ditto.

Wed Jan 23 06:43:26 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/test_case.rb:  Use Dir.tmpdir for rubygems tests instead
	  of ./tmp/test.  Fixes [ruby-trunk - Bug #7717]

Tue Jan 22 22:58:03 2013  Akinori MUSHA  <knu@iDaemons.org>

	* misc/ruby-electric.el (ruby-electric-curlies): Fix the bug where
	  an open curly inserted in a string is always replaced with a
	  hash sign.

Mon Jan 21 15:41:33 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* tool/mkconfig.rb: BASERUBY is transient at core build.

Mon Jan 21 13:51:21 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb ($extmk): traverse parent directories for the case
	  srcdir is a symlink.

Sun Jan 20 23:55:37 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* marshal.c (w_object, r_object0): separate respond_to checks and
	  calling, and get back to the old behavior for 2.0.  [Bug #7564]

Sun Jan 20 22:24:28 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* tool/vpath.rb (VPath#def_options): hack for msys make, which
	  converts a command line argument to non-msys command seems like a
	  path list automagically.  [Bug #7710] [ruby-core:51489]

Sat Jan 19 11:35:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* struct.c (Struct.new): Document Struct.new with block
	  Patch by Hiroyuki Iwatsuki [Bug #7674]

Sat Jan 19 09:52:46 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/miscellaneous.rdoc:  Added section on defined?

Sat Jan 19 09:27:31 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/assignment.rdoc (Local Variables and Methods):  Made it
	  more clear that local variables are created by the parser, not
	  execution.  Thanks to John Hawthorn.

Sat Jan 19 09:15:58 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/assignment.rdoc:  Improved links
	* doc/syntax/methods.rdoc:  ditto.

	* doc/syntax.rdoc:  Added link to assignment document

Sat Jan 19 08:47:33 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/assignment.rdoc:  Added a syntax document on assignment.

Fri Jan 18 14:11:01 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/methods.rdoc:  Added Array Decomposition.

Fri Jan 18 12:54:21 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* tool/rbinstall.rb (gem): Gem.ensure_gem_subdirectories makes
	  subdirectories group-writable, so make them with $dir_mode.

Fri Jan 18 11:24:33 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/win32ole/win32ole.c (ole_initialize): uninitialize OLE at thread
	  ends.  [Bug #2618] [ruby-core:27634]

	* ext/win32ole/win32ole.c (ole_initialize): initialize OLE for each
	  threads.  [Bug #2618] [ruby-core:27634]

Thu Jan 17 22:10:35 2013  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rubygems/ext/builder.rb (Gem::Ext::Builder.make): Remove
	  .time dependency from *.rb install target. It causes needless
	  *.rb install. [Bug #7698] [ruby-core:51437]
	  Reported by Tadashi Saito. Thanks!!!
	* test/rubygems/test_gem_installer.rb
	  (TestGemInstaller#test_install_extension_and_script): Add a test
	  for the above change.

Thu Jan 17 21:08:20 2013  Kouhei Sutou  <kou@cozmixng.org>

	* eval.c: Fix a typo in ruby_finalize() documentation.

Thu Jan 17 20:28:18 2013  Benoit Daloze  <eregontp@gmail.com>

	* object.c: Typo in Kernel#hash documentation.
	  Patch by zed_0xff [Github Fixes #237]

Thu Jan 17 10:48:56 2013  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/scalar_scanner.rb: use constants rather than
	  calculating Inf and NaN.

Thu Jan 17 10:21:05 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/miscellaneous.rdoc:  Added Ending an Expression and
	  indentation.

Thu Jan 17 09:30:21 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/installer.rb:  Untaint string when checking output
	  for $SAFE=1

	* lib/rubygems/specification.rb:  Keep previously loaded specs as
	  active.  This prevents double loading when refreshing the gem list.
	* test/rubygems/test_gem.rb:  Test for above

	* lib/rubygems.rb:  Bump version to 2.0.0.rc.2

Thu Jan 17 09:08:37 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/control_expressions.rdoc:  Added ? : ternary if

Thu Jan 17 08:36:04 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/miscellaneous.rdoc:  Added documentation for alias, undef,
	  BEGIN, END.
	* doc/syntax/modules_and_classes.rdoc (Constants):  Fixed unwrapped
	  paragraph with trailing whitespace.
	* doc/syntax/modules_and_classes.rdoc (Scope):  Added section pointing
	  to alias and undef documentation.
	* doc/syntax.rdoc:  Added link to miscellaneous section.

Thu Jan 17 07:50:26 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/control_expressions.rdoc (Flip-Flop):  Added a section on
	  the flip-flop.

Thu Jan 17 06:59:51 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/control_expressions.rdoc (if Expressions):  Fixed markup
	  error.  Fixes #235 on github by FlyingFoX.

Thu Jan 17 06:53:58 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/literals.rdoc (Strings):  Fixed typo.  Fixes #236 on
	  github by Doug Yun.

Wed Jan 16 18:45:46 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/win32ole/lib/win32ole.rb: use TracePoint to hook all thread
	  creation not only by Thread.new and to get rid of interference with
	  svar scope.  [Bug #7681] [ruby-core:51365]

Wed Jan 16 09:35:53 2013  Eric Hodel  <drbrain@segment7.net>

	* .document:  Removed extra space
	* lib/irb/lc/.document:  Hide help-message
	* lib/minitest/.document:  Hide README.txt
	* lib/rake/lib/.document:  Hide project.rake
	* lib/rdoc/generator/template/json_index/.document:  Hide JavaScript
	  files
	* lib/rubygems/ssl_certs/.document:  Hide PEM files.

Wed Jan 16 03:54:28 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/control_expressions.rdoc:  Omit optional "then" for if and
	  unless expressions.  Improved description of "a if a = 0.zero?"
	  NameError.  Note that "do" for for loop is optional.

Wed Jan 16 03:28:47 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/calling_methods.rdoc:  Link to defining methods.
	* doc/syntax/methods.rdoc:  Link to calling methods, fixed typo.

Wed Jan 16 03:15:00 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/methods.rdoc:  Fixed link
	* doc/syntax/modules_and_classes.rdoc:  Fixed link
	* doc/syntax.rdoc:  Updated with links to the recently added pages

Wed Jan 16 03:05:50 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/control_expressions.rdoc (redo Statement):  Added note
	  about retry.
	* doc/syntax/exceptions.rdoc:  Added retry statement

Tue Jan 15 23:12:34 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* tool/vpath.rb (VPath#list): default separator to PATH_SEPARATOR from
	  configure.in for make, not same name constant of File for use in ruby.

Tue Jan 15 22:30:04 2013  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/ext/save-history.rb: identify rightly a status of a
	  history file that already exists [Bug #7694]. Thanks Nobuhiro IMAI
	  for this patch.

Tue Jan 15 15:55:28 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/control_expressions.rdoc:  Added description of control
	  expressions in ruby.

Tue Jan 15 13:33:00 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/methods.rdoc (Method Names):  Added method names including
	  operator methods.
	* doc/syntax/methods.rdoc (Return Values):  Added note that assignment
	  methods ignore return values.
	* doc/syntax/precedence.rdoc:  Added document describing precedence.

Tue Jan 15 11:49:31 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/methods.rdoc (Block Argument):  Added section on block
	  argument.  Thanks to Andy Lindeman.

Tue Jan 15 10:54:59 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/calling_methods.rdoc (Arguments):  Added improved
	  introduction to arguments including passing style and lazy
	  evaluation.  Thanks to Matt Aimonetti.
	* doc/syntax/calling_methods.rdoc (Positional Arguments):  Added
	  description for sending a message to a method with *arguments
	* doc/syntax/calling_methods.rdoc (Default Positional Arguments):
	  Added description.  Thanks to Andy Lindeman.
	* doc/syntax/calling_methods.rdoc (Block Local Arguments):
	  Added description of block locals.  Thanks to Justin Collins.
	* doc/syntax/calling_methods.rdoc (Hash to Keyword Arguments):  Added
	  section describing ** operator.  Thanks  to Justin Collins.

Tue Jan 15 10:40:18 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* test_lazy_enumerator: Test that map & flat_map also require a block

Tue Jan 15 09:22:47 2013  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread_pthread.c (gvl_init): Reset gvl.wait_yield explicitly when
	  fork()ing. Patch by Apollon Oikonomopoulos. Thanks!
	  [Bug #7693][ruby-core:51424]

Tue Jan 15 09:27:56 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/calling_methods.rdoc (Receiver):  Added :: as pointed out
	  by Tony Arcieri
	* doc/syntax/calling_methods.rdoc (Block Argument):  Fixed { } block
	  examples as pointed out by David Copeland.

Tue Jan 15 09:10:29 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/methods.rdoc (Array/Hash Argument):  Moved above Keyword
	  Arguments
	* doc/syntax/methods.rdoc (Keyword Arguments):  Described ** for
	  gathering arbitrary keyword arguments.

Tue Jan 15 08:56:37 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/calling_methods.rdoc:  Added document describing method
	  calls.

Tue Jan 15 07:39:21 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/top_level.rb:  Fixed extension trimming for page names in
	  RDoc HTML output.  [ruby-trunk - Bug #7673]
	* test/rdoc/test_rdoc_top_level.rb:  Test for above.

Mon Jan 14 23:06:41 2013  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/ext/save-history.rb: outputs its history to
	  owner-only-readable file and change the permission of a file that
	  already exists [Bug #7694]. Thanks Nobuhiro IMAI for bug reports.

Mon Jan 14 17:12:48 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (lazy_flat_map_func): flat_map should call each only
	  when the value of a block returns a forcable object.
	  [ruby-core:51401] [Bug #7690]

	* enumerator.c (lazy_flat_map): add documentation.

	* test/ruby/test_lazy_enumerator.rb: related test.

Mon Jan 14 16:42:28 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* enumerator.c: Require block for Lazy#{take|drop}_while [Bug #7692]

Mon Jan 14 14:41:00 2013  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/bigdecimal.c (BigDecimal_to_s): use CRuby style.

Mon Jan 14 14:39:00 2013  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/bigdecimal.c: use `RB_TYPE_P(x, t)` instead of
	  `TYPE(x) == t`.

Mon Jan 14 10:18:56 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* enumerator.c: Fix size for Enumerator::Lazy#flat_map

Mon Jan 14 07:12:52 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/matrix/lup_decomposition: Fix bugs with LUP Decomposition of
	  rectangular matrices. [rubyspec:ba849801a85]

Mon Jan 14 06:46:53 2013  NARUSE, Yui  <naruse@ruby-lang.org>

	* regparse.c (add_ctype_to_cc): don't check dup warn on adding
	  negative ctype to cclass. [Bug #7471] [ruby-core:50344]

Mon Jan 14 06:06:03 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/matrix/eigenvalue_decomposition: Backport bugfix of Jama 1.0.3
	  [rubyspec:df87040be371]

Sun Jan 13 16:45:00 2013  Zachary Scott <zachary@zacharyscott.net>

	* ext/psych/yaml/scanner.c: Fix typos, patch by James Dabbs
	  [Github tenderlove/psych#118]

Sun Jan 13 15:00:00 2013  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/bigdecimal.c (BigDecimal_sub):
	  need to specify precision for converting Rational and Float.
	  [ruby-dev:46544] [Bug #7404]

	* ext/bigdecimal/bigdecimal.c (BigDecimal_mult): ditto.

	* ext/bigdecimal/bigdecimal.c (BigDecimal_divide): ditto.

	* ext/bigdecimal/bigdecimal.c (BigDecimal_DoDivmod): ditto.

	* ext/bigdecimal/bigdecimal.c (BigDecimal_divremain): ditto.

	* test/bigdecimal/test_bigdecimal.rb: add tests for the above fixes.

Sun Jan 13 14:48:55 2013  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/matrix/eigenvalue_decomposition: Fix eigensystem with complex
	  eigenvectors. Patch by pypypy567.
	  [Bug #7208] [ruby-dev:46251] [rubyspec:242f8e55bd]

	* lib/matrix/lup_decomposition.rb: Fix error for rectangular matrices
	  [bug#7620] [ruby-core:51118] [rubyspec:41f833ee2]

Sun Jan 13 14:06:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/irb.rb, lib/prime.rb: Typos in overview
	  Patch by Ershad K [Github Fixes #234]

Sun Jan 13 13:40:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/open3.rb : Typo in Open3 overview. Patch by zed_0xff
	  [Github Fixes #233]

Sat Jan 12 17:42:00 2013  Kenta Murata  <mrkn@cookpad.com>

	* numeric.c (do_coerce): fix for the exceptions which the coerce
	  method raises.  The optimization done by r38756 is preserved.
	  [Bug #7645] [ruby-core:51213]

Sat Jan 12 16:12:46 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/setup.mak (-runtime-): see msvcrt from link header on mswin
	  instead of running testing executable file, for cross compiling.

Sat Jan 12 08:58:47 2013  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/to_ruby.rb: merge key values that
	  contain something besides a hash should be left in tact.

	* test/psych/test_merge_keys.rb: test for change

Sat Jan 12 07:52:47 2013  Masaki Suketa <masaki.suketa@nifty.ne.jp>

	* ext/win32ole/win32ole.c (ole_set_byref): support VT_UI8|VT_BYREF,
	  VT_I8|VT_BYREF in cygwin and mingw.

	* ext/win32ole/win32ole.c (ole_variant2val): ditto.

	* test/win32ole/test_win32ole_variant.rb (test_s_new_with_i8_byref):
	  ditto.

	* test/win32ole/test_win32ole_variant.rb (test_s_new_with_ui8_byref):
	  ditto.

Sat Jan 12 02:45:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* man/ruby.1 (options): include --*-encoding from r38784

Fri Jan 11 23:34:48 2013  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* ruby.c (usage): sort --*-encoding in help. (same order of -E)

Fri Jan 11 16:56:29 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* tool/mkconfig.rb: use configured libdir value to fix
	  --enable-load-relative on systems where libdir is not default value,
	  overridden in config.site files.  [ruby-core:47267] [Bug #6903]

Fri Jan 11 11:59:32 2013  NARUSE, Yui  <naruse@ruby-lang.org>

	* string.c (dispose_string): use rb_str_free for freeing string in
	  parse.y. by Sokolov Yura <funny.falcon@gmail.com>
	  https://github.com/ruby/ruby/pull/87 fix GH-87

Fri Jan 11 09:56:22 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* insns.def (defineclass): private constants should not be accessed
	  by scoped module definitions.  The bug was introduced in r38495.

	* test/ruby/test_module.rb: related test.

Fri Jan 11 02:11:59 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/rbconfig/obsolete.rb (respond_to_missing?): use send because
	  RbConfig.respond_to_missing? is now private.

Thu Jan 10 22:00:58 2013  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h (VM_DEBUG_BP_CHECK): set 0 as default.
	  This flag specifies checking BP consistency on each frame popping.
	  Now, we don't have any trouble on it, so I remove it.
	  If you feel any bugs about VM execution, then set it to 1.

Thu Jan 10 21:03:05 2013 TAKANO `takano32' Mitsuhiro <tak@no32.tk>

	* cont.c: define FIBER_USE_NATIVE as 0 in ia64.

Thu Jan 10 19:39:05 2013  TAKANO `takano32' Mitsuhiro <tak@no32.tk>

	* thread.c: fix RB_GC_SAVE_MACHINE_REGISTER_STACK define for ia64.

Thu Jan 10 17:45:39 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* Makefile.in, win32/Makefile.sub ($(MKFILES)): continue if Makefile
	  unchanged.

Thu Jan 10 16:31:20 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_insnhelper.c (vm_search_super_method): raise a TypeError
	  instead of a NotImplementedError if self is not an instance of the
	  current class.  [ruby-dev:39772] [Bug #2402]

Thu Jan 10 16:47:18 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/tk/extconf.rb (find_tcltk_header): use have_header instead of
	  try_cpp, which is incredibly slow with VC.

Thu Jan 10 15:55:28 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* numeric.c (do_coerce): remove an unused variable.

Thu Jan 10 15:35:55 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* tool/gen_dummy_probes.rb: remove comments in probes.d to fix the
	  compilation error introduced by r38755.

Thu Jan 10 11:15:04 2013  Kenta Murata  <mrkn@cookpad.com>

	* numeric.c (do_coerce): speed optimization by using rb_check_funcall
	  instead of rb_rescue + rb_funcall.
	  This fix is based on the patch by Benoit Daloze.
	  [Bug #7645] [ruby-core:51213]

Thu Jan 10 11:15:04 2013  Aaron Patterson <aaron@tenderlovemaking.com>

	* probes.d: updating probes to be more symmetrical, adding
	  documentation.

	* load.c: ditto

Thu Jan 10 04:23:07 2013  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/scalar_scanner.rb: strip trailing dots from
	  floats so that Float() will not raise an exception.

	* test/psych/test_numeric.rb: test to ensure "1." can be loaded

	* test/psych/test_string.rb: make sure "1." can round trip

Thu Jan 10 03:38:40 2013  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/yaml_tree.rb: ascii only binary strings
	  will be dumped as unicode.  Thanks Paul Kunysch!

	* test/psych/test_string.rb: appropriate test

Thu Jan 10 03:29:55 2013  Koichi Sasada  <ko1@atdot.net>

	* compile.c (compile_array_): modify wrong optimization.
	  A script "[print(1)]; print(2)" should output "12".
	  However, the compiler had eliminated "[print(1)]" expression
	  because it is void expression (unused array).
	  Of course, side-effect should be remained.
	  This issue is reported by Masaya Tarui.

	* bootstraptest/test_literal.rb: add a test.

Wed Jan  9 22:07:42 2013  Masaki Matsushita  <glass.saga@gmail.com>

	* load.c (load_lock): if thread shield is destroyed and there is no
	  waiting thread, insert new thread shield into load_table.
	  [Bug #7530] [ruby-core:50645]

Wed Jan  9 21:43:32 2013  Masaki Matsushita  <glass.saga@gmail.com>

	* load.c (load_lock): revert r38744. it should acquire new thread
	  shield.

Wed Jan  9 15:40:18 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm.c (th_init, ruby_thread_init): initialize root_svar with Qnil,
	  since lep_svar_place() expects uninitialized svar to be nil, not 0.

Wed Jan  9 13:20:23 2013  Masaki Matsushita  <glass.saga@gmail.com>

	* test/ruby/test_require.rb: improve test for r38744.
	  fix to use Tempfile instead of temporary file in current directory.
	  the patch is from nobu (Nobuyoshi Nakada).

Wed Jan  9 09:53:23 2013  Masaki Matsushita  <glass.saga@gmail.com>

	* load.c (load_lock): fix not to delete thread shield twice.
	  it may break the shield locked by another thread.
	  [Bug #7530] [ruby-core:50645]

	* test/ruby/test_require.rb: a test for above.

Wed Jan  9 02:13:22 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/ruby.h (RBasic): to be aligned on a VALUE size
	  boundary.  [Bug #7647]

Tue Jan  8 14:41:41 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_core.h (rb_iseq_t): move flip_cnt from struct iseq_compile_data,
	  because it has same life span as enclosing iseq.  [Bug #7671]
	  [ruby-core:51296]

Mon Jan  7 23:43:00 2013  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/bigdecimal.c (rmpd_power_by_big_decimal):
	  add RB_GC_GUARD to prevent the intermediate object is GCed too early.
	  This patch was made by Yusuke Endoh.  [Bug #7044] [ruby-core:47632]

	* test/bigdecimal/test_bigdecimal.rb: add a reproduction test for
	  the issue [Bug #7044]

Mon Jan  7 21:40:36 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_method.c (Init_eval_method): main.public and main.private
	  should be private.

	* proc.c (Init_Proc): main.define_method should be private.

	* test/ruby/test_module.rb: related test.

Mon Jan  7 20:48:47 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (Init_eval): main.include should be private.
	  [ruby-core:51293] [Bug #7670]

	* test/ruby/test_module.rb (test_top_include_is_private): a new test
	  for the above change.

Mon Jan  7 20:29:50 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* NEWS: remove description about `require "refinement"'.

Mon Jan  7 20:15:49 2013  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (Init_eval): enable Refinements by default.
	  [ruby-core:51286] [Bug #7667]

	* eval.c (rb_mod_refine, top_using): show a warning when
	  Module#refine or main.using is called at the first time.

	* ext/refinement/*: removed the extension library "refinement".

	* test/ruby/test_refinement.rb: fix for the above changes.

Mon Jan  7 17:34:22 2013  Koichi Sasada  <ko1@atdot.net>

	* include/ruby/ruby.h (RUBY_EVENT_SPECIFIED_LINE): make it special.
	  This flag is not contained by RUBY_EVENT_TRACEPOINT_ALL.
	  This event is experimental one. It is possible to remove/rename
	  flag name after 2.0.1.

	* vm_trace.c (get_event_id): return :line if SPECIFIED_LINE was
	  occurred. `:specified_line' never been returned.

Mon Jan  7 15:42:10 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (f_kwrest): allow bare kwrest_mark as valid syntax.  its
	  semantics is still undefined.  [Bug #7662] [ruby-core:51269]

Mon Jan  7 15:31:58 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (f_kwrest): reject duplicated kwrest argument name.

Mon Jan  7 15:24:10 2013  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c (rb_threadptr_exec_event_hooks_orig): pop tag before
	  JUMP_TAG() if frame is `finish' frame.
	  Without this patch, there is an inconsistency between control
	  frame stack and tags stack.
	  [Bug #7668]

	* test/ruby/test_settracefunc.rb: add a test for above.

Mon Jan  7 15:21:48 2013  NAKAMURA Usaku  <usa@ruby-lang.org>

	* Makefile.in, common.mk (fake, yes-fake, no-make): these dependencies
	  are not platform dependent.

	* win32/Makefile.sub ($(arch)-fake.rb): workaround.

Mon Jan  7 12:09:24 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_insnhelper.c (vm_callee_setup_arg_complex, vm_yield_setup_block_args):
	  set keyrest hash after making rest array, so that the last element
	  will not be overwritten.  [ruby-core:51278] [Bug #7665]

Mon Jan  7 09:37:24 2013  Koichi Sasada  <ko1@atdot.net>

	* NEWS: add a NEWS entry about RubyVM.

Sun Jan  6 19:06:57 2013  Yuki Yugui Sonoda  <yugui@yugui.jp>

	* win32/Makefile.sub: Fix build with VC.
	  Patch by Charlie Savage. Fixes [ruby-core:51261]

Sun Jan  6 18:43:48 2013  Yuki Yugui Sonoda  <yugui@yugui.jp>

	* bootstraptest/test_io.rb: add a test for [ruby-dev:46834].

	* io.c (rb_cloexec_fcntl_dupfd) Use an emulation with dup(2) when
	  fcntl(2) and/or F_DUPFD is unavailable.
	  Suggested by akr.

	* configure.in (HAVE_FCNTL): NativeClient does not provide fcntl(2).

Sun Jan  6 11:11:26 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/modules_and_classes.rdoc:  Fixed typo.

Sun Jan  6 05:35:18 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/modules_and_classes.rdoc:  Added singleton classes
	  documentation.

Sun Jan  6 02:22:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/webrick/httpservlet/abstract.rb (WEBrick::HTTPServlet): Typo in
	  example. Patch by shlensky [Fixes #232 on github]

Sat Jan  5 21:15:10 2013  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/http/generic_request.rb:
	  Amazon ECA API and GTE/1.3 disallow requests whose host has port
	  number if its port number equals to default port number of the
	  scheme. [Bug #7650]

Sat Jan  5 13:58:59 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/modules_and_classes.rdoc:  Improved description of methods
	  on a module or class as suggested by Tobias Buhlmann

Sat Jan  5 13:38:07 2013  Masaki Matsushita  <glass.saga@gmail.com>

	* string.c (rb_str_enumerate_lines): fix invalid byte sequence error
	  when a separator is passed. The patch is from yoshidam (Yoshida
	  Masato).
	  [Bug #7646] [ruby-dev:46827]

	* test/ruby/test_string.rb: a test for above.

Sat Jan  5 12:25:42 2013  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/envutil.rb (Test::Unit::Assertions#assert_in_out_err):
	  check stdout and stderr both.

Sat Jan  5 10:21:54 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/modules_and_classes.rdoc:  Added documentation of syntax
	  for Modules and Classes.
	* doc/syntax/methods.rdoc:  Moved some text to the Modules and
	  Classes syntax document.

Sat Jan  5 08:38:27 2013  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/methods.rdoc:  Added return values and scope sections,
	  slightly modified from the original patch.  Fixes #227 from github by
	  Dave Brown.

Sat Jan  5 08:21:41 2013  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (rb_cloexec_fcntl_dupfd): improve #ifdef condition.
	* io.c (rb_maygvl_fd_fix_cloexec): ditto.

Sat Jan  5 07:54:59 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/commands/cleanup_command.rb:  Clean all possible gems
	  using multiple passes.  Fixes RubyGems bug #422.  Refactored for
	  maintainability.
	* test/rubygems/test_gem_commands_cleanup_command.rb:  Test for above.

Sat Jan  5 05:04:39 2013  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* gc.c (vm_xrealloc): add a few comment why we avoid realloc(ptr,0).

Fri Jan  4 20:17:06 2013  Yuki Yugui Sonoda  <yugui@yugui.jp>

	* Makefile.in (RBCONFIG): Moved from common.mk in order to use the
	  variable in Makefile.in.

	* win32/Makefile.sub (RBCONFIG): Ditto.

Fri Jan  4 19:45:50 2013  Yuki Yugui Sonoda  <yugui@yugui.jp>

	* common.mk (run, parse): Use BTESTRUBY instead of MINIRUBY to handle
	  cross-compiling cases, e.g. NativeClient.

Fri Jan  4 17:58:16 2013  Yuki Yugui Sonoda  <yugui@yugui.jp>

	* common.mk (yes-btest): btest depends on also $(arch)-fake.rb and
	  rbconfig.rb on building for NativeClient.

	* Makefile.in (fake): Avoid generating $(arch)-fake.rb unless cross
	  compiling.

	* configure.in (CROSS_COMPILING): New substitution.

Fri Jan  4 16:26:45 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/doctor.rb:  Process directories in order in case the
	  filesystem doesn't.  [ruby-trunk - Bug #7618]

	  Process specifications before other directories in case of bugs.
	* test/rubygems/test_gem_doctor.rb:  Test for above.

	* lib/rubygems.rb:  Updated version.

	* test/rubygems/test_require.rb:  Fixed double require of
	  benchmark.rb.  RubyGems bug #420.

	* test/rubygems/test_gem_commands_check_command.rb:  Fixed unused
	  variable warnings.
	* test/rubygems/test_gem_commands_query_command.rb:  ditto
	* test/rubygems/test_gem_installer.rb:  ditto

Fri Jan  4 15:05:25 2013  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/cross_reference.rb:  Fixed matching of C#=== or #===.  RDoc
	  bug #164
	* test/rdoc/test_rdoc_cross_reference.rb:  Test for above.

	* lib/rdoc/parser/changelog.rb:  Fixed parsing of dates.  RDoc bug #165
	* test/rdoc/test_rdoc_parser_changelog.rb:  Test for above.

	* lib/rdoc/parser.rb:  Fixed parsing multibyte files with incomplete
	  characters at byte 1024.  [ruby-trunk - Bug #6393]
	  Fixed handling of -E.  [ruby-trunk - Bug #6392]
	* test/rdoc/test_rdoc_options.rb:  Test for above.
	* test/rdoc/test_rdoc_parser.rb:  ditto.
	* test/rdoc/test_rdoc_parser_c.rb:  ditto.
	* test/rdoc/test_rdoc_parser_changelog.rb:  ditto.
	* test/rdoc/test_rdoc_parser_markdown.rb:  ditto.
	* test/rdoc/test_rdoc_parser_rd.rb:  ditto.
	* test/rdoc/test_rdoc_rdoc.rb:  ditto.

	* lib/rdoc/tom_doc.rb:  Fixed parsing of [] in TomDoc arguments list.
	  RDoc bug #167
	* test/rdoc/test_rdoc_tom_doc.rb:  Test for above.

	* lib/rdoc.rb:  Update version.

Fri Jan  4 11:51:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/forwardable.rb: Fix rdoc parameters for ::def_single_delegator.
	  Patch by Vladimir Andrijevik [Github Fixes #230]

Fri Jan  4 00:35:11 2013  Yuki Yugui Sonoda  <yugui@yugui.jp>

	Fix failures on btest for NativeClient.
	* bootstraptest/runner.rb (nacl?): New method to distinguish NaCl
	  cross build.

	* bootstraptest/test_io.rb: Skip unsupported operations.

	* bootstraptest/test_literal.rb: ditto.

Fri Jan  4 00:29:40 2013  Yuki Yugui Sonoda  <yugui@yugui.jp>

	* io.c (rb_cloexec_fcntl_dupfd): Fix failures in
	  bootstrap_test/test_io.rb.  NativeClient does not support F_DUPFD
	  but supports dup2(2).

Thu Jan  3 17:46:50 2013  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/element.rb (REXML::Elements#add): Remove too much
	  "elements" in document. Sorry...

Thu Jan  3 17:42:32 2013  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/element.rb (REXML::Elements#each): Add missing
	  "elements" in document. [ruby-talk:402713]
	  Reported by Wesley Rishel. Thanks!!!

Thu Jan  3 15:13:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* ext/psych/lib/psych.rb (Psych.load): Return value of
	  Psych::SyntaxError.message should be same as example.
	  Patch by Ippei Obayashi [ruby-core:51193] [Bug #7636]

Thu Jan  3 14:58:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* lib/forwardable.rb (SingleForwardable): Fix example in overview
	  Patch by Vladimir Andrijevik [Github Fixes #231]

Thu Jan  3 14:32:47 2013  Yuki Yugui Sonoda  <yugui@yugui.jp>

	* configure.in (OBJCOPY):  Fixes build error for NativeClient.
	  Avoid disabling OBJCOPY for NativeClient.

	* thread_pthread.c (rb_reserved_fd_p): USE_SLEEPY_TIMER_THREAD is
	  always defined.  Fixes compilation error for NativeClient.

Wed Jan 02 03:09:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* ext/zlib/zlib.c (Zlib::GzipReader): Fix typo by zed_0xff
	  [Fixes Github #229]

Wed Jan 02 02:29:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* hash.c (rb_hash_update): Revert documentation from r38672
	  See: https://github.com/ruby/ruby/pull/228#issuecomment-11791013

Wed Jan 02 02:16:00 2013  Zachary Scott  <zachary@zacharyscott.net>

	* hash.c (rb_hash_update): Documentation for Hash#merge and shallow
	  copies Patch by Yorick Peterse [Fixes Github #228]

Mon Dec 31 15:10:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* vm_backtrace.c: Add documentation for Kernel#caller_locations,
	  Kernel#caller, and Thread::Backtrace::Location

Mon Dec 31 13:05:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* test/ruby/test_backtrace.rb: Add test for r37957 [Feature #7434]

Sun Dec 30 23:33:36 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (simple_re_meta): escaped closing parenthesis has different
	  meaning.  [Bug #7610] [ruby-core:51088]

Sun Dec 30 12:09:47 2012  Charlie Somerville  <charlie@charliesomerville.com>

	* configure.in: use 4 argument form of AC_CHECK_HEADERS to force
	  autoconf to use compiler's result

Sun Dec 30 10:58:04 2012  Kazuki Tsujimoto  <kazuki@callcc.net>

	* test/ruby/test_keyword.rb: add a test for passing hash
	  as a last argument. [ruby-dev:46712] [Bug #7529]

Sun Dec 30 10:51:29 2012  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm_insnhelper.c: set keyword hash on Proc/block calls.
	  [ruby-core:51172] [Bug #7630]

	* test/ruby/test_keyword.rb: add tests for above.

Sat Dec 29 21:57:11 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/completion.rb: treat rightly completion for symbol on irb
	  [Bug #7632].

Sat Dec 29 21:51:30 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* ext/curses/curses.c (window_cury, window_curx, window_maxy,
	  window_maxx, window_begy, window_begx): use RB_UNUSED_VAR()
	  to suppress unused-but-set-variable warnings.

Sat Dec 29 16:45:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* iseq.c (RubyVM::InstructionSequence): rdoc formatting

Sat Dec 29 15:28:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* iseq.c (RubyVM::InstructionSequence):	Add rdoc for new iseq features
	  added from r38085, this includes ::of, #path, #absolute_path,
	  #label, #base_label, #first_lineno, and #inspect

Sat Dec 29 14:06:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* iseq.c (rb_iseq_line_trace_all, rb_iseq_line_trace_specify): Add
	  rdoc for experimental C level api of iseq, from r38076

Sat Dec 29 11:37:36 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* object.c (rb_obj_clone): attach clone to its singleton class during
	  cloning singleton class so that singleton_method_added will be called
	  on it.  based on the patch by shiba (satoshi shiba)[Bug #5283] in
	  [ruby-dev:44477].  [Bug #5283]

Sat Dec 29 10:10:39 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (crt_externs.h): use standard macro AC_CHECK_HEADERS.

Fri Dec 28 23:12:44 2012  Charlie Somerville  <charlie@charliesomerville.com>

	* configure.in: check for the whether crt_externs.h is present when compiling
	  for darwin (this header is missing in the iOS SDK)
	* eval_intern.h: check HAVE_CRT_EXTERNS_H before including crt_externs.h, if
	  not defined, include missing/crt_externs.h instead
	* hash.c: ditto
	* missing/setproctitle.c: ditto
	* missing/crt_externs.h: declare _NSGetEnviron() function and define environ
	  for iOS

Fri Dec 28 21:40:36 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/context.rb: IRB::Context#new: Check from JobManager
	  inside IRB namespace [Bug #7628]. Thanks rafaelfranca for bug
	  report and its patch.

Fri Dec 28 17:06:17 2012  Akinori MUSHA  <knu@iDaemons.org>

	* misc/ruby-electric.el (ruby-electric-curlies): Automatically
	  indent closing curly brackets when
	  ruby-electric-newline-before-closing-bracket is true.

Fri Dec 28 11:50:42 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_insnhelper.c (vm_yield_setup_block_args): pass single argument to
	  single optional parameter unchanged without splatting.  [Bug #7621]
	  [ruby-dev:46801]

Fri Dec 28 11:17:47 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* proc.c (method_eq): fix the documentation to refer to owner.
	  [ruby-core:51105] [Bug #7613]

	* test/ruby/test_method.rb (test_alias_onwer): new test to confirm
	  that `a == b' returns false if owners of a and b are different.

Fri Dec 28 07:07:43 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* def/id.def: use split(/^/) instead of String#lines to support
	  Ruby 1.8.5 as BASERUBY.

Thu Dec 27 21:56:56 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* variable.c (rb_mod_remove_const): fix segv caused by r38558.

Tue Dec 28 01:13:48 2012  James Edward Gray II  <james@graysoftinc.com>

	* lib/csv.rb: Added more Hash methods to CSV::Row.

Thu Dec 27 23:27:15 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/ruby-lex.rb: make lex_state to EXPR_END when next token
	  is an operator after SYMBEG [Bug #6378].

Thu Dec 27 21:30:21 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/ruby-lex.rb: allow to handle recursive heredocs on
	  irb[Bug #5648].

Thu Dec 27 20:45:29 2012  Masaki Matsushita  <glass.saga@gmail.com>

	* ext/stringio/stringio.c (strio_getline): fix not to raise TypeError
	  when limit is nil.
	  [Bug #7232] [ruby-core:48531]

	* test/stringio/test_stringio.rb: a test for above.

Thu Dec 27 21:08:23 2012  Charlie Somerville  <charlie@charliesomerville.com>

	* vm_core.h (VM_DEFINECLASS_TYPE): explicit cast to enum type to avoid 64->32
	  shorten warning

Thu Dec 27 20:11:29 2012  Masaki Matsushita  <glass.saga@gmail.com>

	* ext/stringio/stringio.c (strio_ungetc): raise IOError instead of RuntimeError
	  if the string is frozen.
	  [Bug #7231] [ruby-core:48530]

	* ext/stringio/stringio.c (strio_ungetbyte): ditto.

	* test/stringio/test_stringio.rb: a test for above.

Wed Dec 26 23:55:18 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/context.rb: fix IRB::Inspector#keys_with_inspector [Bug #7598]

Wed Dec 26 23:26:15 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/context.rb: IRB::Context#use_readline= has been obsolete
	  [Bug #6339].

Wed Dec 26 21:32:46 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/context.rb: make a correct prompt from
	  IRB.conf[:IRB_NAME] on irb [Bug #6338]. Patched by sho-h.

Wed Dec 26 21:09:19 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/ext/math-mode.rb: make not able to change math-mode
	  after irb starting [Bug #6302]. Patched by sho-h.

Wed Dec 26 12:52:36 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/init.rb: change default debug level for
	  irb[ruby-dev:46805], [Bug #6301].

Wed Dec 26 11:54:11 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: enable -fPIE when checking -pie for fixing
	  OpenBSD build error. Patch by George Koehler. Thank you!
	  [Bug #7606] [ruby-core:51082]

Wed Dec 26 07:31:24 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* string.c (rb_enc_cr_str_copy_for_substr): empty string is always
	  valid or 7bit.

	* string.c (rb_str_enumerate_lines, rb_str_chop): reduce duplicated
	  code.

	* string.c (rb_str_enumerate_chars): prevent shared copy from GC.

Wed Dec 26 01:31:16 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/init.rb, lib/irb/context.rb: fix conf.debug_level=
	  [Bug #6301] and fix irb command option: -- irb_debug_level for irb.

Wed Dec 26 00:59:18 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/ruby-lex.rb: improve RubyLex performance for large files
	  [Bug #5202]. Patch by ryanmelt.

Tue Dec 25 22:21:06 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/output-method.rb: raise right exception when
	  IRB::OutputMethod#print don't defined [Bug #6657].

Tue Dec 25 22:06:33 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c (rb_threadptr_exec_event_hooks_and_pop_frame):
	  pop a frame before JUMP_TAG() if exception occurred.
	  This change fix bug of Ruby 1.9.
	  [ruby-core:51128] [ruby-trunk - Bug #7624]

	* vm_core.h (EXEC_EVENT_HOOK_AND_POP_FRAME): add to use
	  `rb_threadptr_exec_event_hooks_and_pop_frame()'.

	* vm.c (vm_exec): use EXEC_EVENT_HOOK_AND_POP_FRAME() while
	  exception handling. While exception handling, if an exception
	  is raised in hooks, need to pop current frame and raise this
	  raised exception by hook.

	* test/ruby/test_settracefunc.rb: add a test.

Tue Dec 25 21:08:53 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/init.rb, lib/irb/lc/ja/error.rb, lib/irb/lc/error.rb:
	  raise exception when illegal RC_NAME_GENERATOR defined [Bug #6455].

Tue Dec 25 19:22:17 2012  Keiju Ishitsuka  <keiju@ishitsuka.com>

	* lib/irb/workspace.rb: define method to private on top-level irb
	  [Bug #5776]. Patch by davidbalbert.

Tue Dec 25 19:09:51 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* bignum.c, include/ruby/intern.h (rb_big_eql): exported.

	* thread.c (recursive_check): object_id maybe a Bignum, not Fixnum on
	  LLP64.  see also r38493 and r38548.
	  reported by Heesob Park at [ruby-core:51083] [Bug #7607], and patched
	  by shirosaki at [ruby-core:51095]

Tue Dec 25 18:53:35 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h, eval_intern.h (CHECK_STACK_OVERFLOW): move
	  CHECK_STACK_OVERFLOW() to vm_core.h and rename to
	  CHECK_VM_STACK_OVERFLOW().
	  This change is only move and rename.

	* tool/instruction.rb: catch up above changes.

	* vm.c, vm_insnhelper.c: ditto.

	* vm_insnhelper.c (vm_stackoverflow): add a function to unify
	  raising vm stackoverflow exception.

Tue Dec 25 16:16:54 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h (RUBY_VM_THREAD_VM_STACK_SIZE): change default
	  VM stack size (128 KB or  256 KB -> 512 KB or 1024 KB).
	  This re-sizing corrects smaller value introduced at r38478.
	  Newer value is same VM stack size of Ruby 1.9.
	  [ruby-dev:46797] [ruby-trunk - Bug #7603]

Tue Dec 25 13:38:12 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (compile_err_append, compile_warn_print, warn_print): use
	  rb_write_error_str() instead of writing to rb_stderr directly.

	* io.c (rb_write_error_str): a stopgap measure not to unblock GVL.
	  warning from require seems to still have race condition errors.

Tue Dec 25 00:59:29 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* node.h (NODE_OP_CDECL), compile.c (iseq_compile_each),
	  parse.y (stmt, arg): allow scoped constant op-assignment.
	  [ruby-core:40154] [Bug #5449]

Mon Dec 24 04:56:48 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/http/generic_request.rb (Net::HTTPGenericRequest):
	  set content-length to zero on empty post requests
	  by Gregory Ostermayr <gregory.ostermayr@gmail.com>
	  https://github.com/ruby/ruby/pull/201 fix GH-201

Sun Dec 23 19:09:16 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c: rename methods:
	    from Thread.async_interrupt_timing to Thread.handle_interrupt,
	    from Thread.async_interrupted? to Thread.pending_interrupt?.
	  Also rename option from `defer' to `never'.
	  [ruby-core:51074] [ruby-trunk - Feature #6762]

	* vm_core.c, thread.c: rename functions and data structure
	  `async_errinfo' to `pending_interrupt'.

	* thread.c: add global variables sym_immediate, sym_on_blocking and
	  sym_never.

	* cont.c, process.c, vm.c, signal.c: ditto.

	* lib/sync.rb, lib/thread.rb: catch up this renaming.

	* test/ruby/test_thread.rb: ditto.

Sun Dec 23 17:57:30 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/profiler.rb (Profiler__::PROFILE_PROC, print_profile): store
	  profile data per threads for concurrent-execution.
	  [ruby-core:22046] [Bug #1152]

	* lib/profiler.rb (Profiler__::Wrapper): support calling singleton
	  methods of an instance of BasicObject.

	* lib/profiler.rb (Profiler__::PROFILE_PROC): use TracePoint.

Sun Dec 23 16:13:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/erb.rb: typos for ERB::new link

Sun Dec 23 16:06:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/erb.rb: Document ERB::new trim_mode '-' for lines ending in -%>
	  [ruby-core:51084] [Bug #7608]

Sun Dec 23 15:25:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/irb/ruby-lex.rb: Add handling for %i and %I quoting to irb
	  Patch by flori [ruby-core:49550] [Bug #7392] [Github Issue #157]

Sun Dec 23 15:05:48 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_eval.c (rb_check_funcall_with_hook): rb_check_funcall with hook
	  which is called before calling method_missing or target method.

	* marshal.c (w_object, r_object0): use rb_check_funcall_with_hook
	  instead of respond_to? and call.

Sun Dec 23 14:52:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* re.c (rb_reg_eqq): doc: #=== is not a synonym for #=~, added example
	  [ruby-dev:46746] [Bug #7571]

Sun Dec 23 14:35:13 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread.c (BLOCKING_REGION): if fail_if_interrupted is false ignore
	  the result of blocking_region_begin(), since it always is true in
	  that case.  suppress "uninitialized" warnings.

Sun Dec 23 09:34:07 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/commands/check_command.rb:  Added --doctor and --dry-run
	  options to clean up after failed uninstallation.
	* test/rubygems/test_gem_commands_check_command.rb:  Test for above.

	* lib/rubygems/commands/push_command.rb:  Allow pushes from RubyGems
	  2.0.0.preview3

	* lib/rubygems/commands/update_command.rb:  Use Gem.ruby_version

	* lib/rubygems/dependency.rb:  Update style.

	* lib/rubygems/installer.rb:  Ensure installed gem specifications will
	  be useable.  Refactor.
	* test/rubygems/test_gem_installer.rb:  ditto.

	* lib/rubygems/validator.rb:  Fixed bug with unreadable files.

	* lib/rubygems.rb:  Fixed broken methods.
	* test/rubygems/test_gem.rb:  Test for above.

	* test/rubygems/test_gem_commands_push_command.rb:  Fixed overridden
	  Gem.latest_rubygems_version

Sun Dec 23 01:52:01 2012  Akinori MUSHA  <knu@iDaemons.org>

	* io.c (rb_io_lines, rb_io_bytes, rb_io_chars, rb_io_codepoints):
	  Deprecate IO#{lines,bytes,chars,codepoints} and those of ARGF.
	  [Feature #6670]

	* ext/stringio/stringio.c (strio_lines, strio_bytes, strio_chars)
	  (strio_codepoints): Deprecate
	  StringIO#{lines,bytes,chars,codepoints}. [Feature #6670]

	* ext/zlib/zlib.c (rb_gzreader_lines, rb_gzreader_bytes):
	  Deprecate Zlib::GzipReader#{lines,bytes}. [Feature #6670]

Sat Dec 23 01:35:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/optparse.rb: Documentation for OptionParser to remove 'shadowed
	  outer local variable' from example and make obvious ARGV with
	  non-option arguments.
	  Patch by Marcus Stollsteimer [ruby-core:47460] [Bug #6997]

Sat Dec 23 00:08:00 2012  Kenta Murata  <mrkn@mrkn.jp>

	* include/ruby/intern.h: add the prototype declaration of
	  rb_num_coerce_bit.

	* numeric.c (rb_num_coerce_bit): the new coerce function for bitwise
	  binary operation.

	* bignum.c (rb_big_and): use coerce to convert the argument, which isn't
	  a Fixnum nor a Bignum, to the corresponding Integer object so that
	  bitwise operations can support Integer-mimic objects.
	  [Bug #1792] [ruby-core:39491]

	* bignum.c (rb_big_or): ditto.

	* bignum.c (rb_big_xor): ditto.

	* numeric.c (bit_coerce): ditto.

	* numeric.c (fix_and): ditto.

	* numeric.c (fix_or): ditto.

	* numeric.c (fix_xor): ditto.

	* test/ruby/test_integer.rb: add tests for the above changes.

	* test/ruby/test_bignum.rb: ditto.

Sun Dec 23 00:04:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* internal.h (QUOTE, QUOTE_ID): quote unprintable chars in strings and
	  IDs. [Bug #7574] [ruby-dev:46749]

	* string.c (rb_str_quote_unprintable): ditto.

Sat Dec 22 23:59:18 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (rb_compile_error, rb_compile_warn, rb_compile_warning),
	  (rb_warn, rb_warning): support PRIsVALUE.

Sat Dec 22 22:04:58 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* cont.c (rb_fiber_start): unify conditions.

Sat Dec 22 21:47:55 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (rb_io_wait_writable): use rb_thread_check_ints() instead
	  of rb_thread_fd_writable().
	* io.c (rb_io_wait_readable): ditto.

Sat Dec 22 20:31:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* object.c (rb_mod_const_get): symbol cannot be nested constant name.

Sat Dec 22 19:26:35 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* object.c (rb_mod_const_get): check more strictly.  [ruby-dev:46748]
	  [Bug #7573]

Wed Dec 19 02:34:48 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* cont.c (rb_fiber_start): in case of jump with TAG_FATAL,
	  enqueue error into async_errinfo_queue, because you cannot call
	  TH_TAG_JUMP() in this function. [ruby-dev:45218]  [Bug #5993]

	* thread.c (rb_threadptr_execute_interrupts): now INT2FIX(TAG_FATAL)
	  can be popped from async_errinfo_queue.

	* vm.c (rb_vm_make_jump_tag_but_local_jump): revert r38441.
	  rb_vm_make_jump_tag_but_local_jump() shouldn't return exception
	  in case of state == TAG_FATAL.

	* test/ruby/test_fiber.rb (test_exit_in_fiber): fix a test to illuminate
	  Thread.exit should terminate current Thread.

Sat Dec 22 13:15:08 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* gc.c (obj_id_to_ref): add a macro to treat Bignum object id.
	  This follows the change r38493.

	* gc.c (id2ref): fix for working fine with Bignum object id on x64
	  Windows.
	* gc.c (wmap_finalize): ditto.

Sat Dec 22 11:30:21 2012  Masaki Matsushita  <glass.saga@gmail.com>

	* struct.c (make_struct): remove junk ID check to allow members who
	  have junk name like "foo\000".
	* test/ruby/test_struct.rb: Test for above.
	  [Bug #7575] [ruby-dev:46750]

Sat Dec 22 05:34:54 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http.rb:  Requests may be created with a URI which sets the
	  Host header.  Responses contain the requested URI for easier redirect
	  following.  [ruby-trunk - Feature #6482]
	* lib/net/http/generic_request.rb:  ditto.
	* lib/net/http/response.rb:  ditto.
	* NEWS (net/http):  Updated for above.
	* test/net/http/test_http.rb:  Tests for above.
	* test/net/http/test_http.rb:  ditto.
	* test/net/http/test_httpresponse.rb:  ditto.

Sat Dec 22 02:35:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/irb/slex.rb(#match): Typo, should be D_DETAIL
	  [ruby-core:51071] [Bug#7600]

Sat Dec 22 02:29:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/irb/input-method.rb, lib/irb.rb: Typo in
	  InputMethod#readable_atfer_eof? to #readable_after_eof?
	  [ruby-core:51069] [Bug #7599]

Sat Dec 22 02:19:38 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* vm_dump.c (rb_vm_bugreport): revert r38533.
	* addr2line.c (fill_lines): add ELF sanity check.
	  [Bug #7597] [ruby-dev:46786]

Sat Dec 22 02:05:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/irb/inspector.rb, lib/irb/context.rb: Move IRB::INSPECTORS and
	  class methods to IRB::Inspector [ruby-core:51067][Bug #7598]

Sat Dec 22 00:28:46 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* object.c (rb_obj_hash): shouldn't assume object_id can be long.
	  based on a patch by Heesob Park at [ruby-core:51060].
	  cf. [Backport #7454]

Fri Dec 21 23:15:25 2012  Kouhei Sutou  <kou@cozmixng.org>

	* ext/fiddle/lib/fiddle/struct.rb (Fiddle::CStructEntity#set_ctypes):
	  CPtr -> Pointer.
	* test/fiddle/test_c_struct_entry.rb
	  (Fiddle::TestCStructEntity#test_aref_pointer):
	  Added the test for the above.

Fri Dec 21 23:12:05 2012  Kouhei Sutou  <kou@cozmixng.org>

	* ext/fiddle/lib/fiddle/struct.rb (Fiddle::CStructEntity#set_ctypes):
	  CPtr -> Pointer.
	* test/fiddle/test_c_struct_entry.rb
	  (Fiddle::TestCStructEntity#test_aref_pointer_array):
	  Added the test for the above.

Fri Dec 21 22:43:36 2012  Kouhei Sutou  <kou@cozmixng.org>

	* ext/fiddle/lib/fiddle/import.rb (Fiddle::Importer#sizeof):
	  CPtr -> Pointer.
	* test/fiddle/test_import.rb (Fiddle::TestImport#test_sizeof):
	  Added the test for the above.

Fri Dec 21 22:34:17 2012  Koichi Sasada  <ko1@atdot.net>

	* test/ruby/test_iseq.rb: disable a test which checks features
	  removed at r38532.

Fri Dec 21 22:02:00 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/{dir.h,win32.c} (rb_w32_readdir): removed old rb_w32_readdir()
	  and renamed from rb_w32_readdir_with_enc().
	  [ruby-core:24864] [Feature #1927]

	* dir.c (READDIR): follow above change.

Fri Dec 21 21:12:54 2012  Masaya Tarui  <tarui@ruby-lang.org>

	* vm_dump.c (rb_vm_bugreport): commentout addr2line call temporarily
	  in order to avoid segv. anyone can fix addr2line?
	  [Bug #7597] [ruby-dev:46786]

Fri Dec 21 20:38:28 2012  Koichi Sasada  <ko1@atdot.net>

	* iseq.c (Init_ISeq): remove definition of the following methods:
	  ISeq#line_trace_all and ISeq#line_trace_specify because they are
	  half baked.
	  C APIs are remained as experimental. These functions will be
	  renamed, removed their parameters may be changed.
	  You can use these methods by C exts. Please give us your comments.

Fri Dec 21 20:21:04 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c (tracepoint_new): add code to support specified thread.
	  But not tested and this feature is not supported officially.

Fri Dec 21 19:37:15 2012  Koichi Sasada  <ko1@atdot.net>

	* ruby.c (process_options): need to acquire env from TOPLEVEL_BINDING
	  each time.
	  `bind->env' may update after `eval()'.
	   [Bug #7536]

Fri Dec 21 18:46:50 2012  Koichi Sasada  <ko1@atdot.net>

	* include/ruby/debug.h, vm_core.h: define rb_trace_arg_t at
	  include/ruby/debug.h (move from vm_core.h).

Fri Dec 21 17:48:15 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h, vm_trace.c: fix multi-threading bug for tracing.
	  Move `trace_arg' from rb_tp_t::trace_arg to rb_thread_t::trace_arg.
	  `trace_arg' may changed by multiple threads.
	  rb_thread_t::trace_arg can represent rb_thread_t::trace_running
	  (null or non-null) and rb_thread_t::trace_running is removed.
	  After that, `rb_tp_t' is not needed to check tracing or not
	  (A running thread knows tracing or not). This is why I remove
	  tp_attr_check_active() and make new function get_trace_arg().

	  And this modification disable to work the following code:
	    TracePoint.trace{|tp|
	      Thread.new{p tp.event} # access `tp' from other threads.
	    }
	  I believe nobody mix threads at trace procedure.
	  This is current limitation.
	  [Bug #7590]

	* cont.c (fiber_switch, rb_cont_call): use rb_thread_t::trace_arg
	  instead of rb_thread_t::trace_running.

	* test/ruby/test_settracefunc.rb: add a multi-threading test.

Fri Dec 21 16:38:08 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* template/id.h.tmpl (ID2ATTRSET): compile time constant macro for
	  ID_ATTRSET.

	* defs/id.def (KeywordError): check duplication.

	* defs/id.def: support for other scope IDs,
	  ID_{INSTANCE,GLOBAL,CONST,CLASS}.

Fri Dec 21 14:45:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/irb.rb, lib/irb/*: Documentation for IRB

Fri Dec 21 11:31:02 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rake/*:  Updated to rake 0.9.6
	* doc/rake/*:  ditto
	* test/rake/*:  ditto

Fri Dec 21 08:56:34 2012  Masaya Tarui  <tarui@ruby-lang.org>

	* vm_trace.c (rb_suppress_tracing): remove unused variable 'vm_tracing'

Fri Dec 21 01:01:45 2012  Masaya Tarui  <tarui@ruby-lang.org>

	* lib/irb/completion.rb (CompletionProc): support completion of
	  instance variables. [ruby-dev:46710] [Bug #7520]

Thu Dec 20 20:58:25 2012  Masaya Tarui  <tarui@ruby-lang.org>

	* vm_trace.c (rb_suppress_tracing): bugfix for vm->trace_running
	  counter. And if tracing is already true, vm_trace_running ops is
	  skipped to control overflow.

Thu Dec 20 18:29:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/ruby.h (RTEST, NIL_P): make bare expressions without
	  outermost parentheses.

Thu Dec 20 17:29:00 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* NEWS: fix the description for Refinements.

Thu Dec 20 16:53:59 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_core.h (rb_vm_defineclass_type_t),
	  compile.c (iseq_compile_each), insns.def (defineclass): change the
	  meaning of the third operand of defineclass as follows:
	    lower 3bits: the type of the defineclass
	                   0 = class, 1 = singleton class, 2 = module
	    4th bit: a flag represents whether the defineclass is scoped
	               0 = not scoped (e.g., class Foo)
		       1 = scoped (e.g., class Bar::Baz)
	    5th bit: a flag represents whether the superclass is specified
	               0 = not specified (e.g., class Foo)
	               1 = specified (e.g., class Bar < Foo)
	  If the superclass is specified and is not a class, a TypeError
	  should be raised.  [ruby-dev:46747] [Bug #7572]

	* test/ruby/test_class.rb: related test.

Thu Dec 20 16:52:37 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* NEWS: announce AEAD encryption support in the OpenSSL extension.

Thu Dec 20 16:40:13 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* gc.c (nonspecial_obj_id): VALUE is not compatible with Fixnum on
	  LLP64 platform, such as 64bit Windows.
	  reported by Heesob Park at [ruby-core:50255] [Bug #7454], and the
	  fix is suggested by akr.

Thu Dec 20 16:39:04 2012  Martin Bosslet  <Martin.Bosslet@gmail.com>

	* ext/openssl/ossl_cipher.c: fix errors for installations that do not
	  feature Authenticated Encryption.
	* ext/openssl/extconf.rb: detect presence of EVP_CTRL_GCM_GET_TAG to
	  determine whether Authenticated Encryption can be used.
	  [Feature #6980] [ruby-core:47426]

Thu Dec 20 15:55:46 2012  Martin Bosslet  <Martin.Bosslet@gmail.com>

	* ext/openssl/ossl.c: do not use FIPS_mode_set if not available.
	* test/openssl/utils.rb: revise comment about setting FIPS mode to
	  false.
	* test/openssl/test_fips.rb: remove tests that cause errors on
	  ruby-ci.
	  [Feature #6946] [ruby-core:47345]

Thu Dec 20 15:22:59 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/parser/ruby.rb:  Ignore methods defined on constants to
	  prevent modules with the names of constants from appearing in the
	  documentation.
	* test/rdoc/test_rdoc_parser_ruby.rb:  Test for the above.

Thu Dec 20 15:00:33 2012  Martin Bosslet  <Martin.Bosslet@gmail.com>

	* ext/openssl/ossl_cipher.c: add support for Authenticated Encryption
	  with Associated Data (AEAD) for OpenSSL versions that support the
	  GCM encryption mode. It's the only mode supported for now by OpenSSL
	  itself. Add Cipher#authenticated? to detect whether a chosen mode
	  does support Authenticated Encryption.
	* test/openssl/test_cipher.rb: add tests for Authenticated Encryption.
	  [Feature #6980] [ruby-core:47426] Thank you, Stephen Touset for
	  providing a patch!

Thu Dec 20 12:56:53 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/markup/to_html.rb (class RDoc):  Added current heading and
	  top links to headings.
	* lib/rdoc/generator/template/darkfish/rdoc.css:  ditto
	* test/rdoc/test_rdoc_generator_markup.rb:  Test for above
	* test/rdoc/test_rdoc_markup_to_html.rb:  ditto

	* test/rdoc/test_rdoc_comment.rb:  Removed trailing whitespace.

Thu Dec 20 11:05:26 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/envutil.rb (assert_valid_syntax): move from
	  test_syntax.rb.

	* test/ruby/envutil.rb (assert_normal_exit): validate syntax before
	  running because this assertion passes even if the code fails by
	  SyntaxError.

Thu Dec 20 10:29:58 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_pkey_dh.rb: revert special treatment of
	  FIPS-capable installations since FIPS mode is now disabled for the
	  tests.

Thu Dec 20 10:23:12 2012  Martin Bosslet  <Martin.Bosslet@gmail.com>

	* ext/openssl/ossl.c: add OpenSSL.fips_mode= to allow enabling FIPS
	  mode manually.
	* test/openssl/utils.rb: turn off FIPS mode for tests. This prevents
	  OpenSSL installations with FIPS mode enabled by default from raising
	  FIPS-related errors during the tests.
	* test/openssl/test_fips.rb: add tests for FIPS-capable OpenSSL
	  installations.
	  [Feature #6946] [ruby-core:47345]

Thu Dec 20 06:59:52 2012  Koichi Sasada  <ko1@atdot.net>

	* vm.c: support variable VM/Machine stack sizes.
	  Specified by the following environment variables:
	    - RUBY_THREAD_VM_STACK_SIZE: vm stack size used at thread creation.
	      default: 128KB (32bit CPU) or 256KB (64bit CPU).
	    - RUBY_THREAD_MACHINE_STACK_SIZE: machine stack size used at thread
	      creation. default: 512KB or 1024KB.
	    - RUBY_FIBER_VM_STACK_SIZE: vm stack size used at fiber creation.
	      default: 64KB or 128KB.
	    - RUBY_FIBER_MACHINE_STACK_SIZE: machine stack size used at fiber
	      creation. default: 256KB or 256KB.
	  This values are specified at launched timing. You can not change
	  these values at running time.
	  Environ variables are only *hints* because:
	    - They are aligned to 4KB.
	    - They have minimum values (depend on OSs).
	    - Machine stack settings are ignored by some OSs.
	  Default values especially fiber stack sizes are increased.
	  This change affect Fiber's behavior:
	    (1) You can run more complex program on a Fiber.
	    (2) You can not make many (thousands) Fibers because of
	        lack of address space (on 32bit CPU).
	  If (2) bothers you,
	    (a) Use 64bit CPU with big memory, or
	    (b) Specify RUBY_FIBER_(VM|MACHINE)_STACK_SIZE correctly.
	  You need to choose correct stack size carefully. These values
	  are completely rely on systems (OS/compiler and so on).
	  [Feature #4614], [Bug #7212]

	* vm_core.h (rb_vm_t::default_params): add to record above settings.

	* vm.c (RubyVM::DEFAULT_PARAMS): add new constant to see
	  above setting.

	* thread_pthread.c: support RUBY_THREAD_MACHINE_STACK_SIZE.

	* cont.c: support RUBY_FIBER_(VM|MACHINE)_STACK_SIZE.

	* test/ruby/test_fiber.rb: add tests for above.

	* test/ruby/test_thread.rb: ditto.

Thu Dec 20 06:25:44 2012  Koichi Sasada  <ko1@atdot.net>

	* test/ruby/test_fiber.rb: remove a strange single quote character.
	  With this character, this script exits by SyntaxError.

Thu Dec 20 01:03:00 2012  Zachary Scott  <zachary@zacharyscott>

	* ext/.document: Add missing ext modules to .document
	  Patch by Ryunosuke SATO [Fixes Github #224]

Wed Dec 19 23:52:16 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ruby.c (load_file_internal): use original C string as the filename
	  for parser.
	  reported by whiteleaf at [ruby-list:49085] [ruby-dev:46738]
	  [Bug #7562]

Wed Dec 19 23:36:12 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* marshal.c (marshal_dump, marshal_load): fix SEGV during make rdoc
	  and test failure in TestMarshal#test_gc and test_context_switch
	  on SPARC Solaris 10 compiled with Oracle Solaris Studio 12.3.
	  [Bug #7591] [ruby-dev:46772]

Wed Dec 19 19:34:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* object.c (rb_mod_const_get): nul byte is invalid as constant name.

Wed Dec 19 17:54:18 2012  Masaya Tarui  <tarui@ruby-lang.org>

	* vm_trace.c (rb_threadptr_exec_event_hooks): get rid of race
	  condition. [Bug #7589] [ruby-dev:46763]

Wed Dec 19 16:30:28 2012  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/literals.rdoc:  Added 0d decimal format.  Thanks Nobu!

Wed Dec 19 16:19:36 2012  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/methods.rdoc:  Fixed typo.  Thanks to Josh Susser.

Wed Dec 19 16:18:22 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/commands/query_command.rb:  Refactored to improve
	  maintainability.
	* test/rubygems/test_gem_commands_query_command.rb:  Note default gems
	  in gem list details.

	* lib/rubygems/uninstaller.rb:  Detect all gems for uninstallation.
	  This allows duplicate installs of default gems to be removed.
	* lib/rubygems/specification.rb:  Allow use of ::each_spec.
	* lib/rubygems/test_case.rb:  Added install_default_gems.
	* test/rubygems/test_gem_commands_uninstall_command.rb:  Moved test
	  down to the uninstaller tests.
	* test/rubygems/test_gem_uninstaller.rb:  Test for uninstallation of
	  default gems and duplicate default gems.

Wed Dec 19 15:23:50 2012  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/methods.rdoc:  Add () around keyword arguments example for
	  consistency.  Thanks to Josh Susser.

Wed Dec 19 01:51:24 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* vm.c (rb_vm_jump_tag_but_local_jump): remove unnecessary 2nd
	  argument.

	* load.c (rb_load_internal): ditto.

	* eval_intern.h (rb_vm_jump_tag_but_local_jump): ditto.

Tue Dec 18 18:57:58 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (rb_io_wait_writable): don't use rb_thread_wait_fd()
	  because it is for waiting until io readable.

	* io.c (rb_io_wait_writable): always use rb_thread_fd_writable()
	  instead of bare rb_wait_for_single_fd(). we shouldn't ignore
	  return value.
	* io.c (rb_io_wait_readable): ditto. always use rb_thread_wait_fd().

Tue Dec 18 18:55:33 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_thread_wait_fd_rw): fix infinite loop bug.
	  rb_wait_for_single_fd() never return positive number.

Tue Dec 18 17:24:40 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/encoding.rb:  Do not remove #! line from document when
	  setting encoding.  This allows ruby executables to be parsed as ruby
	  files.
	* test/rdoc/test_rdoc_encoding.rb:  Test for above.

	* lib/rdoc/parser.rb:  Set the parser file name of ruby executables
	  correctly.
	* test/rdoc/test_rdoc_parser.rb:  Test for above.

Tue Dec 18 16:46:15 2012  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/literals.rdoc:  Used simplified heredoc example that
	  doesn't include method definition.  Added heredoc with backticks.

Tue Dec 18 16:38:51 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/store.rb:  Work around RDoc stores from older versions of
	  RDoc.
	* test/rdoc/test_rdoc_store.rb:  Test for above.

Tue Dec 18 16:31:20 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/ruby_lex.rb:  Return a TkHEREDOC instead of a TkSTRING when
	  the heredoc identifier is followed by a line-end.  This allows proper
	  display of some HEREDOCs in source view.
	* lib/rdoc/ruby_token.rb:  Added TkHEREDOC
	* test/rdoc/test_rdoc_ruby_lex.rb:  Test for above.

Tue Dec 18 09:45:14 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* vm.c (rb_vm_make_jump_tag_but_local_jump): take care of the case
	  TAG_JUMP() with TAG_FATAL (ex. rb_fatal()). [ruby-core:50917]
	  [Bug #7570]

	* test/ruby/test_fiber.rb (test_fatal_in_fiber): add a test for above.

	* ext/-test-/fatal/extconf.rb, ext/-test-/fatal/rb_fatal.c: ditto.

Tue Dec 18 13:17:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* vm_trace.c (tracepoint_attr_defined_class): Clean up rdoc for
	  TracePoint#defined_class

Tue Dec 18 12:15:59 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/specification.rb:  Fixed ruby output of requirements
	  with multiple version specifiers.
	* test/rubygems/test_gem_ext_cmake_builder.rb:  Only look for specific
	  lines in cmake output.  Should fix [ruby-trunk - Bug #7579]

Tue Dec 18 11:45:26 2012  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/literals.rdoc:  Added 0o octal integers.

Tue Dec 18 12:28:52 2012  Martin Bosslet  <Martin.Bosslet@gmail.com>

	* test/openssl/test_ssl.rb: Use :TLSv1_2_client explicitly in
	  test_tls_v1_2 to prevent upstream bug.
	  [Bug #7197] [ruby-dev:46240]

Tue Dec 18 11:52:34 2012  Martin Bosslet  <Martin.Bosslet@gmail.com>

	* ext/openssl/lib/ssl.rb: Enable insertion of empty fragments as a
	  countermeasure for the BEAST attack by default. The default options
	  of OpenSSL::SSL:SSLContext are now:
	  OpenSSL::SSL::OP_ALL & ~OpenSSL::SSL::OP_DONT_INSERT_EMPTY_FRAGMENTS
	  [Bug #5353] [ruby-core:39673]

	* test/openssl/test_ssl.rb: Adapt tests to new SSLContext default.

	* NEWS: Announce the new default.

Tue Dec 18 06:36:12 2012  Koichi Sasada  <ko1@atdot.net>

	* method.h: remove `VM_METHOD_TYPE_CFUNC_FRAMELESS' method type.
	  This method type is for optimized CFUNC such as Fixnum#+ and so on.
	  This feature is half-baked and no way to use them.
	  [Background]
	  Now, VM has opt_plus instructions to optimize `+' methods for
	  some Classes (such as Fixnum, Float (flonum)). We call this
	  type of instructions as `specialized instructions'.
	  This simple technique improve simple program dramatically.
	  However, we can make specialized instructions for only several
	  types (classes) and selectors (method names) because a large
	  instruction will be slow. In other words, this technique has no
	  extensibility.
	  To overcome this problem, VM_METHOD_TYPE_CFUNC_FRAMELESS was
	  introduced (r37198). This type is a variant of CFUNC, but called
	  their functions directly without building a method frame.
	  Any CFUNC method can be defined as frameless methods if a method
	  is not needed to make method frame. Frameless methods are faster
	  as specialized instructions (a bit slower, but no need to care).
	  No problem described at
	  http://charlie.bz/blog/why-do-singleton-methods-make-ruby-slow
	  because this technique doesn't see class, but see method body
	  itself. Alias is also no problem.
	  [Problem]
	  However, we can't set frameless method type for polymorphic methods
	  such as Array#[]. Necessity for method frame depends on which
	  parameter type. For example, Fixnum#+ needs method frame if
	  coerce is needed. Current VM_METHOD_TYPE_CFUNC_FRAMELESS is not
	  flexible and need more tuning to introduce it.
	  Expected behavior of frameless method type may be:
	    result = optimized_cfunc(params); /* call optimized cfunc */
	    if (result == Qundef) { result = normal_cfunc(); }
	  This is why I say this feature is half-baked.
	  We need to learn primitive method in Smalltalk more.
	  (I heard this name at RubyConf Taiwan this month. Thanks!)
	  [Conclusion]
	  I remove this feature and consider again.
	  This feature goes to next minor (2.1?).
	  Nobody may use this feature and there is no compatibility issue.

	* proc.c (rb_method_entry_arity): ditto.

	* vm_eval.c, vm_insnhelper.c, vm_method.c: ditto.

Tue Dec 18 04:58:22 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c (fill_id_and_klass): TracePoint#defined_class returns
	  singleton class. `set_trace_func' passed attached class (which is
	  attached/modified by singleton class) by 6th block parameter if it
	  is singleton class. Previous behavior follows this spec.
	  However, this method named `defined_class' should return singleton
	  class directly because singleton methods are defined in singleton
	  class. There are no compatible issue because TracePoint is introduced
	  after 2.0.
	  But compatibility with `set_trace_func' is broken. This means that
	  you can not replace all `set_trace_func' code with TracePoint
	  without consideration of this behavior.
	  [Bug #7554]

	* test/ruby/test_settracefunc.rb: change a test to catch up
	  an above change.

Tue Dec 18 03:03:10 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/to_ruby.rb: speed up node mapping so
	  common cases are evaluated first.  Thanks Kevin Menard!

Tue Dec 18 02:35:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/optparse.rb: Remove 'developer documentation' section from rdoc
	  Patch by Marcus Stollsteimer [ruby-core:50526][Bug #7504]

Tue Dec 18 02:35:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/matrix.rb (#lup): typo in example [ruby-core:50946][Bug #7582]

Mon Dec 17 18:03:34 2012  Charlie Somerville  <charlie@charliesomerville.com>

	* class.c (rewrite_cref_stack, clone_method): rewrite a method's cref
	  stack when cloning into a new class to allow lexical const lookup to
	  work as expected [ruby-core:47834] [Bug #7107]
	* test/ruby/test_class.rb (class TestClass): related test

Mon Dec 17 13:56:55 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (io_flush_buffer_sync2): avoid to return 0. because
	  rb_thread_call_without_gvl2 uses 0 internally.
	* io.c (io_flush_buffer_async2): adapt the above.

Mon Dec 17 12:05:32 2012  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax/methods.rdoc:  Added a description of singleton methods.

Mon Dec 17 11:35:57 2012  Eric Hodel  <drbrain@segment7.net>

	* doc/.document:  Added doc/syntax

Mon Dec 17 11:25:32 2012  Eric Hodel  <drbrain@segment7.net>

	* doc/syntax.rdoc:  Added syntax guide table of contents
	* doc/syntax/exceptions.rdoc:  Syntax guide for exceptions
	* doc/syntax/literals.rdoc:  Syntax guide for literals
	* doc/syntax/methods.rdoc:  Syntax guide for methods

Mon Dec 17 07:59:40 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems.rb:  Updated VERSION

	* test/rubygems/test_gem_installer.rb:  Fixed ambiguous first argument
	  warning.

	* test/rubygems/test_gem_rdoc.rb:  RDoc generation depends on installed
	  version of RDoc.

Sun Dec 16 02:04:41 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* signal.c (rb_sigaltstack_size): cast sysconf() return value
	  explicitly. Fix compile error on Mac OS X.

Sun Dec 16 00:39:43 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* cont.c (rb_fiber_start): don't enqueue Qnil to async_errinfo_queue.
	  rb_vm_make_jump_tag_but_local_jump() could return Qnil (ex. when
	  finished by Thread.exit). [ruby-dev:45218] [Bug #5993]

	* test/ruby/test_fiber.rb (test_exit_in_fiber): add test for it.

Sat Dec 15 23:56:51 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* ext/fiddle/pointer.c (rb_fiddle_ptr2cptr): fix error message
	  forgotten to be changed from DL to Fiddle.

Sat Dec 15 23:14:32 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* signal.c (default_handler): remove rb_register_sigaltstack()
	  call. sigaltstack was already registered when creating threads.

Sat Dec 15 23:08:56 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* signal.c (rb_sigaltstack_size): new. calculate stack size for
	  sigsegv handler. enlarge value when x86 or x86_64 on Linux.
	  Linux has very small MINSIGSTKSZ size (2048 bytes) and
	  our sigsegv routine need 5KiB at least. [Bug #7141]
	* internal.h: add declaration of rb_sigaltstack_size().
	* vm_core.h: remove ALT_STACK_SIZE definition.

	* signal.c (rb_register_sigaltstack): replace ALT_STACK_SIZE with
	  rb_sigaltstack_size();
	* gc.c (Init_heap): ditto.
	* vm.c (th_init): ditto.

Sat Dec 15 18:24:21 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* rational.c (f_round_common): should check overflow.

Sat Dec 15 18:00:00 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* rational.c (float_rationalize): reduced.

Sat Dec 15 14:18:44 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (finish_writeconv): uses rb_write_internal2 if
	  fptr->write_lock have.

Sat Dec 15 13:57:08 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_mutex_owned_p): remove static.
	* io.c (io_flush_buffer): don't hold mutex if already have.
	  Now recursive lock may occur when following scenario.
	  fptr_finalize -> finish_writeconv_sync -> finish_writeconv
	  -> io_fflush.

Sat Dec 15 13:38:30 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (io_flush_buffer): uses io_flush_buffer_async2 instead of
	  io_flush_buffer_async.
	* io.c (io_flush_buffer_async2): new helper function for
	  io_flush_buffer. It uses rb_thread_call_without_gvl2() instead
	  of rb_thread_io_blocking_region.
	* io.c (io_flush_buffer_sync2): new helper function for
	  io_flush_buffer_async2.

Sat Dec 15 13:04:26 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (internal_write_func2): new helper function for rb_write_internal2().
	* io.c (rb_write_internal2): new function. it uses
	  rb_thread_call_without_gvl2() instead of rb_thread_io_blocking_region().
	* io.c (rb_binwrite_string): uses rb_write_internal2 instead of
	  rb_write_internal. [Bug #7134]

Sat Dec 15 12:55:29 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (rb_io_wait_writable): add to call rb_thread_wait_fd()
	  likes rb_io_wait_readable.

Sat Dec 15 11:54:50 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (rb_io_wait_writable): don't call rb_thread_fd_writable()
	  when EINTR. EINTR mean signal interrupt was happen. We don't
	  need any wait.

Sat Dec 15 11:53:36 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_thread_wait_fd_rw): remove silly rb_thread_alone()
	  check.

Sat Dec 15 10:22:38 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread.c (rb_thread_polling): revert but deprecate.

	* include/ruby/intern.h (rb_thread_polling): deprecate.

Sat Dec 15 08:37:01 2012  Masaya Tarui  <tarui@ruby-lang.org>

	* test/rubygems/test_gem_ext_cmake_builder.rb (test_self_build):
	  get rid of false positive.

Sat Dec 15 08:05:56 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_thread.rb (test_uninitialized, test_backtrace,
	test_thread_timer_and_interrupt, test_thread_join_in_trap,
	test_thread_join_current, test_thread_join_main_thread,
	test_main_thread_status_at_exit, test_thread_status_in_trap,
	test_thread_status_raise_after_kill, test_mutex_owned,
	test_mutex_owned2): move these tests from TestThreadGroup class
	  to TestThread because they are not thread group tests.

	* test/ruby/test_thread.rb (test_thread_status_raise_after_kill):
	  add t.join.

	* test/ruby/test_threadgroup.rb: new file. moved ThreadGroup test
	  from test_thread.rb.

Sat Dec 15 08:02:11 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_thread.rb (TestThread::Thread::new.): remove
	  th.abort_on_exception change. Test template shouldn't change
	  global flag. It prevent to test a normal case.

Sat Dec 15 06:15:14 2012  Eric Hodel  <drbrain@segment7.net>

	* configure.in (HAVE_GCC_ATOMIC_BUILTINS):  Set -march=i486 to enable
	  __sync_val_compare_and_swap.  Patch by KOSAKI Motohiro.
	  [ruby-trunk - Bug #7485]

Sat Dec 15 03:42:34 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* ext/.document: add fiddle/pointer.c, fiddle/handle.c, and
	  fiddle/win32/lib as documentation.

Sat Dec 15 03:06:40 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* file.c (rb_file_flock): use rb_thread_wait_for() instead of
	  rb_thread_polling(). When getting EAGAIN, we need to wait a
	  while even if no multi threading.
	* thread.c (sleep_for_polling, rb_thread_polling) removed.

Sat Dec 15 00:03:31 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* signal.c (rb_f_kill): remove rb_thread_polling() because this
	  has no good effect and makes meaningless 100ms delay. 1)
	  when sending signal to another process, waiting has just silly.
	  2) when sending signal to current process, 100ms is often not
	  enough time to wait. It depend on kernel behavior. And,
	  rb_thread_polling() doesn't make sense anyway. When rb_thread_alone()
	  is true, it doesn't wait at all and Process.kill() users don't
	  expect threading changes Process.kill() behavior. [Bug #7560]

Fri Dec 14 17:10:57 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (parser_params): parser_tokline to track the line number at
	  which token started.  [ruby-dev:46737] [Bug #7559]

	* parse.y (fcall): operation with starting line number.

	* parse.y (command, primary, method_call): point method name line.

	* parse.y (gettable_gen): return token line for __LINE__.

Fri Dec 14 16:56:59 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_insnhelper.c (vm_call_super_method): remove volatile introduced
	  in r38365.

	* vm_insnhelper.c (vm_call_method): use __forceinline to prevent
	  VC++ to make vm_call_general and vm_call_super_method as the same
	  method.  Thanks, Heesob Park.  [Bug #7556] [ruby-core:50867]

Fri Dec 14 14:59:14 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/envutil.rb (Test::Unit::Assertions#assert_separately):
	  take file and line by using caller_locations if not given.

	* test/ruby/envutil.rb (Test::Unit::Assertions#assert_separately):
	  count assertions in separated tests.

Fri Dec 14 14:16:42 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/rubygems_hook.rb:  Fixed generation of documentation.
	  Disabled rdoc generation by default to match RubyGems defaults.
	  Reduced diff with RubyGems::RDoc.
	* test/rdoc/test_rdoc_rubygems_hook.rb:  Tests for the above.
	* test/rubygems/test_gem_rdoc.rb:  ditto.

	* lib/rdoc/store.rb:  Removed useless variable assignment

Fri Dec 14 13:58:40 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/commands/rdoc_command.rb:  When overwriting
	  documentation, remove existing documentation first.

	* lib/rubygems/server.rb:  Fixed documentation links.
	* test/rubygems/test_gem_server.rb:  Test for the above.

	* lib/rubygems/rdoc.rb:  Reduced diff with RDoc::RubyGemsHook
	* test/rubygems/test_gem_rdoc.rb:  ditto

Fri Dec 14 04:08:05 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* test/ruby/envutil.rb (Test::Unit::Assertions#assert_separately):
	  added to execute given test source on separate process,
	  catch its resulted exception and raise it on main process.

Fri Dec 14 07:43:44 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/yaml_tree.rb: quote strings that begin
	  with non-word characters.  Thanks Alex Tambellini!
	* test/psych/test_yaml.rb: appropriate test case

Thu Dec 13 23:14:17 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_insnhelper.c (vm_call_super_method): a workaround for the
	  failure of TestRefinement#test_refine_recursion in Windows.
	  See [ruby-core:50871] for details.

Thu Dec 13 23:10:52  Charlie Somerville  <charlie@charliesomerville.com>

	* object.c (Init_Object): use rb_mod_init_copy for Class#initialize_copy
	* class.c (rb_class_init_copy): rename to class_init_copy_check, performs type
	  checks on arguments to prevent reinitialization of initialized class
	  [ruby-core:50869] [Bug #7557]
	* class.c (rb_mod_init_copy): use class_init_copy_check if receiver is T_CLASS
	* test/ruby/test_class.rb (class TestClass): related test

Thu Dec 13 16:53:10 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/class_module.rb:  Fixed duplicate comments for classes and
	  modules from C.
	* test/rdoc/test_rdoc_class_module.rb:  Test for the above.

	* lib/rdoc/parser/c.rb:  Reload C variable names to allow proper
	  updates of an ri store for C files.
	* lib/rdoc/rdoc.rb:  ditto.
	* lib/rdoc/store.rb:  ditto.
	* test/rdoc/test_rdoc_parser_c.rb:  Test for the above.
	* test/rdoc/test_rdoc_store.rb:  ditto.

Thu Dec 13 14:20:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/irb*: merge doc from doc/irb/ird.rd and improve overall
	  documentation of IRB
	* doc/irb/irb.rd: remove stale documentation

Thu Dec 13 14:10:00 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* marshal.c (r_entry0): don't taint classes and modules because
	  Marshal.load just returns the dumped classes and modules.
	  [Bug #7325] [ruby-core:49198]

	* test/ruby/test_marshal.rb: related test.

Thu Dec 13 14:10:13 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_require.rb (TestRequire#test_loaded_features_encoding):
	  need to check compatibility, not equality of encodings.

Thu Dec 13 14:02:15 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* file.c (rb_file_join): check encoding compatibility before joining
	  strings.

Thu Dec 13 13:06:27 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* proc.c (umethod_bind): allow another form of method transplanting
	  from a module via UnboundMethod.  [ruby-core:34267][Feature #4254]

Thu Dec 13 12:07:25 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* include/ruby/ruby.h (RB_UNUSED_VAR): new macro to suppress
	  warnings for unused variables.

	* ext/bigdecimal/bigdecimal.c (ENTER): use RB_UNUSED_VAR() to
	  suppress annoying warnings by -Wunused-but-set-variable in gcc 4.6.

Thu Dec 13 11:22:33 2012  Koichi Sasada  <ko1@atdot.net>

	* method.h: remove "VM_METHOD_TYPE__MAX" from rb_method_type_t.
	  rb_method_type_t is not a number and "_MAX" causes misunderstanding.

	* proc.c (rb_method_entry_arity): ditto.

	* vm_eval.c (vm_call0_body): ditto.

	* vm_insnhelper.c (vm_call_method): ditto.

Wed Dec 12 21:40:45 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/tmpdir.rb (Dir::Tmpname#create): deal with a prefix name which
	  starts with tilde as a plain name, not expanding as home directory.
	  [ruby-core:50793] [Bug #7547]

Wed Dec 12 19:48:59 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/json: merge JSON 1.7.5.
	  fix tests and other fixes.

Wed Dec 12 18:30:29 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* class.c (rb_prepend_module): move refined methods from the origin
	  of a class to the class, because refinements should have priority
	  over prepended modules.

	* test/ruby/test_refinement.rb: related test.

Wed Dec 12 18:27:09 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* time.c (zone_str): lookup or insert by using st_update() at once.

Wed Dec 12 15:30:11 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: add -fno-omit-frame-pointer if libexecinfo is used.
	  At least on FreeBSD ruby will crash on getting C backtrace
	  when it is compiled with other than -O0.

	* vm_dump.c: enable backtrace on FreeBSD even if with optimizations.

Wed Dec 12 16:08:04 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/rdoc/test_rdoc_rdoc.rb (TestRDocRDoc#test_normalized_file_list_non_file_directory):
	  use File::NULL for portability if possible.

Wed Dec 12 16:07:23 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* method.h (rb_method_flag_t): name a magic number for NOEX_SAFE and
	  NOEX_WITH as NOEX_SAFE_SHIFT_OFFSET.

	* method.h (rb_method_type_t, method_optimized_type): C89 forbids a
	  comma after the last element in enum.

	* proc.c (rb_method_entry_arity), vm_eval.c (vm_call0_body),
	  vm_insnhelper.c (vm_call_method): add VM_METHOD_TYPE__MAX case.

Wed Dec 12 14:16:35 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/class_module.rb:  Added RDoc::ClassModule#documented? which
	  checks comment_location.  Hide RDoc::ClassModule#comment=.
	* test/rdoc/test_rdoc_class_module.rb:  Test for above.

	* lib/rdoc/generator/template/darkfish/_sidebar_table_of_contents.rhtml:
	  Fix display of the table of contents in the sidebar.

	* lib/rdoc/generator/template/darkfish/table_of_contents.rhtml:
	  Use #comment_location when displaying classes or modules.

	* test/rdoc/test_rdoc_store.rb:  Use comment_location.

Wed Dec 12 13:40:52 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_insnhelper.c (vm_getivar): no uninitialized instance variables
	  warnings for non-object if attr method.

Wed Dec 12 06:43:37 2012  Benoit Daloze  <eregontp@gmail.com>

	* iseq.c (rb_iseq_parameters): fix limit for optional arguments.

	* test/ruby/test_keyword.rb: tests for above.

	* vm_core.h (struct rb_iseq_struct): update documentation
	  with keyword arguments. [Bug #7540] [ruby-core:50735]

Wed Dec 12 03:45:41 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm.c (vm_exec): pass exceptions while handling an exception.

	* vm_trace.c (rb_threadptr_exec_event_hooks): propagate exceptions.
	  revert r38293 partially.

Wed Dec 12 03:09:05 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* sample/test.rb (Progress#initialize): add --verbose option and show
	  messages in one line unless --verbose is given.

Wed Dec 12 01:47:02 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (rb_using_refinement): make the method table of an iclass
	  for a refinement that of the refinement, not that of the origin of
	  the refinement, which is set by rb_include_class_new().  This
	  change is needed to make module prepend into a refinement work
	  properly.

	* test/ruby/test_refinement.rb: related test.

Wed Dec 12 01:05:04 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* tool/make-snapshot: add --disable-rubygem to both MINIRUBY and RUBY.
	  On making miniprelude.c, it seems use MINIRUBY. this fixes #7541
	  but rubygems also needs to be fixed for older rubies.

Wed Dec 12 00:32:11 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* test/dl/test_func.rb (test_name_with_block, test_bind, test_qsort1):
	  call unbind to release the callback closure because maximum number
	  of callbacks is limited to DL::MAX_CALLBACK (== 5) with pure DL
	  without Fiddle.

Wed Dec 12 00:13:34 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* ext/dl/lib/dl/func.rb (DL::Function#unbind, #bound?): suppress
	  NoMethodError when Fiddle is available. [ruby-core:50756] [Bug #7543]
	* test/dl/test_func.rb (test_bound*, test_unbind*): tests for the above.

Tue Dec 11 19:38:37 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* ext/fiddle/function.c (Fiddle::Function.new): new keyword argument
	  :name to set the name attribute.
	* ext/fiddle/lib/fiddle/import.rb (import_function, bind_function):
	  set function name by using the :name keyword argument.
	  Re-fixes r38243. [ruby-core:50566]
	* test/fiddle/test_function.rb (test_name): test for the :name keyword
	  argument and Fiddle::Function#name.

Tue Dec 11 16:57:33 2012  Eric Hodel  <drbrain@segment7.net>

	* common.mk:  Added --pages-dir to rdoc creation.  Now doc/ items show
	  up at top-level.
	* .document:  Moved doc/* entries to doc/.document
	* doc/.document:  ditto

Tue Dec 11 16:44:37 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/options.rb:  Added --page-dir option for moving pages in
	  doc/ to the top-level.
	* lib/rdoc/rdoc.rb:  ditto.
	* test/rdoc/test_rdoc_options.rb:  Test for the above.
	* test/rdoc/test_rdoc_rdoc.rb:  ditto.

Tue Dec 11 15:24:05 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/pathname/lib/pathname.rb:  Hide private methods from RDoc.

Tue Dec 11 15:11:29 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* tool/make-snapshot (BASERUBY): add --disable-gem to avoid load gems.
	  [Bug #7541] [ruby-core:50736]

Tue Dec 11 12:00:19 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/dl/win32/extconf.rb: Fix typo
	  by Santiago Pastorino <santiago@wyeworks.com>
	  https://github.com/ruby/ruby/pull/221 fix GH-221

Tue Dec 11 01:53:37 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/matrix: alias {row|column}_size to {row|column}_count and use
	  the latter.
	  [Bug #7369] [ruby-core:49409]

Tue Dec 11 00:26:58 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* fix the behavior when a module is included into a refinement.
	  This change is a little tricky, so it might be better to prohibit
	  module inclusion to refinements.

	* include/ruby/ruby.h (RMODULE_INCLUDED_INTO_REFINEMENT): new flag
	  to represent that a module (iclass) is included into a refinement.

	* class.c (include_modules_at): set RMODULE_INCLUDED_INTO_REFINEMENT
	  if klass is a refinement.

	* eval.c (rb_mod_refine): set the superclass of a refinement to the
	  refined class for super.

	* eval.c (rb_using_refinement): skip the above superclass (the
	  refined class) when creating iclasses for refinements.  Otherwise,
	  `using Refinement1; using Refinement2' creates iclasses:
	  <Refinement2> -> <RefinedClass> -> <Refinement1> -> RefinedClass,
	  where <Module> is an iclass for Module, so RefinedClass is
	  searched before Refinement1.  The correct iclasses should be
	  <Refinement2> -> <Refinement1> -> RefinedClass.

	* vm_insnhelper.c (vm_search_normal_superclass): if klass is an
	  iclass for a refinement, use the refinement's superclass instead
	  of the iclass's superclass.  Otherwise, multiple refinements are
	  searched by super.  For example, if a refinement Refinement2
	  includes a module M (i.e., Refinement2 -> <M> -> RefinedClass,
	  and if refinements iclasses are <Refinement2> -> <M>' ->
	  <Refinement1> -> RefinedClass, then super in <Refinement2> should
	  use Refinement2's superclass <M> instead of <Refinement2>'s
	  superclass <M>'.

	* vm_insnhelper.c (vm_search_super_method): do not raise a
	  NotImplementError if current_defined_class is a module included
	  into a refinement.  Because of the change of
	  vm_search_normal_superclass(), the receiver might not be an
	  instance of the module('s iclass).

	* test/ruby/test_refinement.rb: related test.

Mon Dec 10 18:35:25 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_method.c (rb_method_entry_without_refinements): use
	  rb_resolve_refined_method() to search superclasses if
	  me->def->orig_me is 0.  This change fixes make test-all
	  TESTS="json ruby/test_refinement.rb".

	* test/ruby/test_refinement.rb: related test.

Mon Dec 10 17:59:07 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/fiddle/win32/*: library ports from DL to Fiddle.

	* ext/dl/win32/extconf.rb: check fiddle.  often case dl compiled prior
	  to fiddle, so this change is no meaning.  in most cases, simply
	  fiddle/win32 overwrite dl/win32.

Mon Dec 10 15:23:35 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_trace.c (rb_threadptr_exec_event_hooks): exceptions in event
	  hooks should not propagate outside.

Mon Dec 10 15:11:06 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* compile.c (iseq_compile_each): count flip-flop state in local iseq
	  not in each iseqs, so that the keys can be other than hidden
	  strings.  [ruby-core:47253] [Bug #6899]

	* vm_insnhelper.c (lep_svar_get, lep_svar_set, vm_getspecial): store
	  flip-flop states in an array instead of a hash.

	* iseq.c (set_relation): main iseq also can has local scope.

Mon Dec 10 10:36:12 2012  Narihiro Nakamura  <authornari@gmail.com>

	* lib/irb/magic-file.rb: set a encoding, which is detected from
	  the file to read, to the internal encoding.
	  [Bug #4281][ruby-dev:43036]

Mon Dec 10 09:40:19 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/ext/cmake_builder.rb:  Added a builder for cmake.
	* lib/rubygems/ext.rb:  ditto.
	* lib/rubygems/installer.rb:  ditto.
	* test/rubygems/test_gem_ext_cmake_builder.rb:  Test for above.

Mon Dec 10 09:13:08 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/package.rb:  Omit directories when packaging gems like
	  RubyGems 1.8.x
	* test/rubygems/test_gem_package.rb:  Test for above.

Sun Dec  9 17:36:59 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_insnhelper.c (vm_call_opt_send): Kernel#send should not use
	  refinements.

	* proc.c (mnew): Kernel#method, Kernel#public_method,
	  Module#instance_method, and Module#public_instance_method should
	  not use refinements.

	* vm_method.c (rb_method_boundp): Kernel#respond_to? should not use
	  refinements.

	* test/ruby/test_refinement.rb: related test.

Sun Dec  9 06:19:04 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/markdown/entities.rb:  Added documentation.

	* lib/rdoc/parser/ruby.rb:  Updated style

	* lib/rdoc/ruby_lex.rb:  Parse characters up to \u{FFFFF}
	* test/rdoc/test_rdoc_ruby_lex.rb:  Test for above.

Sat Dec  8 22:38:35 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (rb_mod_refine): don't override Module#include.  It's
	  unnecessary now because refinements are activated only in refine
	  blocks.

Sat Dec  8 22:33:26 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c: remove Module#refinements.

	* test/ruby/test_refinement.rb: remove tests for Module#refinements.

Sat Dec  8 13:17:55 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (top_using): raise a RuntimeError if using is called in a
	  module definition or a method definition.

	* test/ruby/test_refinement.rb: related test.

Sat Dec  8 15:01:35 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/commands/cleanup_command.rb:  Skip default gems when
	  cleaning up.
	* test/rubygems/test_gem_commands_cleanup_command.rb:  Test for above.

	* lib/rubygems/commands/query_command.rb:  Fixed listing remote gems.

	* lib/rubygems/dependency_installer.rb:  Ignore non-files when looking
	  for local gems.
	* test/rubygems/test_gem_dependency_installer.rb:  Test for above.

	* lib/rubygems/uninstaller.rb:  The user must confirm uninstalling gems
	  that have dependencies.
	* test/rubygems/test_gem_uninstaller.rb:  Test for above.

	* lib/rubygems.rb (module Gem):  Updated version.

	* test/rubygems/*.pem:  Updated to run in FIPS mode.
	* test/rubygems/test_gem_security.rb:  ditto.
	* test/rubygems/test_gem_security_signer.rb:  ditto.

Sat Dec  8 12:34:01 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_insnhelper.c (vm_search_normal_superclass): super in a
	  refinement always uses the refined class as its superclass.

	* test/ruby/test_refinement.rb: related test.

Sat Dec  8 11:59:59 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (rb_mod_refine): raise an ArgumentError if a given
	  block is of a Proc object.

	* vm_insnhelper.c (vm_call_method): store refined methods in inline
	  cache to improve performance.  It's safe now because blocks cannot
	  be yielded with different refinements in the new specification.

	* test/ruby/test_refinement.rb: related test.

Sat Dec  8 11:17:53 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (rb_mod_refine), vm_eval.c (rb_yield_refine_block):
	  Module#refine activates all refinements defined in that module
	  only in a given block.

	* string.c (sym_to_proc, sym_call): don't use refinements.

	* test/ruby/test_refinement.rb: related test.

Sat Dec  8 09:24:42 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/openssl/ossl_x509name.c:  Completed documentation for
	  OpenSSL::X509::Name.

Sat Dec  8 07:57:12 2012  Koichi Sasada  <ko1@atdot.net>

	* ext/objspace/objspace.c (iow_size): return size of internal object
	  for ObjectSpace.memsize_of().

	* test/objspace/test_objspace.rb: add a test.

Tue Dec 08 02:39:23 2012  James Edward Gray II  <james@graysoftinc.com>

	* lib/csv.rb: A fix for row comparison by Stephen Wattam.  [Bug #7528]

Sat Dec  8 01:27:23 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Runner#_run_parallel): no need to
	  check all reports.

Sat Dec  8 00:10:34 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_eval.c (yield_under, eval_under): do not activate refinements
	  of the receiver in module_eval and instance_eval.

	* eval.c (ruby_Init_refinement): undef Class#refine.

	* eval.c (ruby_Init_refinement): remove Module#using.

	* eval.c (ruby_Init_refinement): main.using should be private.

	* eval.c (rb_mod_refine): the argument of Module#refine should not
	  be a module.

	* insns.def (defineclass): do not activate refinements in a class or
	  module.

Fri Dec  7 23:42:11 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* ext/refinement/refinement.c: include ruby/ruby.h instead of the
	  declaration of rb_warn().

Fri Dec  7 16:07:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* doc/etc.rd: Removed stale documentation file
	* ext/etc/etc.c:  Merged documentation from doc/etc.rd and updated
	  rdoc, added documentation for Etc::Passwd and Etc::Group

Fri Dec  7 16:00:57 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Runner#_run_parallel): no need to
	  retry skipped test.  this fix makes 40% faster the whole test-all
	  with -j5 on Windows.

Fri Dec  7 14:22:29 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/markup/to_joined_paragraph.rb:  Completed documentation
	* lib/rdoc/parser/c.rb:  ditto
	* lib/rdoc/parser/changelog.rb:  ditto
	* lib/rdoc/servlet.rb:  ditto
	* lib/rdoc/store.rb:  ditto

	* lib/rdoc/store.rb:  Improved HTML error page.  Completed
	  documentation

	* lib/rdoc/parser/ruby.rb:  Fixed bug attaching a comment to A::B = 42
	* test/rdoc/test_rdoc_parser_ruby.rb:  Test for above

	* test/rdoc/test_rdoc_comment.rb:  Removed garbage

Fri Dec  7 14:03:59 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/timeout.rb (Timeout#timeout): since async_interrupt_timing
	  re-raises a deferred exception, replace the timeout exception with
	  Timeout::Error after it.  [Bug #7503]

Fri Dec  7 13:07:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* doc/forwardable.rd: Remove stale documentation file
	* lib/forwardable.rb: Merge documentation from doc/forwardable.rd

Fri Dec  7 09:47:35 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* time.c (time_mdump): dump timezone string to private instance variable
	  on marshaling.

	* time.c (time_mload): load timezone string from private instance
	  variable named 'zone'.

Fri Dec  7 01:15:07 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* ext/fiddle/lib/fiddle/function.rb (Fiddle::Function#name): new
	  attribute needed to switch Win32::Registry from DL to Fiddle.

	* ext/fiddle/lib/fiddle/import.rb (import_function, bind_function):
	  set function name to the returned Fiddle::Function object.

Fri Dec  7 00:11:44 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* test/ruby/test_refinement.rb: fix some tests to use neither
	  Module#using nor Module#module_eval.

Thu Dec  6 23:27:50 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (ruby_Init_refinement): a new function to enable
	  Refinements with a warning "Refinements are experimental...".

	* ext/refinement/refinement.c, ext/refinement/extconf.rb: a new
	  extension library to enable Refinements.

Thu Dec  6 18:23:05 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* revised r37993 to avoid SEGV/ILL in tests.  In r37993, a method
	  entry with VM_METHOD_TYPE_REFINED holds only the original method
	  definition, so ci->me is set to a method entry allocated in the
	  stack, and it causes SEGV/ILL.  In this commit, a method entry
	  with VM_METHOD_TYPE_REFINED holds the whole original method entry.
	  Furthermore, rb_thread_mark() is changed to mark cfp->klass to
	  avoid GC for iclasses created by copy_refinement_iclass().

	* vm_method.c (rb_method_entry_make): add a method entry with
	  VM_METHOD_TYPE_REFINED to the class refined by the refinement if
	  the target module is a refinement.  When a method entry with
	  VM_METHOD_TYPE_UNDEF is invoked by vm_call_method(), a method with
	  the same name is searched in refinements.  If such a method is
	  found, the method is invoked.  Otherwise, the original method in
	  the refined class (rb_method_definition_t::body.orig_me) is
	  invoked.  This change is made to simplify the normal method lookup
	  and to improve the performance of normal method calls.

	* vm_method.c (EXPR1, search_method, rb_method_entry),
	  vm_eval.c (rb_call0, rb_search_method_entry): do not use
	  refinements for method lookup.

	* vm_insnhelper.c (vm_call_method): search methods in refinements if
	  ci->me is VM_METHOD_TYPE_REFINED.  If the method is called by
	  super (i.e., ci->call == vm_call_super_method), skip the same
	  method entry as the current method to avoid infinite call of the
	  same method.

	* class.c (include_modules_at): add a refined method entry for each
	  method defined in a module included in a refinement.

	* class.c (rb_prepend_module): set an empty table to
	  RCLASS_M_TBL(klass) to add refined method entries, because
	  refinements should have priority over prepended modules.

	* proc.c (mnew): use rb_method_entry_with_refinements() to get
	  a refined method.

	* vm.c (rb_thread_mark): mark cfp->klass for iclasses created by
	  copy_refinement_iclass().

	* vm.c (Init_VM), cont.c (fiber_init): initialize th->cfp->klass.

	* test/ruby/test_refinement.rb (test_inline_method_cache): do not skip
	  the test because it should pass successfully.

	* test/ruby/test_refinement.rb (test_redefine_refined_method): new
	  test for the case a refined method is redefined.

Thu Dec  6 17:29:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (parser_here_document): flush string content between new
	  line and :string_embexpr.  [ruby-core:48703] [Bug #7255]

Thu Dec  6 16:35:21 2012  Eric Hodel  <drbrain@segment7.net>

	* test/rake/helper.rb:  Load envutil correctly.  Removed useless rescue
	  for signal propagation tests
	* lib/rake/file_utils.rb:  Prefer the built ruby.
	* test/rake/test_rake_functional.rb:  ditto

Thu Dec  6 15:20:34 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/context.rb:  Don't warn for duplicate methods while loading.
	* test/rdoc/test_rdoc_context.rb:  Test for above.

Thu Dec  6 14:26:22 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/command_manager.rb:  Removed string concatenation
	  syntax.  [Bug #6265]
	* lib/rubygems/commands/install_command.rb:  ditto
	* lib/rubygems/commands/uninstall_command.rb:  ditto
	* lib/rubygems/indexer.rb:  ditto
	* lib/rubygems/security/policy.rb:  ditto
	* lib/rubygems/security.rb:  ditto
	* lib/rubygems/uninstaller.rb:  ditto
	* test/rubygems/test_gem_commands_cert_command.rb:  ditto
	* test/rubygems/test_gem_package.rb:  ditto
	* test/rubygems/test_gem_security.rb:  ditto
	* test/rubygems/test_gem_security_policy.rb:  ditto

Thu Dec  6 14:10:08 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/package.rb:  Set rubygems_version before validation.
	  Fixes issue with bundler.
	* test/rubygems/test_gem_package.rb:  Test for above.

	* lib/rubygems/remote_fetcher.rb:  Only update the cache when we have
	  permission.  [ruby-trunk - Bug #7509]
	* lib/rubygems/source.rb (class Gem):  ditto
	* test/rubygems/test_gem_remote_fetcher.rb:  Test for above.
	* lib/rubygems/test_utilities.rb:  ditto

	* lib/rubygems/specification.rb:  Derive base_dir properly for default
	  gems.  [ruby-trunk - Bug #7496]
	* test/rubygems/test_gem_specification.rb:  Test for above.

	* lib/rubygems.rb:  Untaint Dir.pwd when searching for gemdeps files
	  for operation under $SAFE=1

Thu Dec 06 12:07:11 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c: TracePoint#enable should not cause an error
	  when it is already enabled. TracePoint#disable is too.
	  [ruby-core:50561] [ruby-trunk - Bug #7513]

	* test/ruby/test_settracefunc.rb: add tests.

Thu Dec  6 07:19:58 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc*:  Improved display of ChangeLog files as HTML.
	* test/rdoc*:  Test for above.

Thu Dec  6 04:34:19 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_uninterruptible): helper function for providing
	  temporary async_interrupt_timing(Object => :defer)

	* io.c (rb_f_p): use rb_uninterruptible.
	* io.c (rb_f_p_internal): helper function for rb_f_p().
	* io.c (struct rb_f_p_arg): new struct for rb_f_p_internal.

	* test/ruby/test_thread.rb (test_async_interrupt_and_p): test for
	  the above.

Thu Dec  6 04:27:10 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (io_binwrite): check interrupt before io issue.
	* test/ruby/test_thread.rb (test_async_interrupt_and_io):
	  test for the above.

Thu Dec  6 01:10:36 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_eval.c (rb_method_call_status): use Qundef as no self instead of
	  the current self.

	* vm_eval.c (send_internal): public_send does not consider how it is
	  called, as mentioned in r14173.  patched by charliesome (Charlie
	  Somerville).  [ruby-core:50489] [Bug #7499]

Wed Dec  5 23:50:23 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (getrusage_time): uses clock_gettime() with
	  CLOCK_PROCESS_CPUTIME_ID when available, which provides a 1ns
	  precision on linux. [ruby-core:50495] [Bug #7500]
	  patched by Aman Gupta.

Wed Dec  5 22:46:02 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm.c (rb_vm_make_proc): save the proc made from the given block so
	  that it will not get collected.  [ruby-core:50545] [Bug #7507]

Wed Dec  5 22:13:57 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* ext/dl/lib/dl/func.rb (DL::Function#bind): When Fiddle is used,
	  @ptr should be updated. This fixes SEGV raised in DL::Function#call
	  after calling DL::Function#bind. [Bug #7516] [ruby-dev:46708]

	* test/dl/test_func.rb (test_bind): test for the above

Wed Dec  5 18:53:00 2012  Masaya Tarui  <tarui@ruby-lang.org>

	* thread.c (rb_thread_s_async_interrupt_timing): have to check ints
	  before jumping out.
	* test/ruby/test_thread.rb (test_async_interrupt_with_return): add test
	  rescue has to catch a queued async exception at the time of return.
	* test/ruby/test_thread.rb (test_async_interrupt_with_break): add test
	  rescue has to catch a queued async exception at the time of break.

Wed Dec  5 16:54:28 2012  Koichi Sasada  <ko1@atdot.net>

	* test/ruby/memory_status.rb: suppress warning.
	  A patch from NAKAMURA Usaku.

Wed Dec  5 16:06:54 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/parser/changelog.rb:  Parse more ChangeLog file variations.
	* test/rdoc/test_rdoc_parser_changelog.rb:  Test for above.

Wed Dec  5 12:17:11 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* ext/dl/lib/dl/func.rb (DL::Function#initialize, DL::Function#bind):
	  ABI should be set by using CFunc#calltype even when Fiddle is used.
	  When Fiddle is used and a block is given, name should not be ignored.
	  [ruby-core:50562] [Bug #7514]

	* ext/dl/lib/dl/import.rb (DL::Importer#bind_function): should respect
	  abi and name when Fiddle is used.

	* test/dl/test_func.rb (test_name_with_block): test for "name" method
	  with giving a block.

Wed Dec  5 11:55:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* doc/shell.rd, doc/shell.rd.ja: Removed stale doc files
	* lib/shell.rb, lib/shell/*: Merge and updates docs from doc/shell.rd*

Wed Dec  5 11:42:38 2012  Koichi Sasada  <ko1@atdot.net>

	* test/ruby/test_settracefunc.rb: disable trace.

Wed Dec  5 11:37:37 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (MakeMakefile#macro_defined?): use clearly different
	  strings from conflict markers.

Wed Dec  5 04:25:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/README: Add rdoc modeline directive and formatting libs

Wed Dec  5 04:04:02 2012  Masaya Tarui  <tarui@ruby-lang.org>

	* test/ruby/test_thread.rb (test_async_interrupt_blocking): bugfix
	  about deferred check

Wed Dec  5 03:35:37 2012  Masaya Tarui  <tarui@ruby-lang.org>

	* vm_core.h (RUBY_VM_CHECK_INTS_BLOCKING): check async queue everytime.
	* thread.c (sleep_forever): check RUBY_VM_CHECK_INTS_BLOCKING first.
	* thread.c (sleep_timeval): ditto.
	* test/ruby/test_thread.rb (test_async_interrupt_blocking): add a test
	  exceptions are correctly deferred and raised on :on_blocking context.

Wed Dec  5 02:36:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* common.mk, defs/id.def, template/id.c.tmpl: generate id.c as well as id.h.

Wed Dec  5 00:56:21 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_mutex_owned_p): new method that return current
	  thread have the target mutex or not. [Feature #7505] [ruby-dev:46697]
	* test/ruby/test_thread.rb (test_mutex_owned, test_mutex_owned2):
	  test for the above.
	* NEWS: new for the above.

Wed Dec  5 00:05:47 2012  Masatoshi SEKI  <m_seki@mva.biglobe.ne.jp>

	* lib/erb.rb (make_compiler, add_put_cmd, add_insert_cmd): extract
	  methods.

Tue Dec  4 18:21:04 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* test/ruby/memory_status.rb (Memory): use fiddle/types if available.

	* test/ruby/memory_status.rb (Memory::Win32): :stdcall is needed on
	  x86 WIN32. This commit partly reverts r38054.

Tue Dec  4 18:05:58 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* ext/fiddle/lib/fiddle/types.rb: copied from ext/dl/lib/dl/types.rb
	  and modified for Fiddle, needed for migration from DL to Fiddle.

Tue Dec  4 17:57:09 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* ext/fiddle/lib/fiddle/import.rb (import_function, bind_function):
	  should respect call_type for migration from DL to Fiddle.
	  [Bug #7484] [ruby-core:50405]

Tue Dec  4 16:54:00 2012  Eric Hodel  <drbrain@segment7.net>

	* .document:  Added ChangeLog and doc/ChangeLog-* as documentation

Tue Dec  4 16:47:46 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/parser/changelog.rb:  Added a ChangeLog parser to RDoc.
	* lib/rdoc/parser.rb:  ditto
	* test/rdoc/test_rdoc_parser_changelog.rb:  Test for above.

Tue Dec  4 16:23:32 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* marshal.c (path2class, path2module): use PRIsVALUE.

	* marshal.c (w_object, marshal_dump, marshal_load): use
	  rb_check_funcall if possible.

	* marshal.c (w_object, marshal_dump, r_object0, marshal_load): use
	  RB_GC_GUARD() (directly or indirectly) instead of volatile.

	* variable.c (rb_path_to_class): prevent the argument from GC.

Tue Dec 04 13:55:07 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_opts.h: enable optimization - operand unification.
	  Operand unification technique enable to combine
	  an instruction and specific operands and make new
	  instruction.

	* defs/opt_operand.def: add several configuration
	  of operand unification.

	* insns.def: use `int' instead to suppress warning.

Mon Dec  3 17:58:53 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* parse.y: replace parser->enc with current_enc.

Tue Dec  4 08:33:46 2012  Eric Hodel  <drbrain@segment7.net>

	* README.EXT:  Converted to RDoc format
	* README.EXT.ja:  ditto

Tue Dec  4 08:32:10 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/ri/driver.rb:  Fixed ri page display for files with
	  extensions.
	* test/rdoc/test_rdoc_ri_driver.rb:  Test for above

Tue Dec  4 04:11:50 2012  Eric Hodel  <drbrain@segment7.net>

	* .document:  Add NEWS for `ri ruby:NEWS`
	* NEWS:  Set format as rdoc
	* doc/NEWS-1.8.7:  ditto
	* doc/NEWS-1.9.1:  ditto
	* doc/NEWS-1.9.2:  ditto
	* doc/NEWS-1.9.3:  ditto

Mon Dec  3 20:37:22 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_exec.c: check VM_COLLECT_USAGE_DETAILS.

Mon Dec  3 20:28:02 2012  Koichi Sasada  <ko1@atdot.net>

	* compile.c (iseq_specialized_instruction):
	  change condition of using `opt_send_simple'.
	  More method invocations can be simple.

Mon Dec  3 20:03:38 2012  Koichi Sasada  <ko1@atdot.net>

	* test/ruby/test_objectspace.rb: skip RuntimeError
	  which says a message "can't modify frozen File".
	  Is that correct behavior?

Mon Dec 03 20:00:19 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_exec.c: vm_analysis_insn should be static.

Mon Dec  3 19:10:12 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* random.c (Init_Random), rational.c (Init_Rational): make marshal
	  methods private.  [Feature #6539]

Mon Dec  3 18:29:27 2012  Koichi Sasada  <ko1@atdot.net>

	* iseq.h: iseq_catch_table_entry::catch_type should be
	  Fixnum because they are pushed into Array in a compiler.
	  [Bug #7502]

	* test/ruby/test_objectspace.rb: add a test of this issue.

Mon Dec  3 18:25:16 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* template/id.h.tmpl (preserved_ids): "empty?" is not an attribute name.

Mon Dec  3 16:23:09 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_backtrace.c (vm_backtrace_to_ary): check negative size (2nd arg).

Mon Dec  3 15:50:33 2012  Akinori MUSHA  <knu@iDaemons.org>

	* misc/ruby-additional.el (ruby-mode-set-encoding): Unbreak by
	  fixing a typo, s/set/setq/.

Mon Dec  3 14:14:19 2012  Koichi Sasada  <ko1@atdot.net>

	* compile.c (iseq_compile_each): joke shouldn't use id.h defined ids.

	* id.c (Init_id): ditto.

	* common.mk: fix dependency.

Mon Dec  3 12:43:35 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* misc/ruby-mode.el (ruby-block-end-re, ruby-delimiter)
	  (ruby-mode-syntax-table, ruby-parse-partial, ruby-beginning-of-indent):
	  merge from Emacs.

	* misc/ruby-mode.el (ruby-calculate-indent): fix indentation of
	  argument lines in parentheses.  [Bug #5140]

Mon Dec  3 07:52:41 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/parser.rb:  Improved modeline support.  Patch by nobu.
	* test/rdoc/test_rdoc_parser.rb:  Test for above.

Sun Dec  3 00:06:00 2012  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/bigdecimal.c (BigDecimal_new): stop checking string
	  taintness.  [Bug #5508] [ruby-core:40510]

Sun Dec  2 19:26:47 2012  Masaya Tarui  <tarui@ruby-lang.org>

	* thread.c (RB_GC_SAVE_MACHINE_CONTEXT, rb_gc_save_machine_context):
	  extract rb_gc_save_machine_context to RB_GC_SAVE_MACHINE_CONTEXT.
	  NOTE: machine_regs and machine_stack_end must be set in current scope.

Sun Dec  2 18:46:24 2012  Koichi Sasada  <ko1@atdot.net>

	* array.c, enum.c, insns.def, io.c, numeric.c, parse.y, process.c,
	  range.c: use prepared IDs.
	  A patch from charliesome (Charlie Somerville).
	  [Bug #7495]

	* common.mk: add dependency to id.h.

	* common.mk: replace ID_H_INCLUDES with id.h.

Sun Dec  2 16:48:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/weakref.rb (rdoc): Clean up usage, add example,
	  note ArgumentError on WeakRef.new

Sun Dec  2 16:45:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* gc.c (WeakMap): Add doc for internal reference, use lib/weakref.rb

Sun Dec  2 07:24:23 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/parser.rb:  Parse files with a -*- rdoc -*- modeline
	* test/rdoc/test_rdoc_parser.rb:  Test for above

Sun Dec  2 06:02:00 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* gc.h (SET_MACHINE_STACK_END): add volatile for preventing
	  harmful optimization.  [ruby-dev:46665] [Bug #7468]

Sun Dec  2 05:01:58 2012  Koichi Sasada  <ko1@atdot.net>

	* iseq.c (rb_iseq_line_trace_each): iterate `line' event only.

	* test/ruby/test_iseq.rb: add a test for this change.

Sun Dec  2 02:46:04 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c: add TracePoint#inspect.

	* test/ruby/test_settracefunc.rb: add a test for this change.

Sat Dec  1 21:18:19 2012  Koichi Sasada  <ko1@atdot.net>

	* test/ruby/test_backtrace.rb: add a test for
	  Thread::Backtrace::Location#inspect.
	  BTW, tests for `caller_locations' are not enough.
	  Any volunteers are welcome.

Sat Dec  1 21:06:58 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_backtrace.c (location_inspect_m): add
	  Thread::Backtrace::Location#inspect.
	  It same as loc_obj.to_s.inspect.

Sat Dec  1 19:24:09 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_io_puts): recurse for the argument itself, not converted
	  array elements.  [ruby-core:42444] [Bug #5986]

Sat Dec  1 19:01:36 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* marshal.c (w_object, r_object0): call private marshal methods.
	  [Feature #6539]

Sat Dec  1 18:52:22 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/commands/cleanup_command.rb:  Fix cleanup command for
	  multiple gems.  [ruby-trunk - #7481] by Kouhei Sutou
	* test/rubygems/test_gem_commands_cleanup_command.rb:  Test for above.
	* lib/rubygems.rb:  Autoload Gem::Source to prevent test failures

Sat Dec  1 18:17:00 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* complex.c (Init_Complex), time.c (Init_Time): make marshal methods
	  private.  [Feature #6539]

	* object.c (Init_Object): make remove_instance_variable public.
	  [Feature #6539]

	* id.c (Init_id), template/id.h.tmpl: add initialize_{copy,clone,dup}
	  and respond_to_missing?.

	* vm_method.c (rb_method_entry_make): make above methods private.
	  [Feature #6539]

Sat Dec  1 16:40:22 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_thread.rb: move ConditionVariable related test
	  into test/thread/test_cv.rb.
	* test/thread/test_cv.rb: new file.
	* test/thread/test_cv.rb (test_condvar_empty_signal): new tests.
	* test/thread/test_cv.rb (test_condvar_empty_broadcast): ditto.

Sat Dec  1 15:14:25 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_thread.rb (test_cv_wait_deadlock): enable
	  cv deadlock test.

Sat Dec  1 14:23:33 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* lib/thread.rb (ConditionVariable): use hash instead of array for
	  @waiters.
	* test/thread/test_queue.rb (test_sized_queue_and_wakeup): remove
	  a test because @waiters no longer have a chance to duplicated. Now it's
	  a hash.

Sat Dec  1 17:16:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* misc/ruby-electric.el (ruby-electric-curlies): use kill-region
	  instead of interactive command delete-backward-char.

Sat Dec  1 17:12:55 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* misc/inf-ruby.el (inferior-ruby-mode): fix the
	  compilation-shell-minor-mode configuration.  a patch by
	  j2petkov (Jean-Christophe Petkovich) in [ruby-core:46518].
	  [Bug #6742]

Sat Dec  1 15:05:30 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* dir.c (glob_helper): use NAMLEN() to tell the length of d_name
	  instead of strlen(), which can access beyond the boundary.

Sat Dec  1 13:48:13 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/specification.rb:  Don't add default gems to $LOAD_PATH
	  as they are already there.

Sat Dec  1 12:22:17 2012  Kouhei Sutou  <kou@cozmixng.org>

	* re-added r38053 that is reverted by r38061. Problems by r38053
	  are resolved by r38096. r38096 removed GEM_SKIP configuration.

	  The below is ChangeLog of r38053:

	* defs/default_gems: Add base directory column.

	* tool/rbinstall.rb:
	  - Install .gemspecs of default gem to
	    #{GEM_HOME}/specifications/default/.
	  - Update files parameter of .gemspecs by relative path from
	    library directory.

Sat Dec  1 11:09:12 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* variable.c (rb_class_path_no_cache): add a function to get the class
	  path without caching the computed path. Some classes are frozen, and
	  will raise an exception without this.

	* probes.d (cmethod-entry, cmethod-return): separate cmethods from
	  regular methods to match set trace func.

	* probes_helper.h: refactor macros.  Fix probes to avoid calling
	  #inspect when profiling.

	* insns.def: update for use with new macros.

	* vm_eval.c: ditto

	* vm_insnhelper.c: ditto

	* test/dtrace/test_singleton_function.rb: fix test for new output.

	* test/dtrace/test_cmethod.rb: test the cmethod probes.

Sat Dec  1 09:44:16 2012  Eric Hodel  <drbrain@segment7.net>

	* test/rdoc/test_rdoc_options.rb:  Windows drive letters are
	  case-insensitive.

Sat Dec  1 09:42:13 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems.rb:  Search for gem deps file up the directory tree.
	* test/rubygems/test_gem.rb:  Test for above.

Sat Dec  1 09:33:32 2012  Eric Hodel  <drbrain@segment7.net>

	* test/runner.rb:  Set GEM_HOME, GEM_PATH and GEM_SKIP to empty set.
	  With default_gem support in RubyGems GEM_SKIP prevents loading of
	  built-in gems.

Sat Dec  1 07:16:17 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* compile.c (ADD_CATCH_ENTRY): add a cast to fix SEGV with x64 mingw
	  on Windows 8. Without cast, 0 might be non zero value at higher bits
	  in rb_ary_new3().
	  [ruby-core:50258] [Bug #7456]

Sat Dec  1 04:07:57 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* parse.y (parser.utf8): remove unused property.

	* parse.y (UTF8_ENC): remove unused macro.

	* parse.y (parser_tokadd_utf8): use rb_utf8_encoding() directly.

Sat Dec  1 03:49:45 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* lib/sync.rb (Sync_m#sync_synchronize): add Thread.async_interrupt_timing
	  for protecting from async interrupt.
	* lib/sync.rb (Sync_m#sync_lock): ditto.

Sat Dec  1 03:38:04 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* lib/thread.rb (ConditionVariable#broadcast): s/RuntimeError/StandardError/
	* lib/thread.rb (ConditionVariable#signal): ditto.

Sat Dec  1 03:29:52 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* lib/thread.rb (SizedQueue#pop): rewrite by using ConditionVariable.
	* lib/thread.rb (SizedQueue#push): ditto.
	* lib/thread.rb (SizedQueue#max): ditto.
	* lib/thread.rb (Queue#pop): ditto.
	* lib/thread.rb (Queue#push): ditto.

	* lib/thread.rb (SizedQueue#num_waiting): adopt the above changes.
	* lib/thread.rb (SizedQueue#initialize): ditto.
	* lib/thread.rb (Queue#num_waiting): ditto.
	* lib/thread.rb (Queue#initialize): ditto.
	* test/thread/test_queue.rb (test_sized_queue_and_wakeup): ditto.

Sat Dec  1 03:45:47 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c (Thread.async_interrupt_timing): fix RDoc.
	  :never is not used any more.

Sat Dec  1 02:56:19 2012  Koichi Sasada  <ko1@atdot.net>

	* iseq.c: add RubyVM::InstructionSequence (ISeq) inspection methods.
	  * ISeq#path returns path of this ISeq written.
	  * ISeq#absolute_path returns absolute path.
	  * ISeq#label returns label (method name and so on).
	  * ISeq#base_label returns base label (see Thread::Backtrace::Location).
	  * ISeq#first_lineno returns first line number of this ISeq.
	  * ISeq.of(obj) returns ISeq object which obj (Proc or Method)
	    is contains.

	* test/ruby/test_iseq.rb: add tests.

Sat Dec  1 02:58:51 2012  Eric Hodel  <drbrain@segment7.net>

	* include/ruby/ruby.h (rb_event_flag_t):  Maintain integer precision
	  for clang error (VALUE aka unsigned long vs unsigned int)

Sat Dec  1 02:53:18 2012  Eric Hodel  <drbrain@segment7.net>

	* test/rubygems/test_gem_dependency_installer.rb:  Use Gem.read_binary
	  instead of File.binread for ruby 1.8 compatibility in the rubygems
	  source repository.  Updates r38075

Sat Dec  1 02:33:20 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_threadptr_interrupt_mask, async_interrupt_timing_func):
	  merge into them into rb_thread_s_async_interrupt_timing.
	* thread.c (rb_thread_s_async_interrupt_timing): ditto.

Sat Dec  1 02:11:47 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_threadptr_interrupt_mask): add argument check.
	* thread.c (async_interrupt_timing_arg_check_i): helper function
	  for the above.
	* test/ruby/test_thread.rb (test_async_interrupt_timing_invalid_argument):
	  test for the above.

Sat Dec  1 01:19:34 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* lib/thread.rb (ConditionVariable#broadcast): protect from
	  async interrupt by using Thread.async_interrupt_timing.
	* lib/thread.rb (ConditionVariable#signal): ditto.
	* lib/thread.rb (ConditionVariable#wait): ditto.

Sat Dec  1 02:04:23 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* test/ruby/envutil.rb (Test::Unit::Assertions#assert_in_out_err):
	  raise if assert_in_out_err misused.

Sat Dec  1 02:08:16 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/rdoc/test_rdoc_rubygems_hook.rb
	  (TestRDocRubygemsHook#test_setup_unwritable): 1. check the existence
	  of the file(directory) before touch it.  2. remove test
	  file(directory) after the test.  see [ruby-core:50388].

Sat Dec  1 01:51:06 2012  Koichi Sasada  <ko1@atdot.net>

	[EXPERIMENTAL]
	* iseq.c: add following two methods.
	  * ISeq#line_trace_all returns all line traces (line numbers)
	  * ISeq#line_trace_specify(pos, set) set `pos'th line event to
	    specified_line event (if set is true).
	  These features are introduced for debuggers (mainly to make
	  breakpoint).

	* iseq.h: add decl. of C APIs.

	* test/ruby/test_iseq.rb: add tests.

	* vm_trace.c: add `specified_line' event.

	* include/ruby/ruby.h: ditto.

Sat Dec  1 01:49:52 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/rubygems/test_gem_dependency_installer.rb: gems are of course
	  binary files, so use a binary reading method when reading it.
	  see [ruby-core:50388].

Sat Dec  1 01:21:07 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* lib/rubygems/command.rb (Gem::Command#get_all_gem_names_and_versions):
	  who assumes that the pathname of a gem never contains ':' ?
	  yes, on Unixen pathnames can contain ':', and on Windows they almost
	  certainly contain ':'.  see [ruby-core:50388].

	* lib/rubygems/requirement.rb (Gem::Requirement::PATTERN_RAW): extract
	  the regexp to match the version specifier from PATTERN to use in
	  above method.

Sat Dec  1 00:48:19 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* ext/fiddle/extconf.rb, ext/fiddle/function.c
	  (Fiddle::Function::STDCALL): FFI_STDCALL is not a macro, but an
	  enumeration. [ruby-core:50398] [Bug #7483]

Sat Dec  1 00:08:55 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/rubygems/test_gem_installer.rb
	  (TestGemInstaller#test_check_executable_overwrite_other_non_gem):
	  on Windows, rubygems always generate a wrapper .bat file when
	  installing a file into bin, so testing no-overwrite a wrapper file
	  and a non-wrapper file is nonsense.  see [ruby-core:50388].

Fri Nov 30 23:39:58 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/rubygems/test_gem_installer.rb
	  (TestGemInstaller#test_check_executable_overwrite_default_bin_dir):
	  if the executable to be overwritten was generated by rubygems, the
	  error message differs from the only copied one's.
	  see [ruby-core:50388].

Fri Nov 30 23:27:26 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/rubygems/test_gem_ext_ext_conf_builder.rb
	  (TestGemExtExtConfBuilder::test_class_make): reading with binary mode
	  of course introduce \r on Windows.  see [ruby-core:50388].

Fri Nov 30 23:11:37 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* lib/rubygems/specification.rb
	  (Gem::Specification.validate_permissions): don't check executability
	  of the source on Windows.  they will be wrapped to .bat files when
	  installing.  see [ruby-core:50388].

Fri Nov 30 22:44:14 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* vm_core.h (rb_vm_struct): add thread_destruct_lock field.
	* thread.c (Init_Thread): ditto.
	* thread.c (rb_vm_gvl_destroy): ditto.

	* thread.c (thread_start_func_2): make sure vm->running_thread
	  don't point to dead thread.
	* thread.c (timer_thread_function): close a race against thread
	  destruction. [Bug #4911][ruby-dev:43859]

	* vm_core.h (rb_thread_set_current): reset running time of
	  current thread instead of previous thread. We no longer
	  assume previous running thread still live.

Fri Nov 30 21:57:43 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* revert r38053 because it causes too many test failures.
	  if you've already installed r38053 or later, remove the installed
	  lib/ruby/gems/2.0.0 directory and reinstall this revision or later.

Fri Nov 30 21:07:56 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* lib/test/unit/parallel.rb (Test::Unit::Worker.run): wrap LoadError
	  because it's Gem::LoadError sometimes.  see [Bug #6882]

Fri Nov 30 20:47:44 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c: TracePoint#self returns invoking/exiting thread object
	  at thread_begin/end event.

	* test/ruby/test_settracefunc.rb: fix test.

Fri Nov 30 19:55:17 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/memory_status.rb (Memory::Win32): use fiddle instead of dl,
	  but I doubt fiddle is not compatible with dl. (if you are interested,
	  see the diff.)  [ruby-core:50194] [Bug #7443]

Fri Nov 30 19:37:44 2012  Kouhei Sutou  <kou@cozmixng.org>

	* defs/default_gems: Add base directory column.

	* tool/rbinstall.rb:
	  - Install .gemspecs of default gem to
	    #{GEM_HOME}/specifications/default/.
	  - Update files parameter of .gemspecs by relative path from
	    library directory.

Fri Nov 30 19:30:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* vm_trace.c:
	  tracepoint_attr_return_value (TracePoint#return_value):
	    include `:b_return` for method doc
	  tracepoint_enable_m, tracepoint_disable_m (#enable/#disable):
	    don't have block argument, document block scope

Fri Nov 30 18:52:56 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c (tracepoint_disable_m, tracepoint_enable_m):
	  fix block parameter.
	  No argument should be given to a block which is passed
	  to TracePoint#enable (and disable).

Fri Nov 30 18:23:26 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c: rename Thread.control_interrupt
	  to Thread.async_interrupt_timing.
	  The option name `:never' is also changed to  `:defer'.
	  [ruby-core:50375] [ruby-trunk - Feature #6762]

	* thread.c: remove Thread.check_interrupt.
	  This method is difficult to understand by name.

	* thread.c: add Thread.async_interrupted?.
	  This method check any deferred async interrupts.

	* test/ruby/test_thread.rb: change tests for above.

Fri Nov 30 18:24:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* vm_trace.c: Documentation for TracePoint API
	  [ruby-core:47243] [Feature #6895]

Fri Nov 30 17:43:50 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* string.c (rb_str_cmp_m): try to compare with to_str result if
	  possible before calling <=> method.  [ruby-core:49279] [Bug #7342]

	* string.c (rb_str_cmp_m): use rb_check_funcall instead of respond_to
	  and call.

	* string.c (rb_str_cmp_m): return fixed value, one of -1,0,+1 always.

Fri Nov 30 16:19:14 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_dump.c (rb_vm_bugreport): get rid of calling methods in sigsegv
	  handler.  based on a patch by charliesome (Charlie Somerville)
	  [ruby-core:49573] [Bug #7402]

Fri Nov 30 16:05:44 2012  Eric Hodel  <drbrain@segment7.net>

	* NEWS:  Added RubyGems 2.0.0

Fri Nov 30 15:24:37 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (parser_yylex): fix false usage of local variable, it cannot
	  appear in fname state [ruby-core:49659] [Bug #7408]

Fri Nov 30 15:20:12 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/package.rb:  Load YAML for building gems.
	* test/rubygems/test_gem_commands_contents_command.rb:  Sort expected
	  output of default gem contents.  Re-fixes r38004 and r38005.

Fri Nov 30 15:15:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* vm_trace.c (set_trace_func): Formatting of params and events

Fri Nov 30 14:45:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/net/http.rb: Net::HTTP::Patch to list of HTTP Request Classes
	  Patch by Ryunosuke SATO [Fixes #217 on github]

Fri Nov 30 14:05:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/cgi.rb: CGI example for HTML generation
	  Patch by Marcus Stollsteimer [ruby-core:50303] [Bug #7465]

Fri Nov 30 13:52:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* time.c: Documentation improvements, grammar and formatting
	  Patch by Bernd Homuth [ruby-core:49203] [Bug #7326]

Fri Nov 30 13:48:33 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc.rb:  Set version to 4.0.0.preview2
	* lib/rubygems.rb:  Set version to 2.0.0.preview2

Fri Nov 30 13:11:53 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/commands/setup_command.rb:  Remove old files on install
	  of RubyGems.  (not by rbinstall.rb).
	* test/rubygems/test_gem_commands_setup_command.rb:  Test for above.

Fri Nov 30 12:47:59 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/abbrev.rb (Abbrev#abbrev): A fixed string prefix pattern
	  should only match the beginning of each word, not the beginning
	  of every line in it.

	* lib/abbrev.rb (Abbrev#abbrev): Stop using a regexp that causes a
	  false warning. [Bug #7471]

Fri Nov 30 12:30:55 2012  Akinori MUSHA  <knu@iDaemons.org>

	* test/test_abbrev.rb: Add tests for lib/abbrev.rb.

Fri Nov 30 12:27:51 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/spec_fetcher.rb:  Allow prerelease spec fetching to fail
	  for bundler.
	* test/rubygems/test_gem_spec_fetcher.rb:  Test for above.

Fri Nov 30 12:20:53 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rake/backtrace.rb:  Removed duplication in
	  Rake::Backtrace::SUPPRESSED_PATHS
	* test/rake/test_rake_backtrace.rb:  Skip tests when tmpdir is in the
	  suppressed pattern.

Fri Nov 30 11:07:45 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* revert r37993 to avoid SEGV in tests.

Fri Nov 30 10:38:54 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/ri/driver.rb:  Relaxed matching for pages to be more
	  user-friendly.
	* test/rdoc/test_rdoc_ri_driver.rb:   Test for above.

Fri Nov 30 09:50:16 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/markdown.rb:  Fixed warnings with -w

Fri Nov 30 09:38:22 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/ruby.h (RB_GC_GUARD_PTR): add note.

	* vm_backtrace.c (backtrace_to_str_ary): use RB_GC_GUARD() instead of
	  RB_GC_GUARD_PTR() which has no effect.
	  (backtrace_to_location_ary): ditto.
	  (vm_backtrace_to_ary): ditto.

Fri Nov 30 09:22:52 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/commands/contents_command.rb:  Sort output from command.
	  Replaces r38004, r38005
	* test/rubygems/test_gem_commands_contents_command.rb:  ditto.

	* lib/rubygems/defaults.rb:  Use Gem.path_separator for jruby support.
	* lib/rubygems/path_support.rb:  ditto

Fri Nov 30 08:34:03 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/generator/darkfish.rb:  Silenced warning
	* test/rdoc/test_rdoc_rdoc.rb:  ditto

	* lib/rdoc/markup/parser.rb:  Use byteslice when available for
	  performance
	* test/rdoc/test_rdoc_markup_parser.rb:  Test for above
	* lib/rdoc/test_case.rb:  ditto

	* lib/rdoc/parser/ruby.rb:  Fixed bug parsing yield({})
	* test/rdoc/test_rdoc_parser_ruby.rb (end):

	* lib/rdoc/rubygems_hook.rb:  Skip default gems.  Display generator
	  name properly.
	* test/rdoc/test_rdoc_rubygems_hook.rb:  Test for above

	* lib/rdoc/servlet.rb:  Fixed typo.

Fri Nov 30 08:09:56 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c : remove a unused function.

Fri Nov 30 07:46:42 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (rb_objspace_call_finalizer): finalize_deferred may free up
	  a object which is reachable from a part after this function,
	  e.g. ruby_vm_destruct(). [ruby-dev:46647] [Bug #7452]

	* test/ruby/test_gc.rb (test_finalizing_main_thread): add a test
	  for above.

Fri Nov 30 07:43:44 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c (rb_thread_interrupted): avoid warning of
	  implicit conversion.

	* thread.c (rb_threadptr_execute_interrupts): ditto.

Fri Nov 30 07:34:28 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_backtrace.c: add GC guards.

Fri Nov 30 07:21:33 2012  Koichi Sasada  <ko1@atdot.net>

	[EXPERIMENTAL: NEED DISCUSS]
	* vm_trace.c: add events
	  * :thread_begin - hook at thread beginning.
	  * :thread_end - hook at thread ending.
	  * :b_call - hook at block enter.
	  * :b_return - hook at block leave.
	  This change slow down block invocation.
	  Please try and give us feedback until 2.0 code freeze.

	* include/ruby/ruby.h: ditto.

	* compile.c (rb_iseq_compile_node): ditto.

	* insns.def: ditto.

	* thread.c: ditto.

	* vm.c: ditto.

	* include/ruby/debug.h: add a comment.

	* test/ruby/test_settracefunc.rb: add a tests.

Fri Nov 30 06:56:30 2012  Ryan Davis  <ryand-ruby@zenspider.com>

	* test/minitest/*: Imported minitest 4.3.2 (r8027)

Fri Nov 30 04:16:29 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rake/*:  Updated to rake 0.9.5
	* test/rake/*:  ditto.
	* NEWS:  ditto.

Fri Nov 30 02:53:47 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* vm.c: add a return hook when a method raises an exception.

	* probes_helper.h: look up klass and method if none are provided.

	* eval.c: update macro usage.

	* vm_eval.c: ditto.

	* vm_insnhelper.c: ditto.

	* test/dtrace/test_function_entry.rb: test for change.

Fri Nov 30 02:27:12 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* compile.c (compile_array_): refix r37991 remove assertion:
	  it is true only if type == COMPILE_ARRAY_TYPE_HASH.
	  [ruby-dev:46658] [Bug #7466]

	* vm.c (m_core_hash_from_ary): add assertion instead of above.

	* vm.c (m_core_hash_merge_ary): ditto.

Thu Nov 29 19:15:14 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* compile.c (compile_array_): hash elements must be paired even for
	  literal elements.  [ruby-dev:46658] [Bug #7466]

Thu Nov 29 22:39:35 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* ext/openssl/ossl_ssl.c (ssl_npn_encode_protocol_i): fix byte order
	  issue on big-endian architecture [ruby-core:50292] [Bug #7463]

Thu Nov 29 22:23:31 2012  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* test/openssl/test_cipher.rb (test_ctr_if_exists): add CTR mode test
	  if underlying OpenSSL supports it. See #4408

Thu Nov 29 21:42:16 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_method.c (rb_method_entry_make): add a method entry with
	  VM_METHOD_TYPE_REFINED to the class refined by the refinement if
	  the target module is a refinement.  When a method entry with
	  VM_METHOD_TYPE_UNDEF is invoked by vm_call_method(), a method with
	  the same name is searched in refinements.  If such a method is
	  found, the method is invoked.  Otherwise, the original method in
	  the refined class (rb_method_definition_t::body.orig_def) is
	  invoked.  This change is made to simplify the normal method lookup
	  and to improve the performance of normal method calls.

	* vm_method.c (EXPR1, search_method, rb_method_entry),
	  vm_eval.c (rb_call0, rb_search_method_entry): do not use
	  refinements for method lookup.

	* vm_insnhelper.c (vm_call_method): search methods in refinements if
	  ci->me is VM_METHOD_TYPE_REFINED.  If the method is called by
	  super (i.e., ci->call == vm_call_super_method), skip the same
	  method entry as the current method to avoid infinite call of the
	  same method.

	* class.c (include_modules_at): add a refined method entry for each
	  method defined in a module included in a refinement.

	* class.c (rb_prepend_module): set an empty table to
	  RCLASS_M_TBL(klass) to add refined method entries, because
	  refinements should have priority over prepended modules.

	* proc.c (mnew): use rb_method_entry_with_refinements() to get
	  a refined method.

	* test/ruby/test_refinement.rb (test_inline_method_cache): do not skip
	  the test because it should pass successfully.

	* test/ruby/test_refinement.rb (test_redefine_refined_method): new
	  test for the case a refined method is redefined.

Thu Nov 29 17:45:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* variable.c (rb_const_set): show namespace in warning messages.
	  [Feature #7190]

Thu Nov 29 17:31:53 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/rubygems.rb (Gem.load_yaml): return if Kernel#gem is not defined
	  yet. This causes crash if test-all requires libraries in a certain
	  order. A simple reproducible code is
	  ruby --disable-gem -e'require"yaml";require"minitest/autorun"'

Thu Nov 29 17:19:26 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/tracer.rb:  Updated to match removal of custom_require from
	  RubyGems.
	* test/test_tracer.rb:  ditto.  Improved failure message if the test
	  fails

Thu Nov 29 17:15:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* gc.c: Documentation for GC, GC::Profiler, ObjectSpace, and
	  ObjectSpace::WeakMap [ruby-core:50245] [Bug #7449]

Thu Nov 29 17:12:26 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* tool/generic_erb.rb, tool/id2token.rb: add --path-separator option
	  for mingw where make and built ruby live in different world.

	* tool/vpath.rb: extract from tool/instruction.rb.

Thu Nov 29 17:11:06 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/io/wait/test_io_wait.rb (TestIOWait#fill_pipe):
	  Errno::EWOULDBLOCK may not be the same as Errno::EAGAIN.  patch by
	  phasis68 (Heesob Park) at [ruby-core:49894].  [Bug #7420]

Thu Nov 29 17:03:38 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/test_case.rb:  Determine path to certificates to avoid
	  build-dir problems.
	* test/rubygems/test_gem_security_signer.rb:  Use predetermined paths
	  to avoid build-dir problems.

Thu Nov 29 16:18:14 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/test_case.rb:  Disable loading of keys and certificates
	  outside rubygems or ruby tests as the files are not available (or
	  necessary).

Thu Nov 29 16:14:41 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_backtrace.c (rb_debug_inspector_open): use RARRAY_LENINT() for
	  int variable.

Thu Nov 29 15:59:55 2012  Koichi Sasada  <ko1@atdot.net>

	* include/ruby/debug.h: add rb_debug_inspector_* APIs.

	* vm_backtrace.c: ditto.

	* common.mk: add dependency from vm_backtrace.o to
	  include/ruby/debug.h.

	* proc.c (rb_binding_new_with_cfp): constify.

	* vm.c (rb_vm_get_ruby_level_next_cfp): constify.

	* vm_core.h, vm_trace.c: move decls.

Thu Nov 29 15:56:14 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/rdoc/test_case.rb (RDoc::TestCase#verbose_capture_io):
	  defined for asserts of warnings.

	* test/rdoc: use verbose_capture_io on asserts of warnings.
	  they failed when tests was run with RUBYOPT=-W0.

Thu Nov 29 15:53:38 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/psych/extconf.rb: added --enable-bundled-libyaml option.  this
	  enforces using bundled libyaml.

Thu Nov 29 15:51:54 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems*:  Updated to RubyGems 2.0
	* test/rubygems*:  ditto.

	* common.mk (prelude):  Updated for RubyGems 2.0 source rearrangement.

	* tool/change_maker.rb:  Allow invalid UTF-8 characters in source
	  files.

Thu Nov 29 15:38:14 2012  Koichi Sasada  <ko1@atdot.net>

	* include/ruby/debug.h: provide rb_tracearg_*() APIs,
	  instead of rb_tracepoint_attr_*().
	  These APIs are for debuggers/profilers.
	  They will be explained in another docs sometime.

	* vm_trace.c: ditto.

Thu Nov 29 15:10:45 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* test/minitest/test_minitest_unit.rb: restore orig_verbose only
	  if it is set. This broke rdoc's tests.
	  http://u64.rubyci.org/~chkbuild/ruby-trunk/log/20121129T050102Z.diff.html.gz

Thu Nov 29 14:56:30 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c (rb_tracepoint_attr_method_id):
	  rename TracePoint#id to TracePoint#method_id.

	* include/ruby/debug.h: ditto.

	* test/ruby/test_settracefunc.rb: ditto,

Thu Nov 29 14:49:10 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c (rb_tracepoint_attr_defined_class):
	  rename TracePoint#klass to TracePoint#defined_class.
	  [ruby-core:50187] Re: [ruby-trunk - Feature #6895]

	* include/ruby/debug.h: ditto.

	* test/ruby/test_settracefunc.rb: ditto.

Thu Nov 29 14:27:57 2012  Koichi Sasada  <ko1@atdot.net>

	* gc.c (gc_stat): prepare Symbol objects at first time
	  to make it fast.

Thu Nov 29 14:02:15 2012  Koichi Sasada  <ko1@atdot.net>

	* gc.c (gc_stat): GC.stat supports new information
	  * total_allocated_object: total allocated object number.
	  * total_freed_object: total freed object number.
	  Above two numbers are only accumulated and they will
	  overflow (return to 0). Please use them as a hint.

Thu Nov 29 12:13:54 2012  Ryan Davis  <ryand-ruby@zenspider.com>

	* lib/minitest/*: Imported minitest 4.3.2 (r8026)
	* test/minitest/*: ditto

Thu Nov 29 11:06:06 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (thread_start_func_2): remove unused code. When
	  th->safe_level == 4, th->errinfo never be thrown. So, to
	  create new exception makes no sense.

Thu Nov 29 10:29:53 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_backtrace.c: same as a last patch.

Thu Nov 29 10:24:25 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_backtrace.c: use `long' for return values of `NUM2LONG()'.

Thu Nov 29 09:52:08 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* thread.c (do_select): suppress warning (uninitialized value warning)
	  with UNINITIALIZED_VAR().

Thu Nov 29 09:36:09 2012  Koichi Sasada  <ko1@atdot.net>

	* eval.c (ruby_cleanup): delay THREAD_KILLED timing.
	  It should be located just before rb_thread_terminate_all().

Thu Nov 29 09:10:17 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_backtrace.c (vm_backtrace_to_ary): support range argument
	  like Array#[].
	  [ruby-core:50092] [ruby-trunk - Feature #7434]
	  Test and document is not available. Please help us.

Thu Nov 29 06:46:33 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (thread_start_func_2): small cleanups.

Thu Nov 29 06:37:08 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (thread_start_func_2): remove unused code.
	  this function never be used for main thread.

Thu Nov 29 06:27:55 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (thread_start_func_2): remove unused code.
	  errinfo = th->errinfo; and errinfo = rb_errinfo(); are
	  the same.

Thu Nov 29 05:26:32 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_backtrace.c (backtrace_to_str_ary2): rename to backtrace_to_str_ary.

	* vm_backtrace.c (rb_backtrace_to_str_ary): use `backtrace_to_str_ary()'.

	* vm_backtrace.c (backtrace_to_frame_ary): rename to
	  backtrace_to_location_ary.

Thu Nov 29 05:19:25 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* probes.d: Change function-entry probe to method-entry.
	* insns.def: ditto
	* probes_helper.h: ditto
	* test/dtrace/test_function_entry.rb: ditto
	* test/dtrace/test_singleton_function.rb: ditto
	* vm.c: ditto
	* vm_eval.c: ditto
	* vm_insnhelper.c: ditto

Thu Nov 29 04:45:17 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_backtrace.c: rename Class name from
	  ::RubyVM::Backtrace and ::RubyVM::Backtrace::Location
	  to ::Thread::Backtrace and ::Thread::Backtrace::Location.

Wed Nov 28 23:52:02 2012  Masaya Tarui  <tarui@ruby-lang.org>

	* NEWS (Thread) remove incompatible changes about trap.

Wed Nov 28 23:39:01 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c (rb_mutex_sleep): fix to allow spurious wakeup.
	  [ruby-dev:46654] [ruby-trunk - Bug #7455]

	* NEWS: write about spurious wakeup.

Wed Nov 28 22:57:23 2012  Koichi Sasada  <ko1@atdot.net>

	* thread_win32.c: catch up latest change of BLOCKING_REGION.

Wed Nov 28 22:54:21 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_call_method): fix undefined behavior.
	  Should not access scope local variable from outer scope.

Wed Nov 28 22:20:55 2012  Masaya Tarui  <tarui@ruby-lang.org>

	* test/ruby/test_thread.rb (test_thread_status_in_trap): change test for
	  thread status in trap. now can accept Thread#join and Thread#value in trap.

Wed Nov 28 21:58:47 2012  Koichi Sasada  <ko1@atdot.net>

	* include/ruby/thread.h (rb_thread_call_without_gvl2): change
	  meaning of function.
	  This function is called with same parameters of
	  `rb_thread_call_without_gvl()'.
	  However, if interrupts are detected, then return immediately.

	* thread.c: implement `rb_thread_call_without_gvl2()'.

Wed Nov 28 21:31:21 2012  Masaya Tarui  <tarui@ruby-lang.org>

	* thread.c (thread_join_sleep): check spurious wakeup by itself for
	corresponding status change in trap context.
	* vm_core.h (struct rb_thread_struct): add rb_thread_list_t and use as join_list for
	reentry by trap context.
	* thread.c (thread_start_func_2): ditto.
	* thread.c (remove_from_join_list): ditto.
	* thread.c (rb_thread_atfork): ditto.
	* thread.c (thread_join): ditto. & remove trap handler check.
	* thread.c (sleep_forever): add argument : spurious_check.
	* thread.c (sleep_timeval): ditto.
	* thread.c (rb_thread_sleep_forever): set spurious_check.
	* thread.c (rb_thread_sleep_deadly): ditto.
	* thread.c (sleep_for_polling): ditto.
	* thread.c (rb_thread_wait_for): ditto.
	* thread.c (sleep_wait_for_interrupt): bypass spurious_check.

Wed Nov 28 21:23:18 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/psych/yaml/emitter.c (yaml_emitter_write_indicator): constify.

	* ext/psych/yaml/emitter.c (yaml_emitter_write_block_scalar_hints):
	  ditto.

	* ext/psych/extconf.rb: mingw32 also needs macros for win32, not
	  only mswin32.

	* ext/psych/extconf.rb: compile sources in the source directory
	  without copying by using VPATH.

Wed Nov 28 21:18:57 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (MakeMakefile#each_compile_rules): splat $(*VPATH*) for
	  each VPATH elements.

Wed Nov 28 16:40:14 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* vm_core.h (enum rb_thread_status): remove THREAD_TO_KILL
	* vm_core.h (struct rb_thread_struct): add to_kill field
	* thread.c (terminate_i): convert THREAD_TO_KILL to to_kill.
	* thread.c (rb_threadptr_to_kill): ditto.
	* thread.c (rb_thread_kill): ditto.
	* thread.c (rb_thread_wakeup_alive): ditto.
	* thread.c (thread_list_i): ditto.
	* thread.c (static const char): ditto.
	* thread.c (thread_status_name): ditto.
	* thread.c (rb_thread_status): ditto.
	* thread.c (rb_thread_inspect): ditto.
	* vm_backtrace.c (thread_backtrace_to_ary): ditto.

	* thread.c (rb_threadptr_execute_interrupts): fix thread status
	  overwritten issue. [Bug #7450] [ruby-core:50249]

	* test/ruby/test_thread.rb (test_hread_status_raise_after_kill):
	  test for the above.
	* test/ruby/test_thread.rb (test_thread_status_in_trap): test for
	  thread status in trap.
	* test/ruby/test_thread.rb (test_status_and_stop_p): remove
	  Thread.control_interrupt unsafe test. Thread#kill no longer
	  changes thread status. Instead of, Thread#kill receiver changes
	  their own status when receiving kill signal.

Wed Nov 28 16:21:46 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (struct rb_mutex_struct): add allow_trap field.
	* internal.h (rb_mutex_allow_trap): added.
	* thread.c (rb_mutex_lock, rb_mutex_unlock): check mutex->allow_trap.
	* thread.c (mutex_sleep): remove trap check because it uses
	  rb_mutex_lock and rb_mutex_unlock internally.
	* thread.c (rb_mutex_allow_trap): new helper function for the above.

	* io.c (io_binwrite): mark fptr->write_lock as writable in trap.

	* test/ruby/test_signal.rb (test_trap_puts): test for the above.

Wed Nov 28 16:59:12 2012  Koichi Sasada  <ko1@atdot.net>

	* proc.c: remove Proc#== and Proc#eql?.
	  Proc objects compared with their object ids.
	  [Bug #4559]

	* test/ruby/test_proc.rb: remove related test.

Wed Nov 28 16:41:04 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/servlet.rb:  Add support for serving documentation from a
	  subdirectory.
	* lib/rdoc/generator/darkfish.rb:  ditto
	* test/rdoc/test_rdoc_servlet.rb:  Test for above
	* test/rdoc/test_rdoc_servlet.rb:  ditto

Wed Nov 28 15:37:17 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: fix r37924: run only on i[3-6]86-linux.

Wed Nov 28 15:31:11 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (FMODE_SYNCWRITE): removed unused macro.

Wed Nov 28 15:19:25 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* configure.in: revert r37911, r37906 and r37904 which break build
	  with non-gcc and/or non-IA32 compilers, e.g. Solaris Studio,
	  Fujitsu C Compiler. [ruby-dev:46646] [Bug #7451]

Wed Nov 28 14:50:55 2012  Koichi Sasada  <ko1@atdot.net>

	* ext/psych/extconf.rb: copy sources into build directory,
	  not into srcdir.

Wed Nov 28 14:34:06 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_mutex_lock): moved trap context check from
	  rb_mutex_trylock because try_lock have no change to make
	  a deadlock.
	* thread.c (rb_mutex_trylock): ditto.
	* NEWS: news for the above.

Wed Nov 28 13:39:54 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (thread_s_new): uses main_thread->status instead of
	  th->inhibit_thread_creation for preventing thread creation.
	* vm_core.h (rb_vm_struct): remove inhibit_thread_creation field.
	* thread.c (rb_thread_terminate_all): ditto.

Wed Nov 28 13:27:29 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/extconf.rb: use embedded libyaml if no system libyaml is
	  found. [ruby-core:49463]
	* ext/psych/lib/psych.rb: updating to psych 2.0.0
	* ext/psych/lib/psych/deprecated.rb: updated docs
	* ext/psych/psych.gemspec: updated to psych 2.0.0
	* ext/psych/psych.h: fixing header file include for rename
	* ext/psych/psych_emitter.c: renamed to avoid libyaml conflict.
	* ext/psych/psych_emitter.h: ditto
	* ext/psych/psych_parser.c: ditto
	* ext/psych/psych_parser.h: ditto
	* ext/psych/psych_to_ruby.c: ditto
	* ext/psych/psych_to_ruby.h: ditto
	* ext/psych/psych_yaml_tree.c: ditto
	* ext/psych/psych_yaml_tree.h: ditto
	* ext/psych/yaml/LICENSE: embedding libyaml 0.1.4
	* ext/psych/yaml/api.c: ditto
	* ext/psych/yaml/config.h: ditto
	* ext/psych/yaml/dumper.c: ditto
	* ext/psych/yaml/emitter.c: ditto
	* ext/psych/yaml/loader.c: ditto
	* ext/psych/yaml/parser.c: ditto
	* ext/psych/yaml/reader.c: ditto
	* ext/psych/yaml/scanner.c: ditto
	* ext/psych/yaml/writer.c: ditto
	* ext/psych/yaml/yaml.h: ditto
	* ext/psych/yaml/yaml_private.h: ditto

Wed Nov 28 12:54:59 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (thread_join): A trap handler check was moved from
	  thread_join_m because Thread#value should be raised an exception
	  too.
	* thread.c (thread_join_m): remove trap handler check.
	* test/ruby/test_thread.rb (test_thread_join_in_trap): add test
	  for thread#value.
	* NEWS: documentation fix for the above.

Wed Nov 28 11:07:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* ext/fiddle/closure.c: Documentation for Fiddle
	* ext/fiddle/lib/fiddle/import.rb: ditto
	* ext/fiddle/lib/fiddle/value.rb: ditto
	* ext/fiddle/lib/fiddle/pack.rb: ditto
	* ext/fiddle/lib/fiddle/cparser.rb: ditto
	* ext/fiddle/lib/fiddle/struct.rb: ditto
	* ext/fiddle/lib/fiddle/function.rb: ditto

Wed Nov 28 09:15:51 2012  Ryan Davis  <ryand-ruby@zenspider.com>

	* ext/strscan/strscan.c: Added #charpos for multibyte string position.
	* test/strscan/test_stringscanner.rb: ditto

Wed Nov 28 09:00:34 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/fiddle/fiddle.c: adding alignment constants for compatibility
	  with DL.
	* ext/fiddle/fiddle.h: ditto
	* ext/fiddle/lib/fiddle/cparser.rb: importing the C parser for DL
	  backwards compatibility.
	* ext/fiddle/lib/fiddle/import.rb: importing the import DSL for DL
	  backwards compatibility.
	* ext/fiddle/lib/fiddle/pack.rb: importing structure pack for DL
	  backwards compatibility.
	* ext/fiddle/lib/fiddle/value.rb: ditto
	* ext/fiddle/lib/fiddle/struct.rb: importing struct DSL for DL backwards
	  compatibility.
	* test/dl/test_c_struct_entry.rb: importing tests
	* test/dl/test_c_union_entity.rb: ditto
	* test/dl/test_cparser.rb: ditto
	* test/dl/test_import.rb: ditto
	* test/fiddle/test_c_struct_entry.rb: ditto
	* test/fiddle/test_c_union_entity.rb: ditto
	* test/fiddle/test_cparser.rb: ditto
	* test/fiddle/test_import.rb: ditto

Wed Nov 28 08:56:00 2012  Zachary Scott <zachary@zacharyscott.net>

	* doc/globals.rdoc: Add documentation file for magic globals
	[ruby-core:29048] [Bug #3022]

Wed Nov 28 08:55:00 2012  Zachary Scott <zachary@zacharyscott.net>

	* .document: Add README's to be included with docs

Wed Nov 28 08:26:00 2012  Zachary Scott <zachary@zacharyscott.net>

	* ext/dl/lib/dl.rb: Deprecation notice for DL

Wed Nov 28 08:25:00 2012  Zachary Scott <zachary@zacharyscott.net>

	* ext/fiddle/closure.c: Documentation for Fiddle
	* ext/fiddle/pointer.c: ditto
	* ext/fiddle/function.c: ditto
	* ext/fiddle/lib/fiddle.rb: ditto
	* ext/fiddle/fiddle.c: ditto
	* ext/fiddle/handle.c: ditto

Wed Nov 28 04:53:40 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/fiddle/handle.c: Make Fiddle independent of DL, copy DL::Handle
	  to Fiddle::Handle.
	* ext/fiddle/pointer.c: Make Fiddle independent of DL, copy
	  DL::Pointer to Fiddle::Pointer.
	* test/fiddle/test_func.rb: relevant tests
	* test/fiddle/test_handle.rb: ditto
	* test/fiddle/test_pointer.rb: ditto
	* ext/dl/lib/dl/struct.rb: use Fiddle::Pointer if available
	* ext/fiddle/extconf.rb: check for dlfcn.h
	* ext/fiddle/fiddle.c: add constants for sizeof() things
	* ext/fiddle/fiddle.h: include dlfcn.h
	* ext/fiddle/function.c: expose a C function for creating new
	  Fiddle::Function objects.
	* ext/fiddle/lib/fiddle.rb: include constants for dl backwards compat
	* ext/fiddle/lib/fiddle/function.rb: read the pointer from the
	  function for dl backwards compat.
	* test/dl/test_callback.rb: check the addresses of the pointers rather
	  than their types.
	* test/fiddle/helper.rb: remove dependency on dl
	* test/fiddle/test_closure.rb: ditto
	* test/fiddle/test_fiddle.rb: ditto

Wed Nov 28 03:03:28 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in (opt-dir): don't use non portable flag -E of sed.

Wed Nov 28 02:55:35 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in (ARCH_FLAG): __sync_val_compare_and_swap_4 needs
	  -march=$target_cpu on at least linux gcc 4.1.
	  patched by KOSAKI Motohiro

Tue Nov 27 22:03:09 2012  Akinori MUSHA  <knu@iDaemons.org>

	* string.c (rb_str_enumerate_chars, rb_str_enumerate_codepoints)
	  (rb_str_enumerate_lines): Dummy initialization of ary has been
	  replaced with UNINITIALIZED_VAR().

Tue Nov 27 21:29:00 2012  Kenta Murata  <mrkn@mrkn.jp>

	* bignum.c (bigdivrem): optimize the way to retry calculation of
	  bigdivrem so that the calculation is started from the point where
	  the last interruption was occurred.

	* bignum.c (bigdivrem1): ditto.

	* test/ruby/test_bignum.rb: add a test case for rb_bigdivrem in the
	  case that an interruption is occurred during bigdivrem1 is running.

Tue Nov 27 19:56:43 2012  Koichi Sasada  <ko1@atdot.net>

	* vm.c (rb_vm_make_env_object): make Proc object if Env is possible
	  to point block.
	  [ruby-core:41038] [ruby-trunk - Bug #5634]

	* vm.c (rb_vm_make_proc): No need to make Proc object here.

	* bootstraptest/test_proc.rb: add tests.

Tue Nov 27 18:51:06 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* ruby_atomic.h (ATOMIC_CAS): added for Solaris and other platforms.
	* ruby_atomic.h, signal.c (NEED_RUBY_ATOMIC_OPS): renamed from
	  NEED_RUBY_ATOMIC_EXCHANGE.
	* signal.c (ruby_atomic_compare_and_swap): naive, non-atomic
	  compare-and-swap implementation only used for platforms without
	  valid support for atomic operations.

Tue Nov 27 17:43:46 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/*:  Added --root option for building documentation outside
	  the source directory.
	* test/rdoc/*:  ditto
	* common.mk (rdoc):  Added --root to rdoc rule

Tue Nov 27 16:24:45 2012  Eric Hodel  <drbrain@segment7.net>

	* test/rdoc/test_rdoc_ri_paths.rb:  Fixed duplicate path bug which
	  caused windows failures.

Tue Nov 27 16:06:00 2012  Eric Hodel  <drbrain@segment7.net>

	* test/rdoc/test_rdoc_generator_darkfish.rb:  Updated tests for windows
	* test/rdoc/test_rdoc_options.rb:  ditto
	* test/rdoc/test_rdoc_parser.rb:  ditto
	* test/rdoc/test_rdoc_rdoc.rb:  ditto
	* test/rdoc/test_rdoc_ri_driver.rb:  ditto
	* test/rdoc/test_rdoc_servlet.rb:  ditto

Tue Nov 27 15:13:51 2012  Eric Hodel  <drbrain@segment7.net>

	* common.mk (rdoc):  Set --debug for rdoc generation in case of bugs

Tue Nov 27 14:56:45 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc/rubygems_hook.rb:  Updated for (upcoming) RubyGems 2
	  import.
	* test/rdoc/test_rdoc_rubygems_hook.rb:  ditto

Tue Nov 27 13:59:29 2012  Narihiro Nakamura  <authornari@gmail.com>

	* NEWS: add improvements of the garbage collector.

Tue Nov 27 13:27:46 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc*:  Updated to RDoc 4.0 (pre-release)
	* bin/rdoc:  ditto
	* test/rdoc*:  ditto
	* NEWS:  Updated with RDoc 4.0 information

Tue Nov 27 12:17:11 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c (rb_thread_terminate_all): retry broadcast only when
	  an exception is raised.

Tue Nov 27 12:02:25 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c (rb_thread_terminate_all): broadcast terminate event
	  not only an interrupt exception but any exceptions.

Tue Nov 27 10:55:09 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* eval.c (ruby_cleanup): set thread status to THREAD_KILLED
	  for preventing thr.raise.
	* test/ruby/test_thread.rb (test_main_thread_status_at_exit):
	  test for the above.

Tue Nov 27 10:31:29 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_thread_terminate_all): suppress a warning.

Tue Nov 27 09:29:11 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (thread_join): raises ThreadError if target thread
	  is a main thread.
	* test/ruby/test_thread.rb (test_thread_join_main_thread):
	  test for the above.
	* NEWS: news for the above.

Tue Nov 27 09:24:47 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (thread_join): raises ThreadError if target thread
	  is a current thread.
	* test/ruby/test_thread.rb (test_thread_join_current):
	  test for the above.
	* NEWS: news for the above.

Tue Nov 27 09:59:16 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/extmk.rb (extmake): close mkmf.log for each libraries so that
	  failure messages are not mixed.

Tue Nov 27 09:58:48 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/digest/*/extconf.rb, ext/openssl/extconf.rb: get git rid of
	  post-1.8 feature require_relative for cross compilation.
	  [ruby-core:50160] [Bug #7439]

Tue Nov 27 09:17:59 2012  Koichi Sasada  <ko1@atdot.net>

	* NEWS: add TracePoint.

Tue Nov 27 08:16:03 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c: rename TracePoint#file and TracePoint#line
	  to TracePoint#path and TracePoint#lineno respectively.
	  They are consistent to RubyVM::Backtrace::Location.

	* include/ruby/debug.h: ditto.

	* vm_core.h: ditto.

	* test/ruby/test_settracefunc.rb: ditto.

Tue Nov 27 08:04:26 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_thread_terminate_all): broadcast eTerminateSignal
	  again when Ctrl-C was pressed. [Feature #1952] [ruby-dev:39107]

Tue Nov 27 07:58:03 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h: add members to rb_trace_arg_t:
	  * `klass_solved' represents klass and id is checked.
	  * `line' represents line calculated from cfp.
	  * `file' represents line calculated from cfp.

	* vm_trace.c: fix to use above data structures.
	  No need to calculate klass and id, line and file
	  pairs for each trace points.

Tue Nov 27 07:47:09 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_thread_terminate_all): add RUBY_VM_CHECK_INTS_BLOCKING().
	  Otherwise the loop in this function behave as busy loop because
	  native_sleep() return immediately when RUBY_VM_INTERRUPTED() is true.

Tue Nov 27 04:12:49 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/extmk.rb (extmake): git rid of post-1.8 features for cross
	  compilation.  [ruby-core:50160] [Bug #7439]

Tue Nov 27 00:13:41 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_mutex_trylock, rb_mutex_unlock, mutex_sleep):
	  raises ThreadError if called from trap handler as Thread#join.
	* NEWS: news for the above.

Mon Nov 26 23:55:33 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* NEWS: update for Thread#join incompatible change.

Mon Nov 26 22:44:24 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_thread_terminate_all): use native_sleep() instead
	  of rb_thread_schedule(). Otherwise, it consume 100% cpu meaninglessly.
	  [Bug #5368] [ruby-dev:44546]
	* thread.c (thread_start_func_2): last sub-thread wakes up main thread.

Mon Nov 26 21:16:04 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* vm_core.h (RUBY_VM_SET_TIMER_INTERRUPT, RUBY_VM_SET_INTERRUPT)
	(RUBY_VM_SET_FINALIZER_INTERRUPT, RUBY_VM_SET_TRAP_INTERRUPT)
	(RUBY_VM_INTERRUPTED): use enum symbol instead of immediate value.
	* thread.c (thread_join_m, rb_threadptr_execute_interrupts): ditto.
	* signal.c (signal_exec): ditto.

Mon Nov 26 20:23:20 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (thread_join_m): use th->interrupt_mask instead of
	  th->in_trap.

	* vm_core.h (struct rb_thread_struct): remove in_trap member.
	* signal.c (signal_exec): ditto.
	* thread.c (thread_create_core): ditto.
	* thread.c (Init_Thread): ditto.

Mon Nov 26 20:23:49 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_argf.rb (TestArgf#test_chars): since marshal data is
	  binary, shouldn't pass via text mode.  use base64 encoded data.

Mon Nov 26 19:45:18 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* ruby_atomic.h (ATOMIC_CAS): new macro for compare-and-exchange.

	* vm_core.h (struct rb_thread_struct): add interrupt_mask member.
	* thread.c (thread_create_core, Init_Thread): initialize
	  th->thread_mask.

	* vm_core.h (RUBY_VM_INTERRUPTED_ANY): new macro for avoiding
	  bare th->interrupt_flag.
	* vm_core.h (RUBY_VM_INTERRUPTED, RUBY_VM_INTERRUPTED): check
	  th->interrupt_mask.
	* thread.c (set_unblock_function, rb_thread_schedule): replace
	  th->interrupt_flag with RUBY_VM_INTERRUPTED_ANY()

	* signal.c (signal_exec): set up thread->interrupt_mask for
	  preventing recursive trap handler.
	* vm_core.h (RUBY_VM_CHECK_INTS, RUBY_VM_CHECK_INTS_BLOCKING): ditto.

	* thread.c (rb_threadptr_execute_interrupts):
	  don't process interrupt if it is masked.
	  [Bug #6009] [ruby-core:42524]

Mon Nov 26 19:43:42 2012  Koichi Sasada  <ko1@atdot.net>

	* iseq.c (make_compile_option_value): add trace_instruction option.
	  a patch by davidbalbert (David Albert).
	  [Bug #6786]

Mon Nov 26 19:10:53 2012  Koichi Sasada  <ko1@atdot.net>

	* bootstraptest/test_thread.rb: try to `join' each 100
	  threads.
	  This benchmark seems consuming long time on travis-ci
	  several times (and make `failure').

Mon Nov 26 18:22:56 2012  Koichi Sasada  <ko1@atdot.net>

	* common.mk: specify label `built-ruby'.

	* benchmark/driver.rb: quote path.

Mon Nov 26 18:26:28 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* signal.c (signal_exec): add volatile to make sure setjmp safe.

Mon Nov 26 18:19:47 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* signal.c (signal_exec): suppress "warning: variable 'signum'
	  might be clobbered by 'longjmp' or 'vfork'" warning.

Mon Nov 26 18:15:47 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/driver.rb: accept multiple `-e'.
	  You don't need to use `;' separation character.
	  [ruby-core:50139] [ruby-trunk - Bug #7380]

Mon Nov 26 17:10:04 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* string.c (rb_str_enumerate_chars, rb_str_enumerate_codepoints)
	(rb_str_enumerate_lines): suppress "may be used uninitialized in
	  this function" warning.

Mon Nov 26 17:00:12 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* vm_core.h (rb_thread_struct): added 'in_trap' member for marking
	  running trap handler.
	* signal.c (signal_exec): turn on in_trap when running trap.
	* thread.c (Init_Thread, thread_create_core): initialize in_trap
	  when creating new threads.
	* thread.c (thread_join_m): raise ThreadError when running trap
	  handler.Bug [#6416][ruby-core:44956]
	* test/ruby/test_thread.rb (test_thread_join_in_trap): new test
	  for the above.

Mon Nov 26 16:36:13 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (argf_each_codepoint): add missing ARGF#codepoints [Bug #7438]

Mon Nov 26 15:50:29 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* bignum.c (bigdivrem): restart calculation when bigdivrem1 was
	  interrupted by signal. Otherwise, ruby script may see a garbage
	  value.

Mon Nov 26 15:33:02 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* bignum.c (big_div_struct): added volatile to 'stop' member.
	  Otherwise, "if (bds->stop)" check in bigdivrem1 don't read
	  memory and ignore interrupt.
	* bignum.c (bigdivrem, rb_big_stop): ditto.

Mon Nov 26 12:11:09 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/Makefile.sub (DLNOBJ): missing in r37821.

Mon Nov 26 10:50:19 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_process.rb (test_setsid): added a few wait for
	  preventing that Process.getsid(io.pid) makes Errno::ESRCH.

Sun Nov 25 22:34:00 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* array.c (ary_resize_smaller): new function to resize array.

	* array.c (rb_ary_delete): refactoring to extract a function.

	* array.c (rb_ary_delete_same): refactoring.
	  It renames function, reduces duplicated code and removes unused
	  code.

	* gc.c (wmap_final_func): follow the above change.

	* internal.h (rb_ary_delete_same): ditto.

Sun Nov 25 22:27:33 2012  Benoit Daloze  <eregontp@gmail.com>

	* array.c: fixes for the updated documentation in r35858:
	  Typos and #take/#drop accept to take/drop 0 elements.

Sun Nov 25 19:43:29 2012  Kazuki Tsujimoto  <kazuki@callcc.net>

	* NEWS: add a news about iconv.

Sun Nov 25 03:49:23 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/set.rb, test/test_set.rb: Move tests embedded in lib/set.rb
	  to test/test_set.rb.

Sun Nov 25 03:44:50 2012  Akinori MUSHA  <knu@iDaemons.org>

	* string.c (rb_str_each_line, rb_str_lines): String#lines now
	  returns an array instead of an enumerator.  Passing a block is
	  deprecated but still supported for backwards compatibility.
	  Based on the patch by yhara. [Feature #6670]

	* string.c (rb_str_each_char, rb_str_chars): Ditto for
	  String#chars.

	* string.c (rb_str_each_codepoint, rb_str_codepoints): Ditto for
	  String#codepoints.

	* string.c (rb_str_each_byte, rb_str_bytes): Ditto for
	  String#bytes.

	* NEWS: Add notes for the above changes.

Sun Nov 25 02:07:37 2012  Akinori MUSHA  <knu@iDaemons.org>

	* test/ruby/envutil.rb (Test::Unit::Assertions#assert_warning)
	  (Test::Unit::Assertions#assert_warn), test/ruby/envutil.rb,
	  test/ruby/test_enumerator.rb, test/ruby/test_io_m17n.rb,
	  test/ruby/test_regexp.rb, test/ruby/test_syntax.rb:
	  assert_warn() and assert_warning() are reversed.

Sat Nov 24 21:08:50 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* gc.c (wmap_final_func): rename variables to clarify the meaning.
	  In wmap2obj the key is WeakRef and the value is referenced object.
	  In obj2wmap the key is referenced object and the value is an array
	  of WeakRef.

	* gc.c (wmap_finalize): ditto.
	  [ruby-core:49044] [Bug #7304]

Sat Nov 24 21:01:55 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* array.c (rb_ary_delete_same_obj): new function for WeakRef.
	  This deletes same objects as item argument in the array.

	* internal.h (rb_ary_delete_same_obj): add a declaration.

	* gc.c (wmap_final_func): remove WeakRef object reference from the
	  array. rb_ary_delete() is not usable because it uses rb_equal() to
	  compare object references.

	* gc.c (wmap_finalize): remove recycled object references from weak
	  map hash properly. How to get object reference from object id was
	  wrong. st_delete() doesn't work properly if key and value arguments
	  are same. The key of obj2wmap is referenced object and the value of
	  obj2wmap is WeakRef array.

	* gc.c (wmap_aset): obj2wmap should contain WeakRef array in the
	  definition.

	* test/test_weakref.rb
	  (TestWeakRef#test_not_reference_different_object,
	   TestWeakRef#test_weakref_finalize): add tests for above.
	  [ruby-core:49044] [Bug #7304]

Sat Nov 24 19:44:41 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/nkf/nkf-utf8/nkf.c (unicode_iconv_combine): returning flags are
	  nkf_char.

Sat Nov 24 19:29:18 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* test/ruby/test_rubyoptions.rb (test_usage, test_usage_long):
	  reduced, renamed.

Sat Nov 24 13:10:14 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c (rb_tracepoint_attr_raised_exception): should not check
	  value before event checking.

	* vm_trace.c (rb_tracepoint_attr_return_value): ditto.

	* test/ruby/test_settracefunc.rb: add tests for TracePoint#return_value
	  and TracePoint#raised_exception.

Sat Nov 24 12:47:27 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/ruby/test_process.rb (TestProcess#test_setsid): "./ruby-trunk"
	  doesn't work on all environments. EnvUtil.rubybin would be suitable.

Sat Nov 24 12:28:04 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* array.c (rb_ary_aref): fix Segmentation fault at TestArray#test_aref
	  on x64 mingw. Variable argument of rb_scan_args() should be a pointer
	  (VALUE *), but 0 of variable argument seems not equal to null pointer
	  on x64 mingw.

Sat Nov 24 11:47:14 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* process.c (proc_getsid): adds new method for getting session id.
	  Contributed from fumiyas (Fumiyasu SATOH). Thank you!
	  [Feature #6757] [ruby-dev:45977]
	* configure.in: adds getsid check.
	* test/ruby/test_process.rb (TestProcess#test_setsid): new test
	  for the above.
	* NEWS: news for the above.

Sat Nov 24 10:59:14 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (thread_create_core): don't use th->thread_id before
	  initialized.

Sat Nov 24 00:00:53 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ruby.c (proc_options, process_options, ruby_process_options): take
	  care of the case argc is 0, and check if argv has NULL.
	  [ruby-core:49889] [Bug #7423]

Sat Nov 24 00:00:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (--disable-dln): option to disable dynamic linking
	  feature.  [ruby-core:37676] [Feature #4946]

Fri Nov 23 23:44:41 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (MakeMakefile#pkg_config): strip all white spaces for
	  mingw64+MSYS pkg-config which erroneously emits extra newlines.
	  [ruby-core:47998] [Bug #7163]

Fri Nov 23 17:31:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ruby.c (usage): wrap description lines if options are too long.

Fri Nov 23 11:13:46 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/test_rubyoptions.rb (TestRubyOptions#test_usage2): refine
	  assertion.

	* test/ruby/test_rubyoptions.rb (TestRubyOptions#test_usage2): now
	  --help option is for modern terminals.

Fri Nov 23 10:45:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* ext/socket/ipsocket.c (IPSocket#peeraddr): Fix example
	  [ruby-core:46429] [Bug #6732]

Fri Nov 23 02:40:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/cgi/core.rb: Documentation for CGI#header alias
	  Based on a patch by Marcus Stollsteimer
	  [ruby-core:49585] [Bug #7405]

Thu Nov 22 23:48:10 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (is_swept_object): extract from is_dead_object().

	* gc.c (rb_gcdebug_print_obj_condition): add the function for debug.
	  This function shows some conditions of given object (e.g.,
	  marked, in heap, swept).

	* gc.c (rb_gcdebug_sentinel): add the function for debug.
	  This function allow check to inadvertently free up an object.

Thu Nov 22 23:45:18 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* array.c (rb_ary_shared_with_p): fix cache validity check.
	  If #pop or #shift has been called against $: or $", the array will
	  be still shared with the snapshot. We check array length for cache
	  validity.
	  [ruby-core:49518] [Bug #7383]

	* test/ruby/test_require.rb
	  (TestRequire#test_require_with_array_pop,
	   TestRequire#test_require_with_array_shift): add tests for above.

Thu Nov 22 21:48:48 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* common.mk, win32/Makefile.sub (probes.dmyh): now be made in current
	  (=build) directory if build from the repository.

Thu Nov 22 21:34:51 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* test/ruby/test_rubyoptions.rb: added a test.

Thu Nov 22 20:32:07 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* complex.c (string_to_c_strict, string_to_c): check NUL.
	* rational.c (string_to_r_strict, string_to_r): ditto.

Thu Nov 22 20:21:45 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* Makefile.in (.dmyh.h): removed $(VPATH). GNU make don't
	  recognize suffix rule with VPATH.

Thu Nov 22 18:11:27 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* common.mk, Makefile.in, win32/Makefile.sub (.dmyh.h): nmake merges
	  explicit rules for same target, but not merges explicit rules and
	  implicit rules -- always explicit rules win.  So, need to add an
	  explicit rule for probes.h.  [Bug #7421] [ruby-core:49839]

Thu Nov 22 18:01:28 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* Makefile.in (probes.o): add -C to ignore #include in probes.d.

	* probes.d: include vm_opts.h instead of vm_core.h.

	* vm_opts.h (VM_COLLECT_USAGE_DETAILS): move definition from vm_core.h.

Thu Nov 22 17:45:17 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/nkf/nkf-utf8: Merge b0a6577a521d1bba5e19853f95d5c4b9be1072b5.
	  Support JIS X 0213 and some bugfixes.

Thu Nov 22 17:39:37 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* tool/gen_dummy_probes.rb: don't change #include, #if and #endif
	  lines. [Bug #7370]

Thu Nov 22 16:58:26 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* Makefile.in: run preprocessor when making probe.h
	* probes.d: define probe insn and insn__operand only when
	  VM_COLLECT_USAGE_DETAILS is 1. [Bug #7370]

Thu Nov 22 16:20:49 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* vm.c: Don't define vm_collect_usage_operand() and
	  static void vm_collect_usage_insn() when disabling
	  VM_COLLECT_USAGE_DETAILS. (refix r37796)

Thu Nov 22 15:26:02 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* vm_insnhelper.h: partly revert r37631 (DTrace support).
	  "vm usage information is always collected, so uncomment the
	  functions." causes performance impact. [Bug #7370]
	  Off course this revert disables related probes.

Thu Nov 22 14:14:36 2012  Akinori MUSHA  <knu@iDaemons.org>

	* re.c (rb_memsearch_ss): Apply performance improvement to short
	  byte array search for platforms without memmem(3).
	  [Feature #6311] [ruby-dev:45530]

Thu Nov 22 12:52:19 2012  Akinori MUSHA  <knu@iDaemons.org>

	* test/ruby/test_string.rb (TestString#test_index): Add some
	  corner cases to tests for String#index, which might fail if ruby
	  directly used a buggy memmem(3) implementation.

Thu Nov 22 08:06:42 2012  Narihiro Nakamura  <authornari@gmail.com>

	* test/ruby/test_gc.rb (test_profiler_clear): fix wrong method
	  calls [Bug #7419] [ruby-core:49828].

Thu Nov 22 02:22:33 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* NEWS: edited (order etc).

Wed Nov 21 22:52:59 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/io/wait/wait.c (io_wait_readable): add alias wait_readable.

	* ext/io/wait/wait.c (io_wait_writable): this is easier to use than
	  IO.select for a single IO object and is immune to the
	  limitations/inefficiency of select() on platforms where poll/ppoll
	  is available.  patched by Eric Wong.  [Feature #4646]

Wed Nov 21 22:27:52 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (garbage_collect): remove a duplicative probe.

Wed Nov 21 22:08:48 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (gc_profile_clear): realloc profile records if its size is
	  higher than the threshold, GC_PROFILE_RECORD_DEFAULT_SIZE * 2.

Wed Nov 21 21:53:29 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* complex.c (nucomp_to_c): added.

Wed Nov 21 21:35:38 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* include/ruby/util.h: removed extra semicolon in definition of
	  macro.
	* compile.c: ditto.
	* cont.c: ditto.
	* math.c: ditto.
	* node.c: ditto.
	* parse.y: ditto.

Wed Nov 21 18:46:37 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* rational.c (read_digits): due to a bit tighter rb_cstr_to_inum().

Wed Nov 21 16:13:37 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/bm_so_nsieve_bits.rb: add an encoding pragma because
	  this benchmark using strings (literals) as binary sequence.
	  Now, they are UTF-8 strings. [ruby-dev:46578]

Wed Nov 21 00:57:43 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* file.c (Init_File): null device definition uses rb_define_const
	  instead of rb_file_const.

Wed Nov 21 00:28:18 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* test/ruby/test_m17n_comb.rb (test_str_crypt): Use RbConfig to get
	  libc's directory. Patched by Vit Ondruch [ruby-core:49763] [Bug #7312]

Tue Nov 20 23:28:26 2012  Masaki Matsushita  <glass.saga@gmail.com>

	* marshal.c: add marshal readahead. marshalized Array, Hash and Struct
	  have size at least number of its elements, marshal readahead will
	  read the certain readable length and buffer when it needs more bytes.
	  marshal readahead prevents many calls to IO#getbyte and IO#read,
	  then it enables performance improvement.
	  [ruby-dev:45637] [Feature #6440]

Tue Nov 20 22:35:02 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* Makefile.in (.d.h): replace char * to const char * because somehow
	  current dtrace removes const of function declaration in probes.d.

Tue Nov 20 21:41:04 2012  Koichi Sasada  <ko1@atdot.net>

	* include/ruby/debug.h: introduced.
	  Debugging/profiling features will be located.

	* vm_trace.c: expose C-level TracePoint APIs.
	  Note that they are experimental.

	* vm_trace.c, include/ruby/debug.h: rename `rb_hook_flag_t'
	  to `rb_event_hook_flag_t'.
	  Macro names `RUBY_HOOK_FLAG_*' are also renamed to
	  `RUBY_EVENT_HOOK_FLAG_*'.

	* debug.h, vm_debug.h: rename debug.h to vm_debug.h.

	* common.mk: ditto.

	* debug.c, main.c, vm_core.h: ditto.

Tue Nov 20 21:12:37 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in (RUBY_DTRACE_AVAILABLE): only check dtrace availability.

	* configure.in (RUBY_DTRACE_POSTPROCESS): restore.

Tue Nov 20 21:22:44 2012  Masaki Suketa <masaki.suketa@nifty.ne.jp>

	* test/win32ole/test_win32ole_type.rb (test_implemented_ole_types):
	  IShellDispatch6 bundled in Windows 8. Thanks to phasis68 (Heesob
	  Park).  [ruby-core:49580][Bug #7403]

Tue Nov 20 21:06:41 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* complex.c: some improvements.
	* rational.c: ditto.

Tue Nov 20 21:01:16 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* common.mk (incs): BSD make cannot deal with non-prefixed dependency
	  and prefixed target.

Tue Nov 20 20:10:23 2012  Yusuke Endoh  <mame@tsg.ne.jp>

	* array.c (rb_ary_bsearch): fix rdoc bug (O(n log n) -> O(log n)).
	  Patch by Charlie Somerville.  [ruby-core:49661] [Bug #7409]

	* range.c (range_bsearch): ditto.

Tue Nov 20 19:02:44 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c: rename and add TracePoint APIs.
	  (1) TracePoint.new(...){...} creates a new trace point
	      but does not make it enable.
	  (2) TracePoint.trace(...){...} creates a new trace point
	      and enable it (same as old behavior).
	  (3) TracePoint#enable make it enable (renamed from TracePoint#retrace).
	      If block given, when enable only in block.
	  (4) TracePoint#disable make it disable (renamed from TracePoint#untrace).
	      If block given, when disable only in block.
	  (5) TracePoint#enabled? returns this trace is enable or not.
	  [Feature #6895]

	* test/ruby/test_settracefunc.rb: add tests.

Tue Nov 20 18:35:05 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c: add two methods:
	  (1) TracePoint#return_value which returns return
	      value on the :return and :c_return event.
	  (2) TracePoint#raised_exception which returns raised exception
	      value on the :raise event.
	  Each methods raise RuntimeError if it is called at unsupported
	  event.
	  Please review and give us feedback until next preview
	  release (Dec/2012) of Ruby 2.0.0.
	  [Feature #6895]

	* insns.def, vm.c, vm_eval.c, vm_insnhelper.c, eval.c, thread.c:
	  ditto.

	* vm_trace.c, vm_core.h: move definition of rb_trace_arg_t from
	  vm_trace.c to vm_core.h.
	  Caller fills rb_trace_arg_t and pass the pointer of this variable.

	* test/ruby/test_settracefunc.rb: fix tests to test this change.

Tue Nov 20 17:31:12 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: fix dtrace didn't work on darwin.

	* configure.in (RUBY_DTRACE_AVAILABLE): unify RUBY_DTRACE_POSTPROCESS
	  and RUBY_DTRACE_BSD_BROKEN.

Tue Nov 20 15:20:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* file.c (File.extname): Documentation for extname on dotfiles and
	files ending with a dot. Also, added example for this.
	[ruby-core:47852] [Bug #7112]

Tue Nov 20 14:19:20 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_signal.rb (TestSignal#test_signame): fix windows
	  test failure. Process.kill on windows can't send a signal to
	  another process.

Tue Nov 20 13:58:11 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (Init_IO): moved all rb_file_const() into file.c.
	* file.c (Init_File): replace with rb_file_const() with
	  rb_define_const() because RDoc don't care rb_file_const.
	  [Bug #5530]

Tue Nov 20 12:35:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* ruby.c (usage_msg): Fix typo [ruby-core:49205] [Bug #7327]

Tue Nov 20 12:35:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* file.c (File::NULL): Document File::NULL constant
	  [ruby-core:49384] [Bug #7365]

Tue Nov 20 12:05:15 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (rb_w32_read): Windows 8 fixed one of a bug of console
	  API.
	  based on the patch by Heesob Park at [ruby-core:49479] [Bug #7379]

Tue Nov 20 11:14:33 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in (--enable-dtrace): always call RUBY_DTRACE_BSD_BROKEN
	  for portability.
	  As the note, FreeBSD 8 has DTrace as the optional
	  feature (it is enabled by the build option), but doesn't have USDT.
	  FreeBSD 9 has USDT but they are still optional. FreeBSD 10 will
	  enable them by default.
	  The variable $rb_cv_prog_dtrace_g is "yes" only on FreeBSD 9 with
	  optional DTrace or FreeBSD 10. If it is "no", you cannot know
	  whether it doesn't need -G or DTrace is disabled. (by checking
	  error code, you can know)

Mon Nov 19 22:55:48 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* configure.in (--enable-dtrace): change help message

Tue Nov 20 11:05:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/tracer.rb (Tracer.trace_func): printf to stdout
	  Patch by Michal Fojtik [ruby-core:45219] [Bug #6490]

Mon Nov 19 21:24:18 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* vm_dump.c: not to include probes.h because the code does not depend
	  on it.
	* common.mk (vm_dump.$(OBJEXT)): remove dependency on probes.h

Tue Nov 20 10:14:22 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_thread_s_check_interrupt): removed redundant
	  GET_THREAD().

Tue Nov 20 10:12:46 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_threadptr_async_errinfo_active_p): added a small
	  comment.

Tue Nov 20 10:05:56 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_thread_blocking_region_end): replaced GET_THREAD()
	  with ruby_thread_from_native(). We don't have GVL here.

Tue Nov 20 09:56:15 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_threadptr_execute_interrupts) removed.
	* thread.c (rb_threadptr_execute_interrupts_common) renamed to
	  rb_threadptr_execute_interrupts. I.e. unified
	  rb_threadptr_execute_interrupts and rb_threadptr_execute_interrupts_common.
	* thread.c (rb_thread_schedule, rb_thread_execute_interrupts) s/_common//.

Tue Nov 20 09:48:34 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* signal.c (rb_get_next_signal): removed pointless signal
	  disabling. pthread_sigmask() only changes current thread
	  mask.

Tue Nov 20 09:36:55 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* signal.c (install_sighandler): added comments why we need
	  rb_disable_interrupt().

Tue Nov 20 09:31:33 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* signal.c (rb_disable_interrupt, rb_enable_interrupt): removed
	  USE_TRAP_MASK.
	* signal.c (trap_arg, trap_ensure): removed.
	* signal.c (trap, sig_trap): removed pointless signal disabling.
	  We don't need it because we no longer run trap handler on signal
	  handler context.

Tue Nov 20 09:20:49 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* prelude.rb: Moved Mutex#synchronize to
	* thread.c (rb_mutex_synchronize_m): here. [Bug #4266]

Tue Nov 20 08:36:15 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* signal.c (sig_signame): implements Signal.signame method
	[Feature #5613]
	* test/ruby/test_signal.rb (test_signame): adds test for above
	* NEWS: add an item about above

Mon Nov 19 16:30:59 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* struct.c (rb_struct_each_pair): yield associated pairs so that
	  an unsplat argument can get both, for consistency with Hash,
	  OpenStruct, and etc.  [ruby-dev:46533] [Bug #7382]

Mon Nov 19 16:17:53 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (LIBS): libelf is need on only FreeBSD.

Mon Nov 19 16:08:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* common.mk (RUBYLIB): purelib option in runruby.rb is deprecated
	  since r28841, so set to an empty list to get rid of a bogus path in
	  child processes, which caused an insecure operation exception in
	  test/ruby/test_encoding.rb:test_unsafe.

Mon Nov 19 15:40:50 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* .travis.yml (script): add OPTS=-v, requested by @_ko1.

Mon Nov 19 15:09:07 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: fix didn't enable_dtrace=yes on auto.

	* configure.in: see enable_dtrace for adding libelf on FreeBSD.

	* common.mk: VPATH is not needed.

Mon Nov 19 14:55:51 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c: add `Thread#backtrace_locations' method.
	  This method is similar to `caller_locations' method for
	  specific method.
	  And fix to accept `level' and `n' parameters for `Thread#backtrace'
	  and `Thread#backtrace_locations'.
	  `caller' (and `caller_locations') do not return `caller' method
	  frame.
	  However, `Thread#backtrace' (and `Thread#backtrace_locations')
	  return `Thread#backtrace' method frame itself
	  if `Thread.current.backtrace' was called.

	* vm_backtrace.c: ditto.

	* internal.h: ditto.

	* test/ruby/test_backtrace.rb: add tests.

Mon Nov 19 14:54:32 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* Makefile.in, common.mk (probes.h): moved to common.mk and changed to
	  see $(srcdir).

	* common.mk (probes.dmyh): now created it on $(srcdir) always.

	* win32/Makefile.sub (.SUFFIXES): removed common suffix.

Mon Nov 19 10:00:10 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* Makefile.in (.SUFFIX): bsdmake needs .SUFFIX is defined before use.

	* common.mk: fix path of probes.dmyh.

	* common.mk (vm_dump.o): depend probes.h.

	* configure.in: FreeBSD's USDT requires libelf.

Mon Nov 19 01:11:59 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* vm_core.h, probes_helper.h (RUBY_DTRACE_FUNC_ENTRY_HOOK,
	  RUBY_DTRACE_FUNC_RETURN_HOOK): move from vm_core.h to new file
	  probes_helper.h for narrowing dependency to probes.h.
	* common.mk (VM_CORE_H_INCLUDES): remove dependency to probes.h.
	* common.mk (vm.$(OBJEXT)): add dependency to probes_helper.h.
	* vm.c, vm_insnhelper.c: include probes_helper.h.

Sun Nov 18 16:33:00 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* configure.in, Makefile.in, common.mk: support DTrace on Solaris 10,
	  based on r26235 by Yugui. On Solaris 10, low optimization level
	  may also be needed, e.g. optflags="-xO1" or "-xO0" with Oracle
	  SolarisStudio 12.3 cc.

	* configure.in (--enable-dtrace): new option to enable/disable
	  DTrace support. By default, trying to enable if dtrace command
	  is found on the system. It is disabled when cross compiling.

	* configure.in (RUBY_DTRACE_POSTPROCESS): new macro. checks whether
	  the dtrace on the system needs postprocessing with "dtrace -G".
	  The postprocessing is needed on Solaris 10 and other platforms.

	* configure.in (RUBY_DTRACE_BSD_BROKEN): new macro. checks whether
	  the dtrace supports USDT.

	* configure.in (DTRACE): move after RUBY_DTRACE_POSTPROCESS.

	* configure.in (LD): On Solaris, /usr/ccs/bin/ld is preferred.

	* configure.in, Makefile.in, common.mk (DTRACE_OBJ): new macro for
	  DTrace probe object generated by postprocessing with "dtrace -G".

	* Makefile.in, common.mk (probes.$(OBJEXT)): DTrace probe object
	  generated by the postprocessing. New file probes.stamp is for
	  rebuilding related objects that may be modified by "dtrace -G".

	* configure.in, Makefile.in, common.mk (DTRACE_GLOMMED_OBJ): new
	  macro for DTrace static library hacks.

	* configure.in, Makefile.in (LIBRUBY_A_OBJS): ditto.

	* Makefile.in, common.mk (ruby-glommed.$(OBJEXT)): new target with
	  rule for DTrace static library hacks.

	* common.mk (DTRACE_DEPENDENT_OBJS): objects depended on probes.h.

Sun Nov 18 09:31:47 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* complex.c (read_comp): mathn compliant.
	* rational.c (read_num): ditto.

Sun Nov 18 02:50:12 2012  Luis Lavena <luislavena@gmail.com>

	* win32/file.c (replace_to_long_name): correct logic around wildcard
	  characters detection and ensure wide-chars are used as pattern.
	  [ruby-core:49451] [Bug #7374]

Sun Nov 18 02:02:46 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* complex.c (read_comp): modified handling of polar form.

Sun Nov 18 00:50:44 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* complex.c (read_comp): fixed handling of polar form.

Sun Nov 18 00:14:46 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* complex.c (string_to_c_strict, string_to_c): rewrote without regexp.
	* rational.c (string_to_r_strict, string_to_r): ditto.

Sat Nov 17 23:53:05 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* complex.c (make_patterns): should not accept extra sign.

Sat Nov 17 21:45:12  Luis Lavena  <luislavena@gmail.com>

	* win32/file.c (replace_to_long_name): skip expansion for all wildcard
	  characters.
	  [ruby-core:49451] [Bug #7374]

	* test/ruby/test_file_exhaustive.rb: add more assertions to test.

Sat Nov 17 12:14:50 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/yaml_tree.rb: use literal YAML style
	  when emitting multi-line strings. Thanks @atambo

	* test/psych/test_yaml.rb: test for change.

Sat Nov 17 12:03:41 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/scalar_scanner.rb: avoid raising exceptions when
	  parsing Floats and Integers. Thanks riffraff [ruby-core:44426]
	* test/psych/test_numeric.rb: associated test

Sat Nov 17 11:34:31 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* st.c (st_update): pass the key in st_table so that we can free
	  memory of the key in st_table when deleting.
	  [ruby-core:49220] [Bug #7330]

	* test/-ext-/st/test_update.rb
	  (Bug::StTable#test_pass_objects_in_st_table): add a test.

Sat Nov 17 11:26:36 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/core_ext.rb: move Kernel#y so that it can
	  manually be required as 'psych/y'.

	* ext/psych/lib/psych/y.rb: ditto

Sat Nov 17 08:13:48 2012  Benoit Daloze  <eregontp@gmail.com>

	* lib/abbrev.rb: fix r37113. Correct examples, fix style
	  and show explicit dependency (require 'abbrev').

Sat Nov 17 07:35:15 2012  Luis Lavena  <luislavena@gmail.com>

	* win32/file.c (replace_to_long_name): skip automatic path expansion
	  when wildcard character is used.  [ruby-core:49451] [Bug #7374]

	* test/ruby/test_file_exhaustive.rb: add a test for above.

Sat Nov 17 00:50:23 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* marshal.c (w_object): add flonum to arg->data to keep reference index
	  consistency. [ruby-core:49323] [Bug #7348]

	* test/ruby/test_marshal.rb: add a test for above.

Sat Nov 17 00:40:25 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* common.mk (incs): dist files need probes.dmyh.

	* common.mk (probes.dmyh): depends on generator script.

	* Makefile.in, common.mk, configure.in, win32/Makefile.sub (probes.h):
	  select generating with dtrace or copying dummy file by suffix rules.

Fri Nov 16 19:24:10 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c (rb_thread_call_without_gvl2): change the parameter of
	  `func' from `int *skip_interrupt' to `VALUE *flags'.
	  If (flags & RUBY_CALL_WO_GVL_FLAG_SKIP_CHECK_INTS) is not zero,
	  then skip checking interrupt.
	  [ruby-core:46547]

	* include/ruby/thread.h: ditto.

Fri Nov 16 18:59:05 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* Makefile.in (no-dtrace-probes.h): dmyprobes.h is in srcdir.

	* common.mk (dmyprobes.h): ditto.

Fri Nov 16 17:57:15 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* Makefile.in (probes.h): split build commands for dtrace-available
	  and unavailable platforms.

	* Makefile.in (incs): probes.h is a platform dependent file, so it
	  cannot be a part of prereq target.  move it to all-incs.

	* configure.in (DTRACE): move after AC_PROG_CC since cross_compiling
	  is set in it.

	* configure.in (DTRACE): ignore non-prefixed version if
	  cross-compiling.

	* Makefile.in, win32/Makefile.sub (probes.h): fix copying dmyprobes.h
	  path when outplace-build.

Fri Nov 16 15:27:36 2012  Masaki Matsushita  <glass.saga@gmail.com>

	* lib/net/pop.rb (POP3.certs): fix typo in comment.
	  patch from no6v (Nobuhiro IMAI) <nov@yo.rim.or.jp>.
	  [ruby-dev:46519] [Bug #7355]

Fri Nov 16 12:36:47 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* test/rake/helper.rb (Rake::TestCase#setup): revert r37669.
	  @orig_PWD should be the original pwd.

	* test/rake/test_*.rb: don't use @orig_PWD to load libraries.
	  It should be specified with relative path from the file.

Fri Nov 16 10:22:52 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* test/rake/helper.rb (Rake::TestCase#setup): @orig_PWD shouldn't be
	  Dir.pwd when the build directory is different from source directory.

Fri Nov 16 09:41:08 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/rake/version.rb:  workaround fix to build. see #7366
	  [ruby-dev:46522]

Fri Nov 16 07:23:18 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rake*:  Updated to rake 0.9.4
	  http://rake.rubyforge.org/doc/release_notes/rake-0_9_4_rdoc.html for
	  a list of changes in 0.9.4.

	* test/rake*:  ditto

	* NEWS:  ditto

Fri Nov 16 06:58:52 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rake*:  Updated to rake 0.9.3.  See
	  http://rake.rubyforge.org/doc/release_notes/rake-0_9_3_rdoc.html for
	  a list of changes in 0.9.3.

	* test/rake*:  ditto

	* bin/rake:  ditto

	* NEWS:  ditto

Thu Nov 15 22:39:32 2012  Yusuke Endoh  <mame@tsg.ne.jp>

	* range.c (range_bsearch): fix some bugs: a documentation bug, a wrong
	  condition, missed break in switch/case, and workaround for GCC
	  optimization. See [ruby-core:49364] in detail.  A great patch from
	  Heesob Park. [Bug #7352] [Feature #4766]

	* array.c (rb_ary_bsearch): fix similar bug (missed break).

	* test/ruby/test_range.rb: add two test cases for above.

Thu Nov 15 22:41:57 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_exec.h (GENTRY): GENTRY should be pointer size.
	  A patch by yoshidam (Yoshida Masato) [Bug #7332].

Thu Nov 15 13:20:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* man/erb.1: Fix grammar and copyright dates
	* man/goruby.1: ditto
	* man/irb.1: ditto
	* man/rake.1: ditto
	* man/ri.1: ditto
	* man/ruby.1: ditto
	  Patch by Arthur Gunn
	  [Fixes Github #210]

Thu Nov 15 11:35:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* man/ruby.1: Grammar edits for man page
	  Based on a patch by Michael Endsley [Fixes Github #183]

Thu Nov 15 00:47:20 2012  Yusuke Endoh  <mame@tsg.ne.jp>

	* array.c (rb_ary_bsearch): add Array#bsearch for binary search.
	  [ruby-core:36390] [Feature #4766]

	* test/ruby/test_array.rb: add a test for above.

	* range.c (range_bsearch): add Range#bsearch for binary search.
	  [ruby-core:36390] [Feature #4766]

	* test/ruby/test_range.rb: add a test for above

	* NEWS: added the two new methods.

Wed Nov 14 13:25:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/fileutils.rb (chmod): Add "X" to modes, convert format to table
	  [ruby-core:48965] [Bug #7288]

Wed Nov 14 11:51:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/csv.rb (init_comments): Document private method #init_comments.
	  Based on a patch from Vincent Batts [ruby-core:49172] [Bug #7319]

Wed Nov 14 00:54:00 2012  Kenta Murata  <mrkn@mrkn.jp>

	* Makefile.in (probes.h): create from probes.d

Tue Nov 13 18:44:01 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_call_cfunc_with_frame): don't use ci after
	  EXEC_EVENT_HOOK because ci can be overridden.

	* vm_eval.c: ditto.

	* method.h: change invoker's parameters types.

	* vm_method.c (call_cfunc_invoker_func): ditto.

Tue Nov 13 18:01:54 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (rb_mod_using): raise an ArgumentError if cyclic using is
	  detected.  based on the patch by Charlie Somerville.
	  [ruby-core:49092] Bug #7308

	* test/ruby/test_refinement.rb: related test.

Tue Nov 13 17:40:04 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* common.mk (vm_insnhelper.c): this target is useless and causes
	  ruby always need rebuild.

Tue Nov 13 17:35:49 2012  Koichi Sasada  <ko1@atdot.net>

	* compile.c (insn_data_to_s_detail): remove debug lines.

Tue Nov 13 17:28:47 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_caller_setup_args): save and restore
	  ci->argc and ci->blockptr before and after method invocations
	  because these method dispatches can override call_info.

	* bootstraptest/test_method.rb: add tests for this fix.

Tue Nov 13 16:38:02 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* common.mk (dmyprobes.h): always create for make dist.

	* Makefile.in (probes.h): create or copy dmyprobes.h

	* win32/Makefile.sub: only do copy dmyprobes.h.

Tue Nov 13 15:37:21 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* Makefile.in (.SUFFIX): .SUFFIX is needed here for .d.h on bsd make.

Tue Nov 13 15:34:35 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* common.mk Makefile.in win32/Makefile.sub (.d.h): it's not common.

Tue Nov 13 12:27:11 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: disable dtrace because it doesn't work on FreeBSD.

	* common.mk (clean-local): rm probes.h.

	* common.mk (parse.o): depend $(PROBES_H_INCLUDES).

	* common.mk (.d.h): moved from Makefile.in and use BASERUBY.

	* tool/gen_dummy_probes.rb: reimplemented with ruby because sed is not
	  available on Windows Microsoft VC++ environment.

Tue Nov 13 12:30:26 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/README.win32: added mention about build directory.  currently
	  we can not build ruby in win32 directory.  this problem is reported
	  by Masahiro Kitajima <katonbo@katontech.com>.

Tue Nov 13 11:03:47 2012  Masaki Matsushita  <glass.saga@gmail.com>

	* re.c (rb_memsearch_ss): performance improvement by using memmem(3) if
	  possible. [ruby-dev:45530] [Feature #6311]

	* configure.in: check existence of memmem(3) and that it is not broken.

Tue Nov 13 06:50:02 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* probes.d: add DTrace probe declarations. [ruby-core:27448]

	* array.c (empty_ary_alloc, ary_new): added array create DTrace probe.

	* compile.c (rb_insns_name): allowing DTrace probes to access
	  instruction sequence name.

	* Makefile.in: translate probes.d file to appropriate header file.

	* common.mk: declare dependencies on the DTrace header.

	* configure.in: add a test for existence of DTrace.

	* eval.c (setup_exception): add a probe for when an exception is
	  raised.

	* gc.c: Add DTrace probes for mark begin and end, and sweep begin and
	  end.

	* hash.c (empty_hash_alloc): Add a probe for hash allocation.

	* insns.def: Add probes for function entry and return.

	* internal.h: function declaration for compile.c change.

	* load.c (rb_f_load): add probes for `load` entry and exit, require
	  entry and exit, and wrapping search_required for load path search.

	* object.c (rb_obj_alloc): added a probe for general object creation.

	* parse.y (yycompile0): added a probe around parse and compile phase.

	* string.c (empty_str_alloc, str_new): DTrace probes for string
	  allocation.

	* test/dtrace/*: tests for DTrace probes.

	* vm.c (vm_invoke_proc): add probes for function return on exception
	  raise, hash create, and instruction sequence execution.

	* vm_core.h: add probe declarations for function entry and exit.

	* vm_dump.c: add probes header file.

	* vm_eval.c (vm_call0_cfunc, vm_call0_cfunc_with_frame): add probe on
	  function entry and return.

	* vm_exec.c: expose instruction number to instruction name function.

	* vm_insnhelper.c: add function entry and exit probes for cfunc
	  methods.

	* vm_insnhelper.h: vm usage information is always collected, so
	  uncomment the functions.

Mon Nov 12 19:14:50 2012  Akinori MUSHA  <knu@iDaemons.org>

	* configure.in (isinf, isnan): isinf() and isnan() are macros on
	  DragonFly which cannot be found by AC_REPLACE_FUNCS().  This
	  workaround enforces the fact that they exist on DragonFly.

Mon Nov 12 15:59:38 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_core.h (rb_call_info_t::refinements), compile.c (new_callinfo),
	  vm_insnhelper.c (vm_search_method): revert r37616 because it's too
	  slow.  [ruby-dev:46477]

	* test/ruby/test_refinement.rb (test_inline_method_cache): skip
	  the test until the bug is fixed efficiently.

Mon Nov 12 14:28:01 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/mkexports.rb (each_export): skip garbage generated by VS2012's
	  nmake.
	  reported and patched by Yoshida Masato at [Bug #7333] [ruby-dev:46484]

Sun Nov 11 18:58:55 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* test/date/test_date_{parse,strptime}.rb: changed the format of
	  some extra messages.

Sun Nov 11 18:41:34 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_parse.c (date__parse): revised the tight parser
	  (about handling of apostrophes).

Sun Nov 11 15:39:04 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* hash.c (rb_hash_s_create): just warn for wrong elements now.
	  [ruby-dev:46440] [Bug #7300]

	* hash.c (rb_hash_s_create): refine error messages.

	* error.c (rb_builtin_class_name): share for above.

Sun Nov 11 15:12:18 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (top_using): remove Kernel#using, and add main.using instead.

	* test/ruby/test_refinement.rb: related test.

Sun Nov 11 13:41:01 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (rb_using_refinement, rb_mod_using, f_using): clear method
	  cache only when using is called explicitly.

	* test/ruby/test_refinement.rb: related test.

Sun Nov 11 12:56:34 2012  Masaki Matsushita  <glass.saga@gmail.com>

	* lib/pstore.rb (PStore): fix not to replace ThreadError raised in
	  #transaction block with PStore::Error.
	  [ruby-core:39238] [Bug #5269]

Sun Nov 11 11:36:19 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_core.h (rb_call_info_t::refinements), compile.c (new_callinfo):
	  add a new field for inline method cache.

	* vm_insnhelper.c (vm_search_method): check rb_call_info_t::refinements
	  not to confuse inline method cache when module_eval is used with
	  refinements.

	* test/ruby/test_refinement.rb: related test.

Sun Nov 11 08:45:45 2012  Martin Duerst  <duerst@it.aoyama.ac.jp>

	* ruby.c: removed a comma before "before"

Sat Nov 10 23:02:31 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c: move immutable fields from struct heaps_slot and struct
	  sorted_heaps_slot into struct heaps_header.
	  Based on a patch from Sokolov Yura [Feature #6199][ruby-core:43592]

Sat Nov 10 19:28:16 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* complex.c: modified doc.
	* rational.c: ditto.

Sat Nov 10 18:20:10 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_parse.c: edited about era.

Sat Nov 10 12:13:41 2012  Kouhei Sutou  <kou@cozmixng.org>

	* tool/rbinstall.rb: Don't install *.gemspec under lib/.
	  [ruby-core:48966] [Bug #7289]
	  Reported by Vit Ondruch. Thanks!!!

Sat Nov 10 00:49:26 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* ruby_atomic.h: renamed from atomic.h to avoid header file name
	  conflict on Solaris 10. [ruby-dev:46414] [Bug #7287]

	* gc.c, signal.c, vm_core.h, common.mk: reflect the rename from
	  atomic.h to ruby_atomic.h.

Sat Nov 10 00:46:57 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* atomic.h: Revert r37491 which is a temporary workaround.

Sat Nov 10 00:33:31 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* siphash.h: check configure macros before include newer headers.

Fri Nov  9 23:33:05 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/erb.rb (ERB#run, ERB#result): eval under isolated bindings for
	  safe concurrent use.  [ruby-core:47638] [Bug #7046]

Fri Nov  9 23:05:06 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* random.c (BYTE_ORDER): define using configured WORDS_BIGENDIAN.

	* siphash.c (sip_init_state): use union to suppress warnings by gcc
	  4.7.

Fri Nov  9 19:40:03 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* array.c (rb_ary_splice): fix r37583 doesn't consider the case when
	  beg > array length.

Fri Nov  9 16:11:58 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* random.c (rb_memhash): use siphash.

Fri Nov  9 16:08:46 2012  Sokolov Yura funny-falcon  <funny.falcon@gmail.com>

	* array.c: speedup Array#unshift by using space in shared array.
	  [Feature #6638]
	  - when array owns its shared array (ARY_SHARED_NUM == 1), and there
	    is enough space then try unshift values directly into shared
	    array.
	  - when resulting array is big (~>64 items) then make it shared with
	    enough room for future #unshifts, and then insert into shared
	    array.

	* array.c (rb_ary_splice): use shared array in rb_ary_slice.
	  [Feature #6638]
	  - use ary_ensure_room_for_push when rb_ary_slice used to add at the
	    end of array, cause rb_ary_concat use rb_ary_slice.

	* array.c (ary_ensure_room_for_push): make array really suitable for
	  queue.  [Feature #6638]
	  when array is shared (which happens after Array#shift), and
	  ARY_SHARED_NUM == 1 (which is very often when array used as queue),
	  then make rb_ary_push push directly into shared array.

	* array.c (rb_ary_modify): steal shared array's container when
	  ARY_SHARED_NUM == 1.  [Feature #6638]
	  - Do not allocate new memory in rb_ary_modify when ARY_SHARED_NUM == 1
	    and length almost same.
	  - Store ARY_CAPA instead of RARRAY_LEN in ary_make_shared, to make
	    it useful.
	  - Fix rb_ary_sort_bang accordantly.

Fri Nov  9 16:00:00 2012  Zachary Scott  <zzak@zacharyscott.net>

	* ext/bigdecimal/bigdecimal.c: Documentation for BigDecimal
	  Based on a patch from Vincent Batts [ruby-core:49047] [Bug #7305]

Fri Nov  9 15:25:42 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/shellwords.rb (Shellwords#shellescape): Add back my original
	  real world example with some enhancement.

	* lib/shellwords.rb (Shellwords#shelljoin): Undo part of the
	  previous rdoc change.  This new example using a string-only
	  array was not in line with the description.

Fri Nov  9 12:58:13 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* string.c (rb_str_crypt): crypt(3) may return NULL.
	  Latest glibc (2.16?) crypt(3) actually returns NULL. [Bug #7312]

Fri Nov  9 12:07:06 2012  Akinori MUSHA  <knu@iDaemons.org>

	* include/ruby/ruby.h (alloca), eval_intern.h (alloca), gc.c
	  (alloca): Make alloca() globally available by moving the
	  ultimate ifdef's to ruby/ruby.h.  Gcc hides its builtin alloca()
	  when compiling with -ansi, and linking thus fails on platforms
	  that lack their own alloca() implementation in libc, which
	  include OpenBSD and some ports of NetBSD.  We use alloca()
	  everywhere including from within third party C extensions, so
	  alloca() must be made globally available. [Bug #7307]

	* addr2line.c (alloca): Replace the alloca() part with the
	  ultimate ifdef's. [Bug #7307]

Fri Nov  9 09:30:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* io.c (IO#new):
	  Fix indentation from r37444
	  [ruby-core:48052] [Bug #7179]

Fri Nov  9 07:36:00 2012  Kenta Murata  <mrkn@mrkn.jp>

	* bignum.c (bigmul0): enable big_mul_toom3.
	  [ruby-core:48552] [Bug #7242]

	* bignum.c (bigmul1_toom3): fix incorrect calculation.
	  the patch is made by Heesob Park.
	  [ruby-core:48552] [Bug #7242]

Fri Nov  9 05:33:00 2012  Kenta Murata  <mrkn@mrkn.jp>

	* bignum.c (bigmul0): disable big_mul_toom3 temporarily.
	  [ruby-core:48552] [Bug #7242]

	* test/ruby/test_bignum.rb (test_mul_large_numbers):
	  add a test for bigmul1_toom3 suggested in [Bug #7242].

Thu Nov  8 21:57:59 2012  Masaki Matsushita  <glass.saga@gmail.com>

	* re.c (rb_memsearch): performance improvement by using memchr().
	  [ruby-dev:45397] [Feature #6173]

Thu Nov  8 19:02:50 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/protocol.rb (Net::InternetMessageIO#each_crlf_line):
	  treat \r as newline as mame pointed. [ruby-dev:46425] [Bug #7278]

Thu Nov  8 11:32:11 2012  Akinori MUSHA  <knu@iDaemons.org>

	* configure.in (--with-opt-dir): Avoid nesting of double quotes
	  inside backquotes, since some traditional shells like PD KSH
	  (which OpenBSD's /bin/sh bases on) fail to parse them.

Thu Nov  8 09:34:00 2012  Kenta Murata  <mrkn@cookpad.com>

	* numeric.c: Add a caution that the results of the comparing
	  operations of two NaNs are undefined.
	  [#1720] [ruby-dev:38725] [ruby-core:36966]

Thu Nov  8 04:45:21 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* include/ruby/intern.h: Restore rb_enumeratorize as it was before
	  r37497 and introduce rb_enumeratorize_with_size instead. [#7302]

	* enumerator.c: ditto.

Wed Nov  7 15:22:37 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* numeric.c (ruby_float_step): fix r37514: it yielded with NaN
	  if the unit is infinity.

Wed Nov  7 15:46:12 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* lib/webrick.rb: fix typo. reported by Rohit Arondekar.
	  https://github.com/ruby/ruby/pull/211

Wed Nov  7 15:34:12 2012  Takeyuki FUJIOKA  <xibbar@ruby-lang.org>

	* lib/cgi/core.rb: alias CGI#http_header to CGI#header.

Wed Nov  7 12:49:39 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (rb_mod_refine): set RMODULE_IS_REFINEMENT to a created
	  refinement module, and don't override method_added.

	* vm_method.c (rb_method_entry_make): check redefinition of
	  optimized methods when a method is added to a refinement module.
	  [ruby-core:48970] [Bug #7290]

	* test/ruby/test_refinement.rb: related test.

Wed Nov  7 11:48:14 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* misc/ruby-additional.el (ruby-mode-set-encoding): now encoding needs
	  to be set always explicitly actually.  [Feature #6679]

Wed Nov  7 09:15:58 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* object.c (rb_mod_const_get): avoid inadvertent symbol creation.

Wed Nov  7 07:52:50 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enum.c (rb_enum_cycle_size): prefix with rb.

Wed Nov  7 04:32:15 2012  Luis Lavena  <luislavena@gmail.com>

	* test/ruby/test_file_exhaustive.rb: Remove FIXME skip on Windows
	  specific test because the test in question was already fixed.

Wed Nov  7 03:45:12 2012  Luis Lavena  <luislavena@gmail.com>

	* ext/zlib/extconf.rb: Recognize zlibwapi as linking library.
	  Patch by Daniel Berger.

	  [ruby-core:44979] [Feature #6421]

Wed Nov  7 02:06:40 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* enumerator.c: New method #size; constructor accepts size.
	                Have #to_enum accept a block
	                Warn when using deprecated form of constructor
	                Support #size for enumerators created from enumerators
	                Support for lazy.{map|flat_map|...}.size.

	* include/ruby/intern.h: RETURN_SIZED_ENUMERATOR for support of
	  sized enumerators.

	* array.c: Support for various enumerator.size.

	* enum.c: ditto.

	* hash.c: ditto.

	* numeric.c: ditto.

	* range.c: ditto.

	* string.c: ditto.

	* struct.c: ditto.

	* vm_eval.c: ditto.

Tue Nov  6 20:40:28 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* object.c (rb_mod_const_get): Fix constant missing exception class
	  and message to maintain backwards compatibility. Constant search
	  should start at Object when constant starts with '::'

	* test/ruby/test_module.rb: test for fixes

Tue Nov  6 16:50:00 2012  Masaki Matsushita  <glass.saga@gmail.com>

	* lib/tempfile.rb (Tempfile#inspect): fix confusing #inspect.
	  previous Tempfile#inspect says it is a File, but actually
	  it is not a File.

	    t = Tempfile.new("foo") #=> #<File:/tmp/foo20121106-31970-1ffbum0>
	    t.is_a? File #=> false

	  now Tempfile#inspect returns like:

	    t = Tempfile.new("foo")
	    #=> #<Tempfile:/tmp/foo20121106-31970-1ffbum0>

	  [ruby-core:47544] [Bug #7027]

Tue Nov  6 16:22:30 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* atomic.h: add #include <sys/atomic.h> for the workaround of
	  header file name conflict of atomic.h with /usr/include/atomic.h
	  on Solaris 10. [ruby-dev:46414] [Bug #7287]

Tue Nov  6 14:38:00 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/win32ole/test_win32ole.rb: now source encoding is UTF-8, so
	  binary strings in old scripts are dangerous.

Tue Nov  6 14:25:09 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/protocol.rb (Net::InternetMessageIO#each_crlf_line):
	  don't use /n in universal regexp. [ruby-dev:46394] [Bug #7278]

Tue Nov  6 09:42:26 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* string.c (rb_str_b): Add String#b, returning a copied string
	  whose encoding is ASCII-8BIT. [ruby-dev:45992] [Feature #6767]

Tue Nov  6 09:37:57 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ruby.c (load_file_internal): set default source encoding as
	  UTF-8 instead of US-ASCII. [ruby-core:46021] [Feature #6679]

	* parse.y (parser_initialize): set default parser encoding as
	  UTF-8 instead of US-ASCII.

Tue Nov  6 05:48:06 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/ruby/test_require.rb
	  (TestRequire#test_require_to_path_redefined_in_load_path,
	   TestRequire#test_require_to_str_redefined_in_load_path):
	  Suppress method redefined warning when test-all with RUBYOPT=-w.

Thu Nov  8 00:24:14 2012  Akinori MUSHA  <knu@iDaemons.org>

	* ext/curses/view.rb: Do not fail if the file to view is shorter
	  than the screen height.

Mon Nov  5 11:40:00 2012  Mark Somerville  <mark@scottishclmibs.com>

	* thread_pthread.c (rb_reserved_fd_p): fix typo in macro check
	  that prevented the ifdef ever being true.
	  [Bug #7281] [ruby-core:48940]

Mon Nov  5 23:28:57 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* file.c (rb_get_path_check_to_string): extract from
	  rb_get_path_check(). We change the spec not to call to_path of
	  String object.

	* file.c (rb_get_path_check_convert): extract from rb_get_path_check().

	* file.c (rb_get_path_check): follow the above change.

	* file.c (rb_file_expand_path_fast): remove check_expand_path_args().
	  Instead we call it in load.c.

	* file.c (rb_find_file_ext_safe): use rb_get_expanded_load_path() to
	  reduce expand cost.

	* file.c (rb_find_file_safe): ditto.

	* internal.h (rb_get_expanded_load_path): add a declaration.

	* internal.h (rb_get_path_check_to_string, rb_get_path_check_convert):
	  add declarations.

	* load.c (rb_construct_expanded_load_path): fix for compatibility.
	  Same checks in rb_get_path_check() are added. We don't replace
	  $LOAD_PATH and ensure that String object of $LOAD_PATH are frozen.
	  We don't freeze non String object and expand it every time. We add
	  arguments for expanding load path partially and checking if load path
	  have relative paths or non String objects.

	* load.c (load_path_getcwd): get current working directory for checking
	  if it's changed when getting load path.

	* load.c (rb_get_expanded_load_path): fix for rebuilding cache properly.
	  We check if current working directory is changed and rebuild expanded
	  load path cache. We expand paths which start with ~ (User HOME) and
	  non String objects every time for compatibility. We make this
	  accessible from other source files.

	* load.c (rb_feature_provided): call rb_get_path() since we changed
	  rb_file_expand_path_fast() not to call it.

	* load.c (Init_load): initialize vm->load_path_check_cache.

	* vm.c (rb_vm_mark): mark vm->load_path_check_cache for GC.

	* vm_core.h (rb_vm_struct): add vm->load_path_check_cache to store data
	  to check load path cache validity.

	* test/ruby/test_require.rb (TestRequire): add tests for require
	  compatibility related to cached expanded load path.
	  [ruby-core:47970] [Bug #7158]

Mon Nov  5 23:26:05 2012  Greg Price  <price@mit.edu>

	* load.c (rb_get_expanded_load_path): cache the expanded load
	  path.  This saves 4KB of allocation and some stats for every
	  element of the load path (so nearly a MB in my Rails app)
	  on every require.

	* load.c (rb_construct_expanded_load_path): ensure that $LOAD_PATH
	  entries are frozen strings.  The user must mutate $LOAD_PATH
	  itself rather than its individual entries.

	* vm_core.h (rb_vm_struct): add fields.

	* vm.c (rb_vm_mark): mark new fields.

	* ruby.c (process_options): modify $LOAD_PATH directly rather than
	  its elements.
	  Patch by Greg Price.
	  [ruby-core:47970] [Bug #7158]

Mon Nov  5 23:24:42 2012  Greg Price  <price@mit.edu>

	* load.c (rb_feature_p, rb_provide_feature): index $LOADED_FEATURES
	  so that require isn't so slow.

	* load.c (rb_provide_feature, get_loaded_features_index): ensure
	  that $LOADED_FEATURES entries are frozen strings.  The user
	  must mutate $LOADED_FEATURES itself rather than its individual
	  entries.

	* load.c (reset_loaded_features_snapshot): add a new function to reset
	  vm->loaded_features_snapshot.

	* load.c (get_loaded_features_index_raw): add a new function to get
	  the loaded-features index.

	* load.c (features_index_add_single): add a new function to add to the
	  loaded-features index a single feature.

	* load.c (features_index_add): add a new function to add to the
	  loaded-features index all the required entries for `feature`.

	* vm_core.h (rb_vm_struct): add fields.

	* vm.c (rb_vm_mark): mark new fields.

	* include/ruby/intern.h (rb_hash_clear): declare function.

	* hash.c (rb_hash_clear): make function non-static.
	  Patch by Greg Price.
	  [ruby-core:47970] [Bug #7158]

Mon Nov  5 23:23:51 2012  Greg Price  <price@mit.edu>

	* array.c (rb_ary_shared_with_p): new function.
	  Expose whether two arrays are shared (read-only, C only).

	* include/ruby/intern.h (rb_ary_shared_with_p): declare.
	  Patch by Greg Price.
	  [ruby-core:47970] [Bug #7158]

Mon Nov  5 23:21:14 2012  Greg Price  <price@mit.edu>

	* load.c (loaded_feature_path): clarify and briefly comment
	  function.  These clarifications have no effect on the behavior
	  of the function.

	* load.c (rb_feature_p): explain the search loop.  Especially
	  useful because the logic is complicated as described in the
	  second paragraph.
	  Patch by Greg Price.
	  [ruby-core:47970] [Bug #7158]

Mon Nov  5 22:45:03 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* ext/dl/win32/lib/Win32API.rb (Win32API#call): use 64bit pointer for x64
	  Windows. This would fix
	  TestSecureRandom#test_s_random_bytes_without_openssl error.
	  [ruby-core:47451] [Bug #6990]

Mon Nov  5 22:09:26 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* cygwin/GNUmakefile.in (uncommon.mk): link *.res.o.
	  EXTOBJES is defined in uncommon.mk. *.res.o setting should be below
	  uncommon.mk.
	  [ruby-core:48858] [Bug #7277]

Mon Nov  5 11:35:11 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread_pthread.c (native_thread_init, native_thread_destroy):
	  removed HAVE_PTHREAD_CONDATTR_INIT check because this silly
	  #ifdef makes use-uninitialized-var issue and (2) native_cond_initialize()
	  already have a right platform and caller don't need any additional care.
	  [Bug #6825]

Mon Nov  5 10:57:59 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/cgi/core.rb: check if Tempfile is defined before use it.

	* lib/cgi/core.rb: remove tempfiles only if tempfiles exist

Mon Nov  5 12:17:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* lib/uri/http.rb (URI::HTTP.build): Fix example
	  Patch by Carina C. Zona
	  [Fixes #209 Github]

Mon Nov  5 09:55:05 2012  Takeyuki FUJIOKA  <xibbar@ruby-lang.org>

	* lib/cgi/core.rb: remove tempfile more early.

Sun Nov  4 20:29:46 2012  Takeyuki FUJIOKA  <xibbar@ruby-lang.org>

	* lib/cgi.rb, lib/cgi/*/rb: rename CGI#header to CGI#http_header,
	  add and update HTML5 tag generator.  [Bug #7110]
	  Patch provided by Marcus Stollsteimer, thank you !

Sun Nov  4 11:47:39 2012  Masaki Matsushita  <glass.saga@gmail.com>

	* lib/fileutils.rb (module FileUtils): repatch [ruby-core:39622]
	  [Feature #5337]. improve performance of FileUtils.compare_stream.
	  [ruby-core:47545] [Feature #7028]

Sun Nov  4 11:27:54 2012  Masaki Matsushita  <glass.saga@gmail.com>

	* array.c (recursive_equal): fix to return true when self and other
	  are resized to same size and the current index become out of
	  range.

	* test/ruby/test_array.rb: add a test for the above.

Sun Nov  4 10:19:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* dir.c (file_s_fnmatch): match with expanding braces if FNM_EXTGLOB
	  is set.  [ruby-core:40037] [Feature #5422]

Sat Nov  3 23:38:15 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* complex.c: modified doc.
	* rational.c: ditto.

Sat Nov  3 22:38:55 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: modified doc.

Sat Nov  3 18:35:55 2012  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm.c (rb_vm_rewrite_ep_in_errinfo, vm_rewrite_ep_in_errinfo):
	  merge code and remove `rb_vm_rewrite_ep_in_errinfo'.

Sat Nov  3 18:15:24 2012  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm.c, proc.c: avoid unnecessary `rb_vm_rewrite_ep_in_errinfo'
	  calls.

Sat Nov  3 17:53:43 2012  Kouhei Sutou  <kou@cozmixng.org>

	* bin/testrb: Use only Test::Unit::AutoRunner in test-unit gem
	  compatible API to be available by both test/unit bundled in Ruby
	  and test-unit gem.
	* lib/test/unit.rb (Test::Unit::AutoRunner): Move codes from testrb.

Sat Nov  3 14:56:21 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_parse.c (parse_eu): should capture apostrophe too.

Sat Nov  3 14:46:15 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_parse.c (date__parse): revised the tight parser.

Sat Nov  3 14:43:42 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/xmldecl.rb (REXML::XMLDecl#content): Add missing \A
	  and \z.

Sat Nov  3 14:42:55 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/output.rb (REXML::Output#initialize): Use normalized
	  encoding name.

Sat Nov  3 14:41:17 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/output.rb (REXML::Output): Don't output BOM in middle
	  of the output string.
	* test/rexml/test_document.rb: Add a test for the above change.

Sat Nov  3 14:09:55 2012  Kouhei Sutou  <kou@cozmixng.org>

	* NEWS: Add an item about REXML::Document#write.

Sat Nov  3 13:46:49 2012  Kouhei Sutou  <kou@cozmixng.org>

	* test/rexml/test_document.rb: Fix tests that expect encoding name
	  isn't normalized.

Sat Nov  3 13:26:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* dir.c (Dir#glob):
	  Documentation for pattern section, backslash subsection
	  Patch by Eric Bouchut
	  [ruby-core:48528] [Bug #7230]

Sat Nov  3 13:26:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* io.c (IO#new):
	  Documentation for IO#open modes and formatting
	  [ruby-core:48052] [Bug #7179]

Sat Nov  3 13:01:02 2012  Kouhei Sutou  <kou@cozmixng.org>

	* test/rexml/test_encoding.rb (EncodingTester#test_in_different_out):
	  Fix a test that expects encoding in XML declaration is changed by
	  Output's encoding. It is dropped feature.

Sat Nov  3 12:49:45 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/document.rb (REXML::Document#write): Document encoding
	  option. Now different encoding between XML file's encoding and
	  XML declaration's encoding is support.
	  [Feature #4872] (work in progress)
	* lib/rexml/xmldecl.rb (REXML::XMLDecl#write): Always use XMLDecl's
	  encoding.
	* test/rexml/test_document.rb: Update tests for the above change.

Sat Nov  3 12:18:35 2012  Masaki Matsushita  <glass.saga@gmail.com>

	* array.c (recursive_equal): fix not to make invalid pointers when
	  self and other are resized to same size in #== of their elements.
	  [ruby-dev:46373] [Feature #6177]

Sat Nov  3 12:06:15 2012  Kouhei Sutou  <kou@cozmixng.org>

	* test/rexml/test_xml_declaration.rb (TestXmlDeclaration#test_*):
	  Remove needless prefix from test names.

Sat Nov  3 12:04:52 2012  Kouhei Sutou  <kou@cozmixng.org>

	* test/rexml/test_xml_declaration_parent_child.rb: Rename to ...
	* test/rexml/test_xml_declaration.rb: ... this.

Sat Nov  3 11:43:00 2012  Zachary Scott  <zachary@zacharyscott.net>

	* hash.c (rb_hash_delete): Correct grammar
	  Patch by Glenn Oppegard
	  [Fixes #208 Github]

Sat Nov  3 11:28:28 2012  Narihiro Nakamura  <authornari@gmail.com>

	* NEWS: add a news about GC::Profiler.raw_data.

Sat Nov  3 11:01:32 2012  Narihiro Nakamura  <authornari@gmail.com>

	* NEWS: add a news about rb_newobj_of() and NEWOBJ_OF().

Sat Nov  3 10:17:41 2012  Narihiro Nakamura  <authornari@gmail.com>

	* eval.c (f_current_dirname): add the new method for Kernel.
	  This method almost same as File.dirname(__FILE__). One
	  different behavior is it returns nil when __FILE__ returns nil.
	  [Feature #3346]

	* NEWS:  ditto

	* test/ruby/test_method.rb: related test.

Sat Nov  3 09:03:34 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* test/ruby/test_refinement.rb (test_new_method_by_send,
	  test_new_method_by_method_object): add tests for Kernel#send and
	  Kernel#method with refinements.

	* test/ruby/test_refinement.rb (test_symbol_to_proc): add a test
	  calling a proc created by Symbol#to_proc outside the scope where
	  a refinement is closed over.

Sat Nov  3 04:14:19 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm.c (rb_vm_rewrite_ep_in_errinfo): rewrite all catch points in
	  errinfo, not only the topmost frame.  based on the patch by
	  ktsj (Kazuki Tsujimoto) in [ruby-dev:45656]. [Bug #6460]

Fri Nov  2 20:11:17 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (MakeMakefile#timestamp_file): remove @ which looks like
	  configure variables.

	* lib/mkmf.rb (MakeMakefile#timestamp_file): use .-. instead of !, a
	  special character of NMAKE and BSD make.  [Bug #7265]

Fri Nov  2 17:55:39 2012  Shota Fukumori  <sorah@tubusu.net>

	* lib/test/unit.rb (_run_parallel): Delete status line before showing
	  results. Patch by Hiroshi Shirosaki. [Bug #6897] [ruby-core:47250]

	* lib/test/unit.rb (_run_parallel): Fix strange result when disabled retrying.
	  Patch by Hiroshi Shirosaki. [Bug #6897] [ruby-core:47250]

Fri Nov  2 17:52:12 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* object.c (rb_mod_to_s): Module#{to_s,inspect}, when invoked on
	  a refinement, returns a string in the format #<refinement:C@M>,
	  where C is a refined class and M is a module at which the refinement
	  is defined.

	* eval.c (rb_mod_refine): store information on a refinement for the
	  above change.

	* test/ruby/test_refinement.rb: related test.

Fri Nov  2 16:57:52 2012  Shota Fukumori  <sorah@tubusu.net>

	* vm_dump.c (rb_vm_bugreport): Because of many log directories,
	  making directory lists readable.

Fri Nov  2 16:44:00 2012  Kenta Murata  <mrkn@mrkn.jp>

	* vm_dump.c (rb_vm_bugreport): add ~/Library/Logs/DiagnosticReports
	  in the locations list of crash reports.

Fri Nov  2 14:52:52 2012  Masaki Matsushita  <glass.saga@gmail.com>

	* array.c (recursive_equal): performance improvement by avoiding
	  overhead to call rb_ary_elt().
	  [ruby-dev:45412] [Feature #6177]

Fri Nov  2 14:47:53 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* string.c (sym_to_proc, sym_call): A Proc created by Symbol#to_proc
	  should close over the current refinements.
	  [ruby-dev:46345] [Bug #7261]

	* vm_eval.c (rb_call0, rb_search_method_entry,
	  rb_funcall_passing_block_with_refinements): add a new argument
	  `refinements' for the above changes.

	* test/ruby/test_refinement.rb: related test.

Fri Nov  2 08:24:28 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* proc.c (top_define_method): new method, main.define_method.
	  [ruby-core:45715] [Feature #6609]

	* eval.c (top_include): fix a warning message, main is not a class or
	  module.

Fri Nov  2 04:41:33 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (MakeMakefile#timestamp_file): use ! instead of %, a GNU
	  make special character.

Fri Nov  2 04:40:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/test_process.rb (test_execopts_preserve_env_on_exec_failure):
	  use never existing file in the current temporary directory.

Fri Nov  2 04:23:20 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* tool/merger.rb: add feature to tag preview/rc.

Fri Nov  2 03:23:37 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/mkmf.rb: fix for if config["libdir"] is nil.

Thu Nov  1 23:06:01 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* tool/make-snapshot: fix wrong regexp for releasing preview.
	  patched by mame.

Thu Nov  1 22:27:11 2012  Koichi Sasada <ko1@atdot.net>

	* NEWS: add a news about objspace,
	  ObjectSpace.reachable_objects_from.

Thu Nov  1 21:57:00 2012  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/bigdecimal.c (BigDecimal_new),
	  test/bigdecimal/test_bigdecimal.rb:
	  Fix exception message of BigDecimal constructor with a Float.

Thu Nov  1 21:52:20 2012  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/bigdecimal.c (BigDecimal_add),
	  test/bigdecimal/test_bigdecimal.rb:
	  need to specify precision for converting Rational and Float.
	  [ruby-core:48045] [Bug #7176]

Thu Nov  1 21:42:20 2012  Yusuke Endoh  <mame@tsg.ne.jp>

	* test/ruby/test_process.rb: Revert r37404.  My ubuntu box has
	  actually the directory named "/nonexistent"...  Sorry.

Thu Nov  1 21:28:28 2012  Yusuke Endoh  <mame@tsg.ne.jp>

	* test/ruby/test_process.rb: Process.exec raised EACCES on Linux
	  3.5.0-17-generic.  This is a temporal fix to rescue that exception.
	  Needs kosaki's review.

Thu Nov  1 21:19:56 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* iseq.c (set_relation): parent_iseq need to be set regardless iseq
	  type.  fix r37397.

Thu Nov  1 19:47:23 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread_pthread.c (RUBY_STACK_MIN): may not a compile time constant.
	  fix r37079.  [ruby-dev:46322] [Bug #7247]

Thu Nov  1 16:44:36 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* NEWS: add note for Module#refine, Module#refinements,
	  Module#using, and Kernel#using.

Thu Nov  1 14:41:47 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (rb_using_module): using should be used indirectly.
	  [ruby-dev:46326] [Feature #7251]

Wed Oct 31 18:17:38 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (gc_profile_record): don't define unused variables when
	  GC_PROFILE_MORE_DETAIL is 0.

Wed Oct 31 18:10:53 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (gc_prof_mark_timer_stop): count is not initialized.

Wed Oct 31 09:28:24 2012  Eric Hodel  <drbrain@segment7.net>

	* thread.c (rb_thread_call_without_gvl2):  Note that ubf() may or may
	  not be called with the GVL.  Hinted that rb_thread_call_with_gvl()
	  can be used to access ruby functionality.

Wed Oct 31 09:06:54 2012  Eric Hodel  <drbrain@segment7.net>

	* thread.c (rb_thread_call_without_gvl2):  Update documentation to
	  natural English.
	* thread.c (rb_thread_call_with_gvl):  ditto.

Wed Oct 31 02:53:07 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/dl/lib/dl/struct.rb: fix strange require order. [ruby-dev:45702]

	* ext/dl/lib/dl/value.rb: ditto

	* test/dl/test_c_struct_entry.rb: remove strange require order from
	  tests.

	* test/dl/test_c_union_entity.rb: ditto

Tue Oct 30 23:59:32 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (rb_mod_refine): fix the error message when no block is
	  given.  [ruby-dev:46319] [Bug #7244]

	* test/ruby/test_refinement.rb: related test.

Tue Oct 30 19:27:48 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* process.c (redirect_dup2): set standard handles when new fd is stdio,
	  because if there is no allocated console at the moment Windows does
	  not automatically associate it for child process's standard handle.
	  this is adhoc workaround.
	  reported by Martin Thiede at [ruby-core:48542] [Bug #7239].

	* io.c (rb_cloexec_dup2): ditto.

Tue Oct 30 03:08:53 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/rbconfig/obsolete.rb (Config): re-introduce warnings for a
	  lame-duck.  [ruby-core:46836] [Bug #6809]

Tue Oct 30 02:20:10 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* thread.c: added Thread#thread_variable_(get|set),
	  Thread#thread_variable?, and Thread#thread_variables for operating
	  on variables that are local to threads. [ruby-core:47790]

	* vm.c: ditto

	* test/ruby/test_thread.rb: tests for thread variables.

Mon Oct 29 18:22:58 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/stringio/stringio.c (strio_close): close separately per each
	  instances, as well as IO.

Mon Oct 29 10:22:00 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/handlers/recorder.rb: added a class for
	  recording YAML parse and emit events.

	* ext/psych/lib/psych/handler.rb: adding a list of events so that
	  handler classes can more easily be meta-programmed.

	* test/psych/handlers/test_recorder.rb: tests for the change.

Mon Oct 29 05:48:52 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/ostruct.rb: Add [] and []=, base on a patch by Thomas Sawyer.
	  Also accept {Open}Struct as argument to new.
	  Add #eql?, #hash & #each_pair
	  Protect new_ostruct_member

Mon Oct 29 03:20:58 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/matrix.rb: Fix determinant_e [ruby-dev:46305] [Bug #7228]

Sun Oct 28 23:52:25 2012  Kouhei Sutou  <kou@cozmixng.org>

	* test/rexml/test_document.rb: Add tests for parsing XML encoded
	  by UTF-8 with BOM.

Sun Oct 28 23:47:09 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/source.rb: Move encoding detection code to base class.
	* lib/rexml/encoding.rb: Remove needless encoding detection code.

Sun Oct 28 21:40:13 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/parsers/baseparser.rb: Fix a bug that UTF-8 is used
	  for UTF-16XX encoded XML that doesn't have encoding="UTF-16" in
	  XML declaration.
	* test/rexml/test_document.rb: Add tests for the above change.

Sun Oct 28 21:37:34 2012  Kouhei Sutou  <kou@cozmixng.org>

	* test/rexml/test_document.rb: Group tests that they parse
	  UTF-16XX encoded XML that has encoding="UTF-16" in XML declaration.

Sun Oct 28 21:25:11 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/source.rb (REXML::IOSource#initialize): Reduce
	  @line_break initialize code. It should be done only in #encoding=.
	* lib/rexml/parsers/baseparser.rb: Don't set UTF-16 encoding to
	  source by encoding="UTF-16" in XML declaration because UTF-16XX
	  source encoding should be set in Source#initialize or
	  IOSource#initialize. They should handle BOM. Parser should not
	  consider about it.

Sun Oct 28 21:18:37 2012  Kouhei Sutou  <kou@cozmixng.org>

	* test/rexml/test_document.rb: Add tests for parsing XML encoded
	  by UTF-16 with BOM.

Sun Oct 28 19:12:11 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_parse.c (iso8601_{ext,bas}_time): should not match
	  empty string.

Sun Oct 28 18:51:33 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_parse.c (date__parse): revised the tight parser.

Sun Oct 28 15:41:50 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/document.rb (REXML::Document#write): Add :encoding option
	  to support custom XML encoding.
	  [Feature #4872] (work in progress)
	* test/rexml/test_document.rb: Add tests for the above change.

Sun Oct 28 15:00:19 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/document.rb (REXML::Document#write): Remove needless
	  indent in document.

Sun Oct 28 14:59:14 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/document.rb (REXML::Document#write): Accept options
	  Hash as argument.
	* test/rexml/test_document.rb: Add tests for the above change.

Sun Oct 28 14:09:44 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/document.rb (REXML::Document#write): Fix wrong usage
	  in document.

Sun Oct 28 14:03:48 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/document.rb (REXML::Document#write): Fix wrong method
	  names in document.

Sun Oct 28 10:12:15 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/yaml_tree.rb: `tree` should return the
	  same thing on every call.

	* test/psych/visitors/test_yaml_tree.rb: related test.

Sun Oct 28 10:05:03 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/yaml_tree.rb: YAML Tree object should
	  be able to take an emitter object as it's output.

	* test/psych/visitors/test_yaml_tree.rb: related test.

Sun Oct 28 08:23:16 2012  Koichi Sasada  <ko1@atdot.net>

	* bignum.c (bignew_1): Bignum instances are frozen.
	  Feature #3222

	* include/ruby/ruby.h: Fixnum instances are also frozen.

	* class.c (singleton_class_of): check Bignum before
	  singleton checking.

	* test/ruby/test_bignum.rb: add a test.

	* test/ruby/test_fixnum.rb: ditto.

	* test/ruby/marshaltestlib.rb, test/ruby/test_eval.rb,
	  test/ruby/test_object.rb: catch up above changes.

Sun Oct 28 04:38:06 2012  Koichi Sasada  <ko1@atdot.net>

	* vm.c (vm_define_method): remove type and frozen checking.
	  Checking is done in `rb_singleton_class()'.

Sun Oct 28 00:49:06 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (assign_in_cond): warn for static content object assignments
	  in conditional statements.  [ruby-dev:43083] [Feature #4299]

Sat Oct 27 23:33:41 2012  Benoit Daloze  <eregontp@gmail.com>

	* gc.c (gc_profile_result, gc_profile_report): use internal structures
	  to avoid allocations and progressively print the output for #report.
	  [ruby-core:47163] [Bug #6865]

Sat Oct 27 11:01:10 2012  Koichi Sasada  <ko1@atdot.net>

	* numeric.c (rb_float_new_in_heap), include/ruby/ruby.h:
	  make all Float objects frozen.
	  [ruby-dev:46081] [ruby-trunk - Feature #6936]
	  Most part of patch by NARUSE, Yui  <naruse@ruby-lang.org>.

	* class.c (singleton_class_of): raise TypeError when
	  trying to define a singleton method on Float objects.

	* vm.c (vm_define_method): ditto.

	* test/ruby/marshaltestlib.rb: catch up above changes.

	* test/ruby/test_class.rb: ditto.

	* test/test_pp.rb: ditto.

Sat Oct 27 10:50:53 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* object.c (rb_mod_const_get): make sure the constant name is
	  converted to a string before searching. [ruby-core:48405]

Sat Oct 27 10:12:13 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* iseq.c (rb_iseq_compile_with_option): Instead of testing
	  respond_to, just check if the argument is actually a file,
	  because by calling user-defined gets something weired can
	  happen.  Patch by Glass_saga. [ruby-dev:40202] [Bug #2861]

	* parse.y (ripper_initialize): ditto.

Sat Oct 27 10:07:57 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (enum lex_state_e): [EXPERIMENTAL] lex_state as bit field /
	  IS_lex_state() macro.  based on the patch by Dave B in
	  [ruby-core:23503].  [Feature #1493]

Sat Oct 27 10:05:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/win32.h (fstat): use _fstati64() instead of fstati64()
	  on mingw32.

Sat Oct 27 06:28:33 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* object.c (rb_mod_const_get): const_get accepts qualified constant
	  strings.  e.g. Object.const_get("Foo::Bar::Baz") [ruby-core:41404]

	* test/ruby/test_module.rb: tests for new behavior

Fri Oct 26 13:24:20 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (literal_concat_gen): merge fixed strings across
	  concatenated literals, after an interpolation.

Thu Oct 25 17:48:54 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (has_redirection): should use shell (cmd.exe) when
	  the commandline contains '&'.
	  reported by Roger Pack at [ruby-core:47912] [Bug #7143], and
	  patched by Heesob Park at [ruby-core:47931].

Thu Oct 25 15:00:08 2012  Koichi Sasada  <ko1@atdot.net>

	* include/ruby/ruby.h, class.c: remove (revert)
	  `rb_add_method_cfunc_frameless()' API.
	  This API is not mature to become an official API.
	  For example, we can not use this API with
	  `rb_define_private_method()'.

	* method.h, vm_method.c (rb_add_method_cfunc_frameless): removed.

Thu Oct 25 13:35:07 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* tool/mkconfig.rb: remove string literal concatenation.

Wed Oct 24 18:49:16 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/objspace/objspace.c (type2sym, count_objects_size): use enum
	  instead of size_t which may be larger than actual values.

Wed Oct 24 17:41:24 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/driver.rb: add `-x' or `--exclude' option
	  to specify exclude benchmark name pattern.
	  You can specify "-x foo" if you want to exclude the benchmarks
	  if the name of benchmark contains `foo'.

Wed Oct 24 11:57:24 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (gc_prepare_free_objects): rename to match the behavior of
	  this function.

Wed Oct 24 11:55:19 2012  Koichi Sasada  <ko1@atdot.net>

	* ext/objspace/objspace.c (reachable_object_from_i): change data
	  structure of the result of reachable objects. Keys of table
	  contains object_id of each reachable objects. Value of table
	  is an object itself or an instance of InternalObjectWrapper.
	  To avoid duplication, we use st_table and object_id keys.

	* ext/objspace/objspace.c (type2sym): bug fix.
	  Should use `i' instead of `type'.

Wed Oct 24 10:33:09 2012  Koichi Sasada  <ko1@atdot.net>

	* gc.c (garbage_collect, gc_marks): move the location of
	  clear and restore rb_objspace_t::mark_func_data
	  from garbage_collect() to gc_marks().

Wed Oct 24 10:17:45 2012  Koichi Sasada  <ko1@atdot.net>

	* ext/objspace/objspace.c (Init_objspace): add a new method
	  `ObjectSpace::InternalObjectWrapper#internal_object_id' which returns
	  an object id of a wrapped internal object.

Wed Oct 24 08:55:04 2012  Koichi Sasada  <ko1@atdot.net>

	* ext/objspace/objspace.c (ObjectSpace.reachable_objects_from):
	  internal object support.
	  If given object `obj' has references to internal objects
	  (such as T_NODE objects), then this method returns instances of
	  `ObjectSpace::InternalObjectWrapper' instead of that internal objects.
	  This instance contains a reference to an internal object and you can
	  check the type of internal object using
	  `ObjectSpace::InternalObjectWrapper#type' method.
	  Rdoc of `InternalObjectWrapper' is not prepared yet.

	* gc.c (rb_objspace_reachable_objects_from), gc.h: change
	  an interface of 'rb_objspace_reachable_objects_from()'

	* gc.c, gc.h: add two APIs
	  - rb_objspace_markable_object_p(obj): check markable or not.
	  - rb_objspace_internal_object_p(obj): check internal or not.

Wed Oct 24 05:52:36 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_call_method): remove `default' and
	  add a case for `VM_METHOD_TYPE_UNDEF'.

Wed Oct 24 05:41:18 2012  Koichi Sasada  <ko1@atdot.net>

	* eval_error.c (error_print), vm_eval.c (eval_string_with_cref),
	  vm_trace.c (rb_suppress_tracing): use TH_PUSH_TAG() instead of
	  PUSH_TAG().

Wed Oct 24 05:17:52 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_eval.c (vm_call0_body): remove RUBY_VM_CHECK_INTS()
	  after method invocation using rb_call0().

	* vm_eval.c (vm_call0_body): remove default section on top of
	  switch statement and add cases for `VM_METHOD_TYPE_CFUNC_FRAMELESS'
	  and `VM_METHOD_TYPE_UNDEF'.

	* vm_eval.c (vm_call0_body): remove useless brackets.

Tue Oct 23 22:34:49 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c (thread_raise_m):  check interrupts after Thread#raise
	  if a target thread is the current thread because the behavior
	  of Thread.current.raise is expected to perform same as
	  Kernel.raise (by rubyspec).

Tue Oct 23 17:08:39 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ruby.c (usage, process_options): show more info in --help.
	  [EXPERIMENTAL] [ruby-core:48072] [Bug #7184]

Tue Oct 23 14:20:43 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* misc/ruby-electric.el using variable `last-command-event' instead of
	  obsolete `last-command-char', so that work with Emacs trunk.
	  a patch by Victor Deryagin <vderyagin AT gmail.com>.

Tue Oct 23 14:06:47 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (visibility_option): visibility attribute is not
	  available before GCC 4, so do not use -fvisibility option in that
	  case.  [ruby-core:48147] [Bug #7205]

Tue Oct 23 12:57:29 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h, vm_insnhelper.c, vm_eval.c (OPT_CALL_CFUNC_WITHOUT_FRAME):
	  add a new optimization and its macro `OPT_CALL_CFUNC_WITHOUT_FRAME'.
	  This optimization makes all cfunc method calls `frameless', which
	  is faster than ordinal cfunc method call.
	  If `frame' is needed (for example, it calls another method with
	  `rb_funcall()'), then build a frame. In other words, this
	  optimization delays frame building.
	  However, to delay the frame building, we need additional overheads:
	    (1) Store the last call information.
	    (2) Check the delayed frame building before the frame is needed.
	    (3) Overhead to build a delayed frame.
	  rb_thread_t::passed_ci is storage of delayed cfunc call information.
	  (1) is lightweight because it is only 1 assignment to `passed_ci'.
	  To achieve (2), we modify GET_THREAD() to check `passed_ci' every
	  time. It causes 10% overhead on my environment.
	  This optimization only works for cfunc methods which do not need
	  their `frame'.
	  After evaluation on my environment, this optimization does not
	  effective every time. Because of this evaluation results, this
	  optimization is disabled at default.

	* vm_insnhelper.c, vm.c: add VM_PROFILE* macros to measure behaviour
	  of VM internals. I will extend this feature.

	* vm_method.c, method.h: change parameters of the `invoker' function.
	  Receive `func' pointer as the first parameter.

Tue Oct 23 06:21:05 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/parser.c: just get the constant defined in Ruby.

	* ext/psych/lib/psych/syntax_error.rb: Psych::SyntaxError now inherits
	  from StandardError rather than SyntaxError.  Thanks Eric Hodel!

	* test/psych/test_exception.rb: tests for change.

Tue Oct 23 06:17:36 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/scalar_scanner.rb: Cache symbols while
	  tokenizing.  Thanks Kevin Menard!

Tue Oct 23 06:15:40 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/scalar_scanner.rb: Updated the RegExp to catch
	  Strings earlier in the tokenization process.  Thanks Kevin Menard!

Tue Oct 23 06:12:39 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/to_ruby.rb: Handle nil tags specially
	  to avoid slow method_missing calls.  Thanks Kevin Menard!

Tue Oct 23 06:07:57 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/scalar_scanner.rb: Ignore bad timestamps.  If
	  something looks like a timestamp but has an invalid component, treat
	  it as a string instead of throwing an ArgumentError.
	  Thanks Rhett Sutphin!

	* test/psych/test_scalar_scanner.rb: appropriate tests.

Tue Oct 23 06:04:07 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/scalar_scanner.rb: Fix scalar_scanner to
	  understand strings starting with an underscore and containing only
	  digits.  Thanks Kelley Reynolds.

	* test/psych/test_scalar_scanner.rb: test for fix

Tue Oct 23 06:00:41 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb: Changed comment in psych.rb to update new
	  home page for libyaml.  Thanks to Carolyn Ann.

Sun Oct 21 19:12:59 2012  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm_core.h (rb_vm_t::trace_running): add a new field
	  `trace_running' to store vm global tracing status.

	* vm_trace.c: fix SEGV bug. event_hook was free'd
	  even when the hook is still used in another thread.
	  [ruby-dev:46141] [Bug #7032]

Sun Oct 21 19:12:42 2012  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm_core.h (rb_vm_t::trace_flag): remove `trace_flag'
	  which is no longer used.

Sun Oct 21 18:34:27 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_parse.c (date__parse): uses more tight parser if
	  defined TIGHT_PARSER.  now inactivated; because it introduces
	  incompatibilities and it is a bit slow.

Sat Oct 20 15:35:06 2012  Narihiro Nakamura  <authornari@gmail.com>

	* include/ruby/ruby.h: add C APIs.
	  VALUE rb_newobj_of(VALUE klass, VALUE flags)
	  #define NEWOBJ_OF(obj,type,klass,flags)
	  These allow to change a allocation strategy depending on klass
	  or flags.

	* gc.c: ditto

	* array.c: use new C API.
	* bignum.c: ditto
	* class.c: ditto
	* complex.c: ditto
	* ext/socket/ancdata.c: ditto
	* ext/socket/option.c: ditto
	* hash.c: ditto
	* io.c: ditto
	* marshal.c: ditto
	* numeric.c: ditto
	* object.c: ditto
	* random.c: ditto
	* range.c: ditto
	* rational.c: ditto
	* re.c: ditto
	* string.c: ditto
	* struct.c: ditto
	  [Feature #7177][Feature #7047]

Sat Oct 20 12:50:00 2012  Zachary Scott	<zachary@zacharyscott.net>

	* ext/socket/socket.c: Documentation for Socket
	  Based on a patch by David Albert
	  [Bug #7105] [ruby-core:47828]

Sat Oct 20 11:00:00 2012  Zachary Scott	<zachary@zacharyscott.net>

	* lib/open-uri.rb: Documentation for OpenURI

Sat Oct 20 06:18:34 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* hash.c (initialize_copy): unset the default proc if there isn't one
	  for the target hash, call to_hash, check frozen status.

Fri Oct 19 22:22:01 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm.c (rb_vm_jump_tag_but_local_jump): pass through thrown objects.
	  [ruby-dev:46234] [Bug #7185]

	* vm_eval.c (rb_eval_cmd): if state is non-zero, val should be nil and
	  rb_vm_jump_tag_but_local_jump() just jump tag.

Fri Oct 19 22:11:55 2012  Benoit Daloze  <eregontp@gmail.com>

	* pack.c (pack_unpack): set encoding of the
	  'H','h','B' and 'B' modifiers to US-ASCII.

	* test/ruby/test_pack.rb: tests for the above.
	  [ruby-core:47653][Bug #7050]

	* test/test_securerandom.rb: tests for SecureRandom.hex
	  from tenderlove. [ruby-core:46792][Bug #6799]

Fri Oct 19 19:29:11 2012  Koichi Sasada  <ko1@atdot.net>

	* method.h (rb_method_cfunc_t::invoker): add new field (func ptr)
	  `invoker'. `invoker' function invoke cfunc body
	  (rb_method_cfunc_t::func).
	  `invoker' is set at method definition timing.
	  With this change, the big `switch' (branch) in `call_cfunc()'
	  is no longer needed.
	  However, the performance benefit is only a bit.

	* vm_core.h (rb_call_info_t::aux::func): add a new field to store
	  cfunc body function pointer.

	* vm_method.c (call_cfunc_invoker_func): add a new function which
	  returns a suitable invoke function.

	* vm_method.c (setup_method_cfunc_struct): added.

	* vm_method.c (rb_add_method): fix to set `invoker'.

	* vm_eval.c (vm_call0_body): catch up above changes.

	* vm_insnhelper.c (call_cfunc): removed.

	* vm_insnhelper.c (vm_call_cfunc): fix to call cfunc body
	  with `invoker' function.

Fri Oct 19 16:55:58 2012  Koichi Sasada  <ko1@atdot.net>

	* eval.c, vm_eval.c: use TH_PUSH_TAG() instead of PUSH_TAG().

Fri Oct 19 11:13:55 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/driver.rb: remove unexpected `output'.
	  (commit miss)

Fri Oct 19 10:24:03 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_search_method): remove needless local variable.

Fri Oct 19 10:22:26 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/bmx_temp.rb: removed.
	  This file should not be in repository.

Fri Oct 19 10:20:10 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/driver.rb: add new option `--ruby-arg [ARG]'
	  which is passed as a launch parameter for each ruby's execution.
	  ($ ruby [ARG] [File])

Thu Oct 18 18:42:35 2012  Koichi Sasada  <ko1@atdot.net>

	* insns.def (opt_send_simple): move the location of
	  `opt_send_simple' to the place near `send' definition.
	  (to take care about icache locality).

Thu Oct 18 18:29:25 2012  Koichi Sasada  <ko1@atdot.net>

	* insns.def (send): remove unused condition.
	  This condition will be true after r37258.

	* vm_insnhelper.c (vm_caller_setup_args): remove `UNLIKELY' on
	  checking blockiseq (it seems `LIKELY').

Thu Oct 18 17:31:58 2012  Koichi Sasada  <ko1@atdot.net>

	* insns.def (opt_send_simple): introduce new instruction used
	  when no need to care about block and splat.

	* compile.c: use the `opt_send_simple' instruction.

Thu Oct 18 16:44:07 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_method.c (rb_add_method_cfunc, rb_add_method_cfunc_frameless):
	  check arity earlier at definition time.

Thu Oct 18 15:11:31 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c: add `inline' keyword to several functions.
	  Compilers (gcc) are conservative than I expected.

Thu Oct 18 15:01:15 2012  Koichi Sasada  <ko1@atdot.net>

	* include/ruby/ruby.h: add a decl. of
	  `rb_define_frameless_method()'.

Thu Oct 18 14:31:17 2012  Koichi Sasada  <ko1@atdot.net>

	* compile.c (new_callinfo): set a temporary index of callinfo
	  (used in `iseq_set_sequence()') to rb_call_info_t::aux::index.
	  rb_call_info_t::argc is initialized by same value of
	  rb_call_info_t::orig_argc.

Thu Oct 18 14:11:08 2012  Koichi Sasada  <ko1@atdot.net>

	* class.c (rb_define_frameless_method): rename from
	  rb_define_method_fast(). Defined method with this C API
	  does not make a method frame. It is bit lightweight than
	  ordinal C functions. Now only 0 or 1 argc are permitted.

	* method.h (VM_METHOD_TYPE_CFUNC_FRAMELESS): rename macro name
	  from VM_METHOD_TYPE_CFUNC_FAST.

	* vm_insnhelper.c, vm_method.c: rename related functions.

	* proc.c (rb_method_entry_arity): catch up above changes.

Thu Oct 18 10:30:34 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (assignable_gen): fail if yyerror occurred.  fix a bug in
	  r36973.

Thu Oct 18 09:23:03 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* hash.c (initialize_copy): duping should rehash the hash.

	* test/ruby/test_hash.rb: added a test to ensure rehash.

Wed Oct 17 21:16:47 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* common.mk (WPROGRAM): need same dependencies as PROGRAM.

	* cygwin/GNUmakefile.in (uncommon.mk): move include position
	  below WPROGRAM definition to be defined in uncommon.mk.

	* ext/extmk.rb (all, static): fix make rubyw.exe failure with make -jN.
	  If make of ruby.exe and rubyw.exe run in parallel, link dll and link
	  exe run in parallel, which causes link failure on mingw. To fix this,
	  we make ruby.exe and rubyw.exe in one make process.
	  [ruby-core:48007] [Bug #7165]

Wed Oct 17 16:25:34 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/bm_vm2_method_missing.rb: add a benchmark to measure
	  performance of invoking `method_missing'.

Wed Oct 17 16:23:17 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_getivar): fix to use `aux.index' instead of
	  `aux.opt_pc'.

Wed Oct 17 16:03:54 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_call_method_missing): make a refactoring
	  about method_missing process. Use `vm_call_method()' to invoke
	  `method_missing' method instead of `rb_funcall2()'.
	  In `vm_call_method()', set fastpath to `vm_call_method_missing()'
	  if it can be cached.

	* vm_core.h (rb_call_info_t): add new field
	  `rb_call_info_t::aux::missing_reason' to pass the reason to
	  `vm_call_method_missing()'.

Wed Oct 17 15:33:12 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (opt-dir): allow multiple directories separated by
	  $PATH_SEPARATOR as well as dir_config in mkmf.rb. [ruby-core:47868]
	  [Bug #7120]

Wed Oct 17 15:08:13 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/imap.rb: fix Net::IMAP::ResponseParser to accept
	  message/delivery-status ([ruby-core:47920] [Bug #7146]),
	  message/rfc822 attachments ([ruby-core:47921] [Bug #7147]), and
	  (BODY ("MIXED")) ([ruby-core:47951] [Bug #7153]).
	  patched by Tony Arkles.

	* test/net/imap/test_imap_response_parser.rb: related test.

Wed Oct 17 11:04:48 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_hash.rb (TestHash#test_dup_equality): added a new test
	  to show the problem of r37232.

Wed Oct 17 10:48:40 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_insnhelper.c (vm_search_method): fix a build error that occurs
	  when OPT_INLINE_METHOD_CACHE is 0.

Wed Oct 17 08:46:47 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/bm_vm2_dstr.rb: add a benchmark to measure
	  performance of dynamic generated string ("foo#{bar}baz").

Wed Oct 17 08:32:46 2012  Koichi Sasada  <ko1@atdot.net>

	* compile.c (compile_dstr_fragments): use `putobject' instead of
	  `putstring' for all of strings used by NODE_DSTR because
	  ruby users can not grab this string.
	  For example, the string object of "baz" in "foo#{bar}baz"
	  is located by `putobject' (users can not touch "baz" object
	  directly). This change reduces GC pressure.
	  This improvement is suggested by Aaron Patterson.

Wed Oct 17 08:02:57 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c (rb_threadptr_interrupt_mask): fix to check interrupt
	  after interrupt_mask changed.

Wed Oct 17 06:42:47 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_call_method): fix to return value immediately.
	  Remove CHECK_INTS() after that method dispatch.

Wed Oct 17 06:25:56 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* hash.c (initialize_copy): copy the underlying st_table on dup,
	  rather than copying the hash key by key. [ruby-core:48009]

	* test/ruby/test_hash.rb: relevant tests for initialize_copy

Wed Oct 17 06:17:44 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_call_iseq_setup_2): separate tailcall and normal
	  method frame setup functions.
	  Add checking interrupts at the tailcall setup function.

Wed Oct 17 05:35:37 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/bm_vm1_yield.rb: add a benchmark to measure `yield'
	  (invoke empty block) performance.

	* benchmark/bm_vm2_method_with_block.rb: add a benchmark to measure
	  method invocation with empty block.

Wed Oct 17 05:05:07 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_invoke_block): vm_caller_setup_args() can skip
	  when splat flag is not set.

Wed Oct 17 01:53:47 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_getivar, vm_setivar): support index inline cache
	  with rb_call_info_t to speedup `attr' getter and setter.
	  Cached index is stored in rb_call_info_t::aux::index.
	  `index' == 0 means not cached. `index' > 0 means cached and cached
	  index is `index - 1'.

	* insns.def ((get|set)instancevariable): use new wrapper functions
	  vm_(get|set)instancevariable() defined in vm_insnhelper.c.

	* vm_core.h (rb_call_info_t::aux): introduce new union data because
	  opt_pc can share with index.

Tue Oct 16 22:24:44 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/driver.rb (show_results): Show speedup ratio
	  with first executables score at last of results
	  if two or more executables are given.

Tue Oct 16 21:59:01 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/driver.rb: some refactoring.
	  (1) Remove `average differential'.
	      In this benchmark driver, We should not care about `average'.
	      We use fastest score because this score should not include
	      any disturbances (affections of background process, etc).
	      If you care about timing affect, I recommend `median'
	      score with more than 5 examinations rather than simple
	      `average' score (`average' score was affected by error scores).
	  (2) Show log file name.
	  (3) Change default directory from './' to driver's directory.

Tue Oct 16 14:56:23 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* file.c (rb_file_join): need to check again after any conversion run.
	  [ruby-core:48012] [Bug #7168]

Tue Oct 16 12:52:14 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* test/ruby/envutil.rb (Test::Unit::Assertions#assert_file):
	  rename from file_assertion.

Tue Oct 16 11:30:18 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* file.c (rb_file_join): hide the result under construction until
	  return.

	* file.c (rb_file_join): check nul-byte only for strings, since
	  FilePathStringValue() does it.  [ruby-core:48012] [Bug #7168]

	* file.c (rb_file_join): path names must be ASCII-compatible.
	  [ruby-core:48012] [Bug #7168]

	* file.c (check_path_encoding): new function to ensure path name
	  encoding to be ASCII-compatible.

Tue Oct 16 09:40:04 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_regexp.rb
	  (TextRegexp#test_raw_hyphen_and_tk_char_type_after_range): use
	  Regexp.new instead of literal to ignore a parser warning.

Tue Oct 16 09:30:30 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_regexp.rb
	  (TextRegexp#test_raw_hyphen_and_tk_char_type_after_range): ignoring
	  warnings are already set in setup method.

Tue Oct 16 06:44:06 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (VM_CALLEE_SETUP_ARG): fix wrong condition.

Tue Oct 16 06:29:18 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_call_method): disable CI_SET_FASTPATH() if
	  this method call needs splat argument because cached functions
	  (vm_call_attrset, vm_call_ivar, vm_call_cfunc_fast_(unary|binary))
	  do not check an arity.

	* bootstraptest/test_method.rb: add a test to check an above issue.

Tue Oct 16 06:15:44 2012  Koichi Sasada  <ko1@atdot.net>

	* method.h: introduce new method type VM_METHOD_TYPE_CFUNC_FAST.
	  This method is similar to VM_METHOD_TYPE_CFUNC methods, but
	  called cfunc without building new frame (does not push new control
	  frame). If error is occurred in cfunc, the backtrace only shows
	  caller frame and upper.
	  This kind of methods can be added by rb_define_method_fast().
	  This feature is similar to specialized instructions (opt_plus, etc),
	  but more flexible (but a bit slower).

	* class.c (rb_define_method_fast): added.
	  Maybe it will be renamed soon.

	* vm_insnhelper.c (vm_call_method): support method type
	  VM_METHOD_TYPE_CFUNC_FAST.

	* proc.c (rb_method_entry_arity): catch up new method type.

	* vm_method.c (rb_add_method_cfunc_fast): added.

Tue Oct 16 02:32:29 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.h (CI_SET_FASTPATH): add new parameter `enabled'.
	  If `enable' is 0 then CI_SET_FASTPATH() doesn't work.
	  And add new configuration option OPT_CALL_FASTPATH. If this macro
	  was defined by 0, then CI_SET_FASTPATH() doesn't work any more.

	* vm_insnhelper.c (vm_call_method): Pass `0' for `enabled' parameter
	  of CI_SET_FASTPATH if this method is protected.

Tue Oct 16 02:17:35 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h (VM_CALL_*): rename VM_CALL_*_BIT
	  to VM_CALL_* (remove `_BIT' suffix).
	  Add comments on each macros.
	  Remove unused macro VM_CALL_TAILRECURSION_BIT.

	* compile.c, iseq.c, insns.def, vm_insnhelper.c: ditto.

Mon Oct 15 22:14:44 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/envutil.rb (Test::Unit::Assertions#file_assertion):
	  rewrite file assertions.

Mon Oct 15 09:41:17 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (VM_CALLEE_SETUP_ARG): skip CI_SET_FASTPATH() if
	  it was called from vm_yield_setup_args().

Mon Oct 15 05:20:13 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.h CI_SET_FASTPATH: introduce new macro
	  `CI_SET_FASTPATH(ci, func)'. This macro set `ci->call' as `func'.
	  `func' (ci->call) is called at the last of `send'
	  (and `invokesuper') instruction.
	  `CI_SET_FASTPATH' does not set `ci->call' when the method
	  (stored in `ci->me') is `protected'.

	* vm_insnhelper.c (vm_call_method): use `CI_SET_FASTPATH'.
	  After several checking (visibility, argc checking), the result of
	  checking can be reused until re-definition of this method
	  with inline method cache.

	  Note that this optimization is now experimental.
	  If you find any problem about it, please tell us.

Mon Oct 15 04:51:55 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c: refactoring.
	  - move all `call' related functions to the last of file.
	  - make functions for respective method types in vm_call_method().
	    (all functions have same function parameters)

	* vm_core.h: add `opt_pc' field in `rb_call_info_t'
	  as temporal variable.

	* vm_eval.c (vm_call0_body): catch up above changes.

Mon Oct 15 03:51:46 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/bm_vm1_attr_ivar(_set).rb: added (for method dispatch speed).

	* benchmark/bm_vm1_float_simple.rb: added (for flonum/float).

Mon Oct 15 02:51:16 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_eval.c (vm_call0_body): add new function.
	  `vm_call0()' makes call_info struct and calls `vm_call0_body()'
	  with this struct. In near future, `vm_call0()' will be removed
	  because all of `vm_call0()' users setup call_info struct by itself.

Mon Oct 15 01:38:06 2012  Koichi Sasada  <ko1@atdot.net>

	* insns.def (send, invokesuper, invokeblock, opt_*), vm_core.h:
	  use only a `ci' (rb_call_info_t) parameter instead of using
	  parameters such as `op_id', 'op_argc', `blockiseq' and flag.
	  These information are stored in rb_call_info_t at the compile
	  time.
	  This technique simplifies parameter passing at related
	  function calls (~10% speedups for simple method invocation at
	  my machine).
	  `rb_call_info_t' also has new function pointer variable `call'.
	  This `call' variable enables to customize method (block)
	  invocation process for each place. However, it always call
	  `vm_call_general()' at this changes.
	  `rb_call_info_t' also has temporary variables for method
	  (block) invocation.

	* vm_core.h, compile.c, insns.def: introduce VM_CALL_ARGS_SKIP_SETUP
	  VM_CALL macro.  This flag indicates that this call can skip
	  caller_setup (block arg and splat arg).

	* compile.c: catch up above changes.

	* iseq.c: catch up above changes (especially for TS_CALLINFO).

	* tool/instruction.rb: catch up above changes.

	* vm_insnhelper.c, vm_insnhelper.h: ditto. Macros and functions
	  parameters are changed.

	* vm_eval.c (vm_call0): ditto (it will be rewritten soon).

Sun Oct 14 12:30:44 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ruby.c (rb_f_sub, rb_f_gsub): pass the given block.
	  [ruby-core:47967] [Bug #7157]

Sat Oct 13 23:15:39 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* regparse.c (parse_char_class): should match with a hyphen after a
	  range in a character class.

	* test/ruby/test_regexp.rb (TestRegexp#test_char_class): fixed wrong
	  test.

	* test/ruby/test_regexp.rb (TestRegexp#check): now can accept the
	  error message.

	* test/ruby/test_regexp.rb
	  (TextRegexp#test_raw_hyphen_and_tk_char_type_after_range): renamed
	  because the previous name was wrong.

	* test/ruby/test_regexp.rb
	  (TextRegexp#test_raw_hyphen_and_tk_char_type_after_range): added
	  more test pattern.

Sat Oct 13 03:01:53 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* file.c (realpath_rec): prevent link from GC while link_names refers
	  the content.

Sat Oct 13 01:37:48 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_regexp.rb
	  (TestRegexp#test_raw_hyphen_and_type_char_after_range): added new
	  test. ref [ruby-core:47115] [Backport #6853]

Fri Oct 12 21:55:08 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* include/ruby/win32.h (rb_w32_pow): set floating point precision
	  for mingw-w64 x86 pow(). This improves the precision of pow() on
	  Windows XP for TestFloat#test_round_with_precision failure.
	  [ruby-core:47911] [Bug #7142]

Fri Oct 12 21:37:25 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/webrick/test_cgi.rb (TestWEBrickCGI#test_cgi): skip a test
	  depending on locale on Windows. ENV[] doesn't work properly if
	  console code page is not equal to file system encoding.
	  [ruby-core:47910] [Bug #7140]

Fri Oct 12 20:40:29 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (posix_sh_cmds): the command name of colon is ":".

Fri Oct 12 18:18:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* file.c (rb_get_path_check): path name must not contain NUL bytes.

Fri Oct 12 16:06:20 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* tool/merger.rb: now can merge revision(s) without --ticket again.

Fri Oct 12 14:10:41 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (dir_config, init_mkmf): use configured libdir value as
	  default library path.  [ruby-core:43726] [Bug #6207]

Fri Oct 12 05:25:00 2012  Zachary Scott	<zzak@ruby-lang.org>

	* lib/timeout.rb (timeout):
	  Remove paragraph on wrong implementation detail.
	  [ruby-core:47739] [Bug #7088]

Thu Oct 11 23:09:46 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* string.c (rb_str_sub{seq,pos,str}, rb_str_each_{line,codepoint}):
	  prevent String copies from GC.  [ruby-core:47881] [Bug #7135]

Thu Oct 11 07:40:50 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* iseq.c (insn_operand_intern): cast op to rb_call_info_t* before
	  compare with iseq->callinfo_entries whose type is rb_call_info_t*.

Thu Oct 11 03:37:08 2012  Koichi Sasada  <ko1@atdot.net>

	* bootstraptest/test_block.rb: add tests for block with super.

Thu Oct 11 02:54:07 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_dump.c: fix debug prints to catch up recent changes
	  such as VM data structures.

Thu Oct 11 02:50:34 2012  Koichi Sasada  <ko1@atdot.net>

	* iseq.c (insn_operand_intern): add support disasm TS_CALLINFO
	  operands.

Wed Oct 10 15:12:48 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_process.rb (TestProcess#test_execopts_gid): skip on
	  windows because the platform does not have Process.group method.
	  patched by Jon Forums in [ruby-core:47878] [Bug #7133].

Tue Oct  9 23:18:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/envutil.rb (assert_file, assert_file_not): more
	  descriptive assertions for File predicates.

Tue Oct  9 18:01:37 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* array.c (rb_ary_sample): use rb_random_ulong_limited, since
	  precision of long may be larger than double.

	* random.c (rb_random_ulong_limited): new function to return a random
	  value from 0 upto limit as unsigned long, similarly to
	  rb_genrand_ulong_limited but with arbitrary RNG object.

Tue Oct  9 17:13:27 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* process.c (rb_execarg_addopt, rb_execarg_run_options): add :uid and
	  :gid options.  [ruby-core:47414] [Feature #6975]

Tue Oct  9 14:36:11 2012  Koichi Sasada  <ko1@atdot.net>

	* iseq.c (iseq_free): fix memory leak.
	  rb_iseq_t::callinfo_entries should be freed.

Tue Oct  9 14:28:18 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h (rb_call_info_t): add new type `rb_call_info_t'.
	  This data structure contains information including inline method
	  cache. After that, `struct iseq_inline_cache_entry' does not
	  need to contain inline cache for method invocation.
	  Other information will be added to this data structure.

	* vm_core.h (rb_iseq_t): add `callinfo_entries' and `callinfo_size'
	  members to `rb_iseq_t'.

	* insns.def, compile.c: Use CALL_INFO instead of IC.

	* tool/instruction.rb: support CALL_INFO as operand type.

	* vm_insnhelper.c, vm_insnhelper.h: ditto.

Sun Oct  7 23:54:33 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* ext/zlib/zlib.c (zstream_run_func): don't call inflate() when
	  z->stream.avail_in == 0. it return Z_BUF_ERROR.
	  but deflate() could be called with z->stream->avail_in == 0 because
	  it has hidden buffer in z->stream->state (opaque structure).
	  fix for gem install error. [ruby-dev:46149] [Bug #7040]

Mon Oct  8 23:55:41 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (rb_mod_refinements): new method Module#refinements.

	* test/ruby/test_refinement.rb: add new tests for the above changes.

Mon Oct  8 23:02:19 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c, gc.c, iseq.c, node.h, vm_insnhelper.c, vm_insnhelper.h,
	  vm_method.c: rename omod and overlaid modules to refinements.

	* eval.c (hidden_identity_hash_new): renamed from identity_hash_new.

Sun Oct  7 04:50:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* lib/abbrev.rb: Documentation examples for Abbrev.
	  [ruby-core:47442] [Bug #6985]

Sun Oct  7 04:50:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* thread.c (rb_thread_aref):
	  Grammar in Thread documentation.
	  Patch by Steve Klabnik [ruby-core:47799] [Bug #7099]

Sun Oct  7 04:37:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* string.c (rb_str_match):
	  Clarify behavior for captured strings and local variable assignment
	  Patch by Marcus Stollsteimer [ruby-core:47668] [Bug #7062]

Sat Oct  6 18:31:36 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_opts.h (OPT_GLOBAL_METHOD_CACHE): new build option to
	  enable/disable global method caching. [ruby-dev:46203] [Bug #7111]

	* vm_method.c (rb_method_entry_get_with_omod): don't use global
	  method cache if OPT_GLOBAL_METHOD_CACHE is 0.

Sat Oct  6 16:32:04 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_method.c (search_method): check omod only once for performance.

Sat Oct  6 09:42:04 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enc/encdb.c, enc/utf_16_32.h (ENC_DUMMY_UNICODE): endian-less wide
	  UTF encodings are dummy but Unicode.

	* encoding.c (rb_encdb_set_unicode): set Unicode flag.

	* template/encdb.h.tmpl: allow ENC_DUMMY variants.

	* encoding.c (rb_enc_unicode_p): oniguruma provides Unicode flag.

Fri Oct  5 17:18:42 JST 2012  TAKANO Mitsuhiro  <tak@no32.tk>

	* template/Doxyfile.tmpl: remove SHOW_DIRECTORIES and
	  HTML_ALIGN_MEMBERS lines. They have been obsolete in
	  Doxygen version 1.8.2.

Fri Oct  5 15:26:18 2012  Koichi Sasada  <ko1@atdot.net>

	* ext/objspace/objspace.c: add ObjectSpace#reachable_objects_from.
	  This method returns an array of objects referenced by given object.
	  If given object is special objects such as true/false/nil/Fixnum etc
	  then it returns nil. See rdoc for details.
	  [ruby-core:39772]

	* test/objspace/test_objspace.rb: add a test for this method.

	* gc.c: add rb_objspace_reachable_objects_from().
	  To make this function, add several member `mark_func_data'
	  to rb_objspace_t.  If mark_func_data is not null, then
	  gc_mark() calls mark_func_data::mark_func.

	* gc.h: export rb_objspace_reachable_objects_from().

Thu Oct  4 23:40:04 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (init_heap): call init_mark_stack before to allocate
	  altstack. This change avoid the stack overflow at the signal
	  handler on 32bit, but I don't understand reason... [Feature #7095]

Thu Oct  4 22:39:27 2012  Koichi Sasada  <ko1@atdot.net>

	* insns.def (getlocal, setlocal): remove old getlocal/setlocal
	  instructions and rename getdaynmic/setdynamic instructions
	  to getlocal/setlocal.

	* compile.c: ditto.

	* iseq.c: remove TS_DINDEX.

	* vm_exec.h (dindex_t): remove type definition of `dindex_t'.

	* tool/instruction.rb: ditto.

Thu Oct  4 21:44:17 2012  Koichi Sasada  <ko1@atdot.net>

	* vm.c (vm_analysis_insn|operand|register): use st_insert
	  instead of using rb_hash_aset() because rb_hash_aset()
	  check $SAFE.

Thu Oct  4 21:15:26 2012  Koichi Sasada  <ko1@atdot.net>

	* vm.c (VM_COLLECT_USAGE_DETAILS): make new VM usage analysis
	  hooks (old macro name is COLLECT_USAGE_ANALYSIS).
	  This feature is only for VM developers.  (I'm not sure I can use
	  `VM developers' (the plural form) in this sentence).
	  If VM_COLLECT_USAGE_DETAILS is not 0, VM enables the following
	  usage collection features:
	    (1) instruction: collect instruction usages.
	    (2) operand: collect operand usages.
	    (3) register: collect register usages.
	  The results are stored in
	    RubyVM::USAGE_ANALYSIS_INSN for (1, 2),
	    RubyVM::USAGE_ANALYSIS_INSN_BIGRAM for (1) and
	    RubyVM::USAGE_ANALYSIS_REGS for (3).
	  You can stop collecting usages with
	    RubyVM::USAGE_ANALYSIS_INSN_STOP(),
	    RubyVM::USAGE_ANALYSIS_OPERAND_STOP(),
	    RubyVM::USAGE_ANALYSIS_REGISTER_STOP()
	  for (1), (2), (3) respectively.
	  You can also change the hook functions by setting
	  C level global variables
	    `ruby_vm_collect_usage_func_(insn|operand|register)'
	  for (1), (2), (3) respectively.
	  See codes for more details.

	* tool/instruction.rb: fix macro names.

	* iseq.c (insn_operand_intern): make it export (used in vm.c).
	  fix to skip several processes if not needed (pointer is 0).

	* vm_dump.c: move codes for collection features to vm.c.

	* vm_exec.h: rename macro and function names.

	* vm_insnhelper.h: ditto.

Thu Oct  4 18:59:14 2012  Koichi Sasada  <ko1@atdot.net>

	* test/ruby/test_settracefunc.rb (test_tracepoint):
	  remove unused test case.
	  (this test case is redefined by newer tests)

Thu Oct  4 17:24:51 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (rb_objspace_call_finalizer): call gc_mark_stacked_objects
	  at suitable point.

Thu Oct  4 16:31:29 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c (rb_objspace_call_finalizer): mark self-referencing finalizers
	  before run finalizers, to fix SEGV from btest on 32bit.

	* gc.c (gc_mark_stacked_objects): extract from gc_marks().

Thu Oct  4 11:43:28 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread_pthread.c (ruby_init_stack): round stack limit to page size
	  boundary to calculate stack size more precisely.  [ruby-dev:46174]
	  [Bug #7084]

Wed Oct  3 19:51:57 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c: Use the non-recursive marking instead of recursion. The
	  recursion marking of CRuby needs checking stack overflow and the
	  fail-safe system, but these systems not good at partial points,
	  for example, marking deep tree structures. [ruby-dev:46184]
	  [Feature #7095]

	* configure.in (GC_MARK_STACKFRAME_WORD): removed. It's used by
	  checking stack overflow of marking.

	* win32/Makefile.sub (GC_MARK_STACKFRAME_WORD): ditto.

Wed Oct  3 15:33:02 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread_pthread.c (ruby_init_stack): use getrlimit() for the main
	  thread on Mac OS X, since pthread_get_stack{addr,size}_np()
	  return the default value always, but not the ulimit value.
	  [ruby-dev:46174] [Bug #7084]

Wed Oct  3 11:43:15 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_io_reopen): improvement to accept optional arguments.
	  a patch by Glass_saga (Masaki Matsushita) in [ruby-core:47806].
	  [Feature #7103]

Wed Oct  3 04:36:11 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/openssl/ossl_x509store.c (ossl_x509store_add_file):  Added
	  documentation
	* ext/openssl/ossl_x509store.c (ossl_x509store_set_default_paths):
	  ditto
	* ext/openssl/ossl_x509store.c (ossl_x509store_add_cert):  ditto

Wed Oct  3 02:23:37 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* error.c (exc_to_s, name_err_to_s, name_err_mesg_to_str): do not
	  taint messages.

Tue Oct  2 16:47:06 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* eval.c (identity_hash_new): hide internal hashes for refinements.

	* eval.c (rb_mod_refine): no default value.

Mon Oct  1 22:54:02 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (identity_hash_new): new function to create a new identity
	  hash.

	* eval.c (rb_overlay_module, rb_mod_using, rb_mod_refine): use
	  identity_hash_new().

Mon Oct  1 02:34:53 2012  Akinori MUSHA  <knu@iDaemons.org>

	* configure.in (--with-opt-dir): Make this also work on DLDFLAGS
	  so LIBRUBY_SO links fine with libexecinfo installed in a
	  non-system directory.

Sun Sep 30 23:32:00 2012  Kenta Murata  <mrkn@mrkn.jp>

	* vm_dump.c (rb_vm_bugreport): add /Library/Logs/DiagnosticReports
	  in the list of locations of crash reports.

Sun Sep 30 21:18:03 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* string.c (rb_str_concat): use memcpy to copy a string which contains
	  NUL characters. [ruby-core:47751] [Bug #7090]

Sat Sep 29 19:41:53 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/ruby/envutil.rb (EnvUtil#invoke_ruby): kill child process
	  before Timeout::Error is raised. rmdir of mktmpdir fails with
	  EACCES if child process is alive on Windows.

	* test/thread/test_queue.rb (TestQueue): increase timeout.
	  This test takes long time on Windows XP.

Sat Sep 29 19:41:33 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/net/http/test_http.rb (TestNetHTTP#test_proxy_address):
	  clear environment variables. If http_proxy environment variable was
	  set, the test failed.

	* test/net/http/test_http.rb (TestNetHTTP#test_proxy_port): ditto.

Sat Sep 29 19:41:11 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/drb/drbtest.rb (DRbCore#teardown):
	  Use Process.kill :KILL on Windows because Process.kill :INT silently
	  fails on Windows 7 and raises EINVAL on Windows XP for spawned
	  process with new_pgroup: false.

	* test/drb/drbtest.rb (DRbAry#teardown): ditto.

Sat Sep 29 19:40:32 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/ruby/test_unicode_escape.rb (TestUnicodeEscape#test_basic):
	  set script encoding to work with LANG=C. It would work on both
	  Windows and Unix. Refix of r37051.

Sat Sep 29 11:21:06 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_insnhelper.c (rb_vm_using_modules): use using_modules before
	  klass to fix method lookup order, and use klass even if klass is
	  not a module to make refinements in class_eval invoked on classes
	  work.

	* eval.c (rb_using_module): accept a class as the second argument.

	* eval.c (rb_mod_using, f_using): raise a TypeError if the argument
	  is not a module.

	* test/ruby/test_refinement.rb: add new tests for the above changes.

Sat Sep 29 02:18:57 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/ruby/test_unicode_escape.rb (TestUnicodeEscape#test_basic):
	  Use ruby only on Windows since the test fails on Unix with LANG=C.
	  [ruby-core:47709] [Bug #7076]

Fri Sep 28 22:19:31 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/ruby/test_unicode_escape.rb (TestUnicodeEscape#test_basic):
	  echo command doesn't work properly against non-ascii character on
	  Windows with chcp 437. Instead we use ruby.
	  [ruby-core:47709] [Bug #7076]

Fri Sep 28 17:54:31 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_setup_method): refactoring.
	  Remove src_argc and use iseq->arg_size directly.

Fri Sep 28 17:26:27 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/rubygems/installer.rb (check_that_user_bin_dir_is_in_path):
	  test_generate_bin_bindir_with_user_install_warning(TestGemInstaller)
	  fails on Windows with msys bash. It makes comparing paths
	  case-insensitive.
	  pick from upstream to fix a failure of test-all [ruby-core:47711]
	 https://github.com/rubygems/rubygems/commit/c474edb2f3704206f04da1c8c6cf9fb079d84abe

Fri Sep 28 15:44:45 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_method.c (search_method): copy refinement iclasses to search
	  superclasses correctly.

	* test/ruby/test_refinement.rb: related test.

Fri Sep 28 15:15:41 2012  Koichi Sasada  <ko1@atdot.net>

	* insns.def (opt_checkenv): remove unused instruction `opt_checkenv'.

	* compile.c (iseq_compile_each): ditto.

	* node.h: remove unused node `NODE_OPTBLOCK'.

	* ext/objspace/objspace.c, gc.c (gc_mark_children): ditto.

Fri Sep 28 13:14:34 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h: now VM_DEBUG_BP_CHECK should be 1.

Fri Sep 28 12:51:54 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h: remove rb_control_frame_t::bp (bp: base pointer).
	  `bp' can be calculate by `sp' (stack pointer) of previous frame.
	  Now, `bp_check' field is remained for debug.  You can eliminate
	  this field by setting  VM_DEBUG_BP_CHECK as 0.

	* vm_insnhelper.c (vm_base_ptr): add `vm_base_ptr(cfp).
	  This function calculates base pointer from cfp.

	* vm_insnhelper.c (vm_setup_method): push `recv' value on top of
	  value stack (before method parameters).
	  This change is for keeping consistency with normal method dispatch.

	* insns.def: fix to use vm_base_ptr().

	* vm.c (vm_exec): ditto.

	* vm_dump.c: remove `bp' related dumps.

	* cont.c (fiber_init): fix to check VM_DEBUG_BP_CHECK.

Fri Sep 28 10:40:51 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_io_reopen): accept File::Constants as well as mode string.
	  based on the patch by Glass_saga (Masaki Matsushita) in
	  [ruby-core:47694].  [Feature #7067]

Thu Sep 27 18:36:51 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (rb_overlay_module, rb_mod_refine): accept a module as the
	  argument of Module#refine.

	* vm_method.c (search_method): if klass is an iclass, lookup the
	  original module of the iclass in omod in order to allow
	  refinements of modules.

	* test/ruby/test_refinement.rb: add tests for the above changes.

Thu Sep 27 18:12:20 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/syslog/lib/syslog/logger.rb: add a formatter to the
	  Syslog::Logger object. [Bug #7065]
	* test/syslog/test_syslog_logger.rb: ditto.

Wed Sep 26 16:39:57 2012  Koichi Sasada  <ko1@atdot.net>

	* insns.def: add new instruction `opt_empty_p' for optimize `empty?'
	  method.  Apply a patch proposed at [ruby-dev:46120]
	  [ruby-trunk - Feature #6972] by Glass_saga (Masaki Matsushita).

	* compile.c (iseq_specialized_instruction), vm.c, vm_insnhelper.h:
	  ditto.

	* id.c, template/id.h.tmpl: ditto.

	* test/ruby/test_optimization.rb: test for this changes.

Tue Sep 25 09:59:26 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* insns.def (invokesuper): klass in cfp is not valid in at_exit and
	  END blocks.  [ruby-core:47680] [Bug #7064]

Tue Sep 25 08:11:11 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* iseq.c (rb_iseq_defined_string): the index of defined_strings must
	  be the value of type - 1.

Mon Sep 24 17:36:51 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* compile.c (defined_expr), insns.def (defined): share single frozen
	  strings.  [EXPERIMENTAL] [ruby-core:47558][Feature #7035]

	* iseq.c (rb_iseq_defined_string): make expression strings.

Mon Sep 24 11:22:36 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* tool/merger.rb: add --ticket option to add ticket number.

Sun Sep 23 21:51:59 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (String#unspace): unescape with backslashes.  normal
	  makes need to escape spaces with backslashes.  nmake is not the
	  case.  [Bug #7036]

	* lib/mkmf.rb (create_makefile): use timestamp file dependencies for
	  directories.

	* lib/mkmf.rb: unexpand macros.

	* lib/mkmf.rb (LIBPATHFLAG): no needs to escape library path here.

	* lib/mkmf.rb (MakeMakefile#configuration): make prefix paths
	  internal to deal with in Makefile.

	* lib/mkmf.rb (MakeMakefile#mkintpath): not a global function now.

Sun Sep 23 02:33:37 2012  Benoit Daloze  <eregontp@gmail.com>

	* complex.c: Fix examples of r36993.
	  Keep the simple definition, mathematics define the result.
	  Based on patch by Robin Dupret. Fixes #188 on github.

Sat Sep 22 07:15:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* ext/ripper/lib/ripper.rb:
	  Match sample output to Ripper.sexp from current trunk version.
	  [Bug #6929]

Thu Sep 20 23:05:11 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread_pthread.c (native_cond_initialize): destroy condattr
	  after using it. Patch by Stanislav Sedov. Thank you.
	  [Bug #7041] [ruby-core:47619]

Thu Sep 20 22:53:02 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread_pthread.c (native_cond_initialize): clean up #ifdef condition.

Thu Sep 20 16:42:44 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/drb/ssl.rb (DRb::DRbSSLSocket::SSLConfig::DEFAULT): add
	  SSLTmpDhCallback for configuration option.

	* lib/drb/ssl.rb (setup_ssl_context): copy the value of tmp_dh_callback.

	* test/drb/ut_array_drbssl.rb: set tmp_dh_callback to suppress warning.

	* test/drb/ut_drb_drbssl.rb: ditto.

Thu Sep 20 10:56:08 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/drb/ut_drb.rb: revert a part of r36987, and get rid of a warning
	  with another method.  if the substitution is removed, the ExtSrv
	  object will be GC'ed and some tests will be blocked.

Thu Sep 20 07:20:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* complex.c: Examples for Complex Documentation.
	  Patch by Robin Dupret.
	  Fixes #184 on github.

Thu Sep 20 07:15:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* ext/ripper/lib/ripper.rb: Documentation for Ripper.
	  +:void_stmt+ is meaningless
	  [Bug #6929] [ruby-core:47507]

Thu Sep 20 07:05:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* lib/csv.rb (Object#CSV, Array#to_csv, String#parse_csv):
	  Examples and documentation for CSV.
	  [Bug #6880] [ruby-core:47218]

Thu Sep 20 00:42:20 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* array.c (take_items), enum.c (enum_zip): raise TypeError at
	  non-enumerable objects, not NoMethodError.  [ruby-dev:46145]
	  [Bug #7038]

	* vm_eval.c (rb_check_block_call): check_funcall variant with block
	  function.

Tue Sep 18 17:51:29 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/openssl/ossl_ssl.c (ossl_sslctx_attrs): add npn_select_db to
	  suppress warning: instance variable @npn_select_cb not initialized

Sun Sep 16 17:47:00 2012  Eric Hodel  <drbrain@segment7.net>

	* tool/change_maker.rb:  Update svn detection for subversion 1.7's
	  single .svn directory.

Sun Sep 16 11:39:12 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (io_set_read_length): if the read length equals to the buffer
	  string size then nothing to do.  or ensure the string modifiable
	  before setting the length only when the former is shorter.  based on
	  the patch in [ruby-core:47541] by Hiroshi Shirosaki.
	  [ruby-core:46586] [Bug #6764]

Sun Sep 16 08:57:52 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (strict_warnflags): separate strict flags from
	  warnflags only for core.  [ruby-dev:46105]

Sun Sep 16 08:16:05 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* .editorconfig: add.  [ruby-core:47548] [Feature #7030]

Sat Sep 15 01:56:40 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/nkf/nkf-utf8/nkf.c: Merge upstream: 50a383c84.
	  [ruby-dev:46128] [Bug #7005]

Sat Sep 15 00:20:04 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/nkf/nkf.c (rb_nkf_convert): suppress warning.

Fri Sep 14 04:05:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* array.c (rb_ary_diff, rb_ary_uniq):
	  Enhance documentation for array uniqueness
	  Based on a patch by Robin Dupret
	  [Bug #6872] [ruby-core:47209]

Fri Sep 14 03:30:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* array.c (rb_ary_select):
	  Update documentation for Array#select
	* enum.c (enum_find_all, enum_reject):
	  Update documentation for Enumerable#find_all and Enumerable#reject
	  Based on a patch by Jeff Saracco
	  [Bug #6908] [ruby-core:47285] [Fixes #166 on github]

Fri Sep 14 00:20:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* signal.c (rb_f_kill):
	  Update documentation for Process.kill to reflect kill(2)
	  Patch by Richo Healey

Thu Sep 13 21:40:49 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* lib/securerandom.rb (SecureRandom.random_bytes):
	  Use 64bit value as pointer for Windows x64 to fix SystemCallError.

	* lib/securerandom.rb (SecureRandom.lastWin32ErrorMessage):
	  Set proper encoding to avoid invalid byte sequence error.
	  [ruby-core:47451] [Bug #6990]

Thu Sep 13 11:20:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* lib/optparse.rb: Remove unreachable email address from documentation
	  [Bug #6996] [ruby-core:47459]

Thu Sep 13 11:20:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* lib/xmlrpc.rb: Documentation for XMLRPC
	* lib/xmlrpc/datetime.rb: ditto.
	* lib/xmlrpc/parser.rb: ditto.
	* lib/xmlrpc/client.rb: ditto.
	* lib/xmlrpc/utils.rb: ditto.
	* lib/xmlrpc/README.rdoc: ditto.
	* lib/xmlrpc/create.rb: ditto.
	* lib/xmlrpc/base64.rb: ditto.
	* lib/xmlrpc/config.rb: ditto.
	* lib/xmlrpc/httpserver.rb: ditto.
	* lib/xmlrpc/server.rb: ditto.
	* lib/xmlrpc/marshal.rb: ditto.
	* lib/xmlrpc/README.txt: ditto.
	  [Bug #6909] [ruby-core:47286]

Thu Sep 13 10:22:11 2012  Takashi Toyoshima  <toyoshim@gmail.com>

	* configure.in: Don't use PIE on Haiku because loader support is not
	  enough.

Thu Sep 13 08:20:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* lib/shellwords.rb: Documentation for Shellwords.

Thu Sep 13 08:00:00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* ext/ripper/lib/ripper.rb: Documentation for Ripper.
	* ext/ripper/lib/ripper/lexer.rb: ditto.
	* ext/ripper/lib/ripper/sexp.rb: ditto.
	* ext/ripper/lib/ripper/filter.rb: ditto.
	* ext/ripper/lib/ripper/core.rb: ditto.
	  [Bug #6929] [ruby-core:47309]

Wed Sep 12 22:59:07 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_insnhelper.c (vm_method_missing, vm_call_method): reuse arguments
	  on the VM stack and get rid of ALLOCA.

Wed Sep 12 22:45::00 2012  Zachary Scott  <zzak@ruby-lang.org>

	* ext/pathname/lib/pathname.rb: Documentation for Pathname.
	* ext/pathname/pathname.c: ditto.
	  [Bug #6947] [ruby-core:47354]

Mon Sep 10 10:19:34 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* enc/depend: fixed wrong change in a part of r34802.

Sun Sep  9 22:02:50 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* ext/socket/basicsocket.c (rsock_bsock_send):
	  avoid unnecessary select() calls before doing I/O
	  Patch by Eric Wong. [Feature #4538] [ruby-core:35586]
	* ext/socket/init.c (rsock_s_recvfrom): ditto.
	* ext/socket/init.c (rsock_s_accept): ditto.
	* ext/socket/udpsocket.c (udp_send): ditto.
	* io.c (io_fflush): ditto.
	* io.c (io_binwrite): ditto.
	* io.c (rb_io_syswrite): ditto.

Mon Sep 10 01:38:51 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (nogvl_close, maygvl_close, nogvl_fclose, maygvl_fclose):
	  suppress integer <-> pointer cast warnings.
	  [Feature #4570] [ruby-core:35711]

Mon Sep 10 01:36:00 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (rb_io_close): notify fd close before releasing gvl.
	* io.c (fptr_finalize): modify fptr->mode before releasing gvl.
	  remove unnecessary rb_thread_fd_close().
	  [Feature #4570] [ruby-core:35711]

Mon Sep 10 00:16:34 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* process.c: exec() requires to be single threaded also on Haiku.
	  by Takashi Toyoshima <toyoshim@gmail.com>
	  https://github.com/ruby/ruby/pull/178

Sun Sep  9 21:21:15 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* lib/thread.rb (Queue#pop): Fixed double registration issue when
	  mutex.sleep is interrupted. [Bug #5258] [ruby-dev:44448]
	* lib/thread.rb (SizedQueue#push): ditto.

	* test/thread/test_queue.rb (test_sized_queue_and_wakeup,
	test_queue_pop_interrupt, test_sized_queue_pop_interrupt,
	test_sized_queue_push_interrupt): new tests.

Sun Sep  9 20:20:31 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* lib/sync.rb (Sync_m#sync_lock): Fixed wakeup/raise unsafe code.
	  Patched by Masaki Matsushita. [Bug #5355] [ruby-dev:44521]

	* test/thread/test_sync.rb (test_sync_lock_and_wakeup,
	  test_sync_upgrade_and_wakeup, test_sync_lock_and_raise):
	  new test.

Sun Sep  9 18:39:46 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* include/ruby/intern.h (rb_thread_blocking_region): Added
	  a comment of recommended alternative way.

Sun Sep  9 18:37:05 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* lib/sync.rb (Sync_m): Removed RCS_ID.

Sun Sep  9 18:21:03 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_io.rb (test_advise_pipe): new test to check
	  io.advise() against anonymous io object don't make crash.
	  made by Eric Wong. [Bug #6081] [ruby-core:42880]

Sun Sep  9 16:47:12 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (nogvl_close, maygvl_close, nogvl_fclose, maygvl_fclose):
	  new functions.
	* io.c (fptr_finalize): release GVL if possible.
	  Patched by Eric Wong. [Feature #4570] [ruby-core:35711]

Sun Sep  9 16:08:48 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (io_bufread): removed unnecessary rb_thread_wait_fd().
	  Patch by Eric Wong. [Bug #6629] [ruby-core:45789]
	* io.c (rb_io_sysread): ditto.
	* io.c (copy_stream_fallback_body): ditto.

Sun Sep  9 15:21:52 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_mutex_lock): stop multiple threads use
	  pthread_cond_timedwait() concurrently. [Bug #6278] [ruby-core:44275]

Sat Sep  8 18:52:22 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* internal.h (struct rb_classext_struct): move allocator function into
	  rb_classext_t from ordinary method table.  [ruby-dev:46121]
	  [Feature #6993]

	* object.c (rb_obj_alloc): call allocator function directly.

	* vm_method.c (rb_define_alloc_func, rb_undef_alloc_func)
	  (rb_get_alloc_func): use allocator function in rb_classext_t.

Fri Sep  7 01:21:51 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/extmk.rb (extmake), lib/mkmf.rb (have_framework): fix splitting
	  options with an argument, not using NUL as special character.
	  [ruby-core:47447] [Bug #6987]

Thu Sep  6 14:49:49 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* .gdbinit (rp): FLONUM support.

	* include/ruby/ruby.h (ruby_special_consts): define FLONUM constants
	  always, so that they are available from gdb.

	* include/ruby/ruby.h (RB_FLOAT_TYPE_P): merge FLONUM and non-FLONUM
	  versions.  inline TYPE() comparison and FLONUM_P() should be
	  optimized away on non-FLONUM.

Thu Sep  6 08:20:55 2012  Ryan Davis  <ryand-ruby@zenspider.com>

	* lib/minitest/*: Imported minitest 3.4.0 (r7762)
	* test/minitest/*: ditto

Wed Sep  5 19:20:53 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* parse.y (rb_warn4S): renamed from rb_warn4(), because the case in
	  r36911 takes a string.

	* parse.y (rb_warn4S): use ripper_warnS() for ripper.

	* parse.y (ripper_warnS): now it is used.

Wed Sep  5 15:51:52 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* .travis.yml (notifications): [experimental] update notification
	  template.

Wed Sep  5 15:21:12 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* parse.y (rb_warn4): added as a rb_warn variant to warn with explicit
	  source file name and line in parse.y.

	* parse.y (warn_unused_var): use rb_warn4 to suppress warning on ripper.

Wed Sep  5 13:30:04 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* dir.c (glob_make_pattern): names under recursive need to be single
	  basenames to match for each name.  [ruby-core:47418] [Bug #6977]

Tue Sep  4 20:55:17 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/ruby/envutil.rb (EnvUtil#invoke_ruby): show Timeout::Error
	  instead of IOError if the timeout has expired.

	* test/test_pstore.rb
	  (PStoreTest#test_pstore_files_are_accessed_as_binary_files):
	  increase timeout because this test is slow on Windows.
	  [ruby-core:47402] [Bug #6965]

Tue Sep  4 11:28:57 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* vm_eval.c (ruby_eval_string_from_file_protect): initializer
	  element is not computable at load time.

Tue Sep  4 07:48:35 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_asn1_rb:
	  test/openssl/test_ssl_session.rb:
	  test/openssl/test_x509name.rb:
	  test/openssl/test_buffering.rb:
	  test/openssl/test_x509cert.rb:
	  test/openssl/test_ssl.rb: Refactor code that leads to warnings on
	  Ruby CI.

Tue Sep  4 07:02:56 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/utils.rb: Use DSS1 as DSA signature digest for all
	  OpenSSL versions < 1.0.0.
	  [Feature #6946] [ruby-core:47405]

Mon Sep  3 21:22:37 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/ruby.h (rb_float_value): suppress warnings.
	  [ruby-core:47406][Bug #6971]

Mon Sep  3 14:49:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/matrix.rb (Vector#magnitude): accumulate squares of absolute
	  values to fix for complex vector.  [ruby-dev:46100] [Bug #6966]

Mon Sep  3 10:09:36 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/extconf.rb: Detect OpenSSL_FIPS macro
	  ext/openssl/ossl.c: Expose OpenSSL::OPENSSL_FIPS constant to
	  indicate whether OpenSSL runs in FIPS mode.
	  test/openssl/test_pkey_dh.rb: Generate 256 bit keys for
	  non-FIPS installations to improve test performance (e.g. for
	  rubyci).
	  test/openssl/utils.rb: Replace DSS1 as certificate signature
	  digest with SHA1 for FIPS installations when using DSA by
	  introducing TestUtils::DSA_SIGNATURE_DIGEST.
	  test/openssl/test_x509cert.rb:
	  test/openssl/test_x509crl.rb:
	  test/openssl/test_x509req.rb: Use DSA_SIGNATURE_DIGEST
	  NEWS: Introduce OpenSSL::OPENSSL_FIPS

	  These changes allow running the OpenSSL tests in FIPS mode
	  while keeping a high performance for non-FIPS installations.
	  Introduction of OpenSSL::OPENSSL_FIPS allows for applications
	  to react to special requirements when using OpenSSL in FIPS mode.
	  [Feature #6946] [ruby-core:47345]

Sun Sep  2 21:46:28 2012  Martin Bosslet <Martin.Bosslet@googlemail.com>

	* test/openssl/utils.rb: Use a cached DH key instead of generating a
	  new one each time.

Sun Sep  2 05:41:28 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/webrick/ssl.rb (WEBrick::Config::SSL): add new key
	  SSLTmpDhCallback to set SSLContext#tmp_dh_callback.

	* lib/webrick/ssl.rb (WEBrick::GenericServer#setup_ssl_context):
	  follow above.

Sat Sep  1 18:50:50 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/set.rb (#initialize_copy, #eql): Use instance_variable_get
	  instead of instance_eval.

Fri Aug 31 21:47:56 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/test/unit/test-unit.gemspec: Make test/unit default gem.
	  [Feature #6875] [ruby-dev:46051]

Fri Aug 31 18:35:02 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/extconf.rb: Check existence of OPENSSL_NPN_NEGOTIATED.
	  ext/ossl_ssl.c: Support Next Protocol Negotiation. Protocols to be
	  advertised by the server can be set in the SSLContext by using
	  SSLContext#npn_protocols=, protocol selection on the client is
	  supported by providing a selection callback with
	  SSLContext#npn_select_cb. The protocol that was finally negotiated
	  is available through SSL#npn_protocol.
	  test/openssl/test_ssl.rb: Add tests for Next Protocol Negotiation.
	  NEWS: add news about NPN support.
	  [Feature #6503] [ruby-core:45272]

Fri Aug 31 17:38:43 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/set.rb (Set#{each,reject!,select!}, SortedSet#each): Pass
	  the original block through instead of creating one that only
	  yields the passed argument.

Fri Aug 31 16:23:20 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/ipaddr.rb: Introduce several new error classes where only
	  ArgumentError and StandardError were used.  IPAddr::Error is
	  their common ancestor class that inherits from ArgumentError for
	  backward compatibility.  Submitted by Jon Daniel.  Fixes #173 on
	  GitHub.

Fri Aug 31 14:51:27 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/bigdecimal/test_bigdecimal.rb (TestBigDecimal#test_to_f): added
	  for previous commit.

Fri Aug 31 14:32:05 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/bigdecimal/bigdecimal.c (BigDecimal_to_f): use self's sign to
	  determine 0.0 and Inf's sign instead of internal double value's.
	  Reported by phasis68 (Heesob Park) at [ruby-core:47381] [Bug #6955]

Fri Aug 31 14:31:17 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* template/id.h.tmpl, tool/id2token.rb: make id.h independent from
	  parse.h, and make parse.c dependent on it instead.

Fri Aug 31 14:27:39 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (create_makefile): fix race conditions at install-ext.
	  target files need to depend on destination directory timestamp
	  files, not phony targets.

Fri Aug 31 14:03:45 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_trace.c (clean_hooks): do not access freed memory.

	* vm_trace.c (rb_threadptr_exec_event_hooks): fix uninitialized state
	  when no events is executed.

Thu Aug 30 18:21:51 2012  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_io_close): call rb_last_status_clear.

Thu Aug 30 16:17:52 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/bigdecimal/bigdecimal.c (BigDecimal_to_f): check underflow since
	  strtod() sets errno to ERANGE at underflow too.  [ruby-core:47342]
	  [Bug #6944]

Thu Aug 30 12:44:43 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/set.rb (Set#{<,>,<=,>=}): Define comparison operators as
	  shorthand for the {proper_}{subset?,superset?} methods (finally).
	  Given a push by Alexander E. Fischer.

Thu Aug 30 09:21:01 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/uri/ftp.rb (URI::FTP#initialize): raise InvalidURIError if "//"
	  is not present [ruby-core:47344] [Bug #6945]

Thu Aug 30 07:45:12 2012  Luis Lavena  <luislavena@gmail.com>

	* test/ruby/test_file_exhaustive.rb: fix test introduced in r36811 for
	  posix environments where HOME is not defined.  [ruby-core:47322]

Wed Aug 29 23:42:59 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_last_status_clear): declared.

	* process.c (rb_last_status_clear): exported.
	  (rb_f_system): call rb_last_status_clear.

	* io.c (rb_f_backquote): call rb_last_status_clear.

Wed Aug 29 22:01:15 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_f_system): check failures of waitpid.
	  [ruby-talk:398687]

Wed Aug 29 15:03:04 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (LIBDIR_BASENAME): use configured libdir value to fix
	  --enable-load-relative on systems where libdir is not default value,
	  overridden in config.site files.  [ruby-core:47267] [Bug #6903]

	* ruby.c (ruby_init_loadpath_safe): ditto.

Wed Aug 29 14:34:41 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* addr2line.c: SIZE_MAX is defined in stdint.h, so r36755 breaks
	  32bit FreeBSD. [ruby-core:47360] [Bug #6948]

Wed Aug 29 04:50:04 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/utils.rb
	  test/openssl/test_pair.rb
	  test/openssl/test_pkey_dh.rb: Use 1024 bit DH parameters to satisfy
	  OpenSSL FIPS requirements. Patch by Vit Ondruch.
	  [Bug #6938] [ruby-core:47326]

Tue Aug 28 22:31:49 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* insns.def (checkmatch): suppress warnings. [ruby-core:47339]
	  [Bug #6930]

Tue Aug 28 20:03:54 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: Fixing Haiku R1/alpha3 build with gcc-4.4.4.
	  - omit ANSI standard flags to compile socket extension where
	    anonymous union is required.
	  - remove redundant -be flags.
	  by Takashi Toyoshima <toyoshim@gmail.com>
	  https://github.com/ruby/ruby/pull/168

Tue Aug 28 11:32:37 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* nacl/GNUmakefile.in (.rbconfig.time): r36828 was incomplete.
	  It did not run correctly on clean build.

Tue Aug 28 09:25:20 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/Makefile.sub (Makefile): make to depend on common.mk, to
	  stop and force to re-run make process when common.mk is changed.

Mon Aug 27 20:19:49 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/etc/test_etc.rb (TestEtc#test_getgrgid): fix for non unique GID.
	  No unixen systems guarantee that GID is unique. Etc.getgrgid would
	  not return the first entry in the order of Etc.group for shared GID.
	  [ruby-core:47312] [Bug #6935]

Mon Aug 27 18:19:36 2012  Koichi Sasada  <ko1@atdot.net>

	* include/ruby/ruby.h (rb_float_value): optimize it.
	  This technique was pointed by shinichiro.hamaji
	  <http://shinh.skr.jp/m/?date=20120825#p02>.

Mon Aug 27 15:08:25 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* common.mk (vm_trace.o): Added a missing dependency.

Sun Aug 26 09:29:32 2012  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* nacl/GNUmakefile.in (package): make package should install
	  example.html for nacl build

	Patch by Takashi Toyoshima <toyoshim AT gmail.com>.

Sun Aug 26 09:22:33 2012  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* nacl/GNUmakefile.in (CC, LD, NM, AR, AS, RANLIB, OBJDUMP, OBJCOPY)
	  Rewrites these variables instead of PATH.
	  NaCl port uses a toolchain which is specified by NACL_SDK_ROOT
	  environment variable. Originally, NaCl build added the toolchain
	  under the NACL_SDK_ROOT to the PATH. But updating PATH doesn't work
	  on Mac.
	  (RBCONFIG): Replaces configs with the variable updates above.

	* configure.in: Thus it is no longer necessary to check $PATH.

	Based on a patch by Takashi Toyoshima <toyoshim AT gmail.com>.

Sun Aug 26 16:53:00 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* insns.def (checkmatch): suppress warnings.  [ruby-core:47310]
	  [Bug #6930]

	* vm_core.h (VM_FRAME_TYPE_FINISH_P): ditto.

Fri Aug 24 15:42:28 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (create_makefile): use timestamp for destination
	  directories to make them before making or copying files there.
	  [ruby-dev:46067] [Bug #6904]

Fri Aug 24 12:40:15 2012  Luis Lavena  <luislavena@gmail.com>

	* configure.in (mingw): add shlwapi to the list of dependency
	  libs for Windows.
	* win32/Makefile.sub (EXTSOLIBS): ditto.

	* internal.h: declare internal functions rb_w32_init_file,
	  rb_file_expand_path_internal and rb_file_expand_path_fast.

	* file.c (Init_File): invoke Windows initialization rb_w32_init_file

	* win32/file.c (rb_file_load_path_internal): new function.
	  Windows-specific implementation that replaces file_expand_path.
	  [Bug #6836][ruby-core:46996]

	* win32/file.c (rb_w32_init_file): new function. Initialize codepage
	  cache for faster conversion encodings lookup.

	* file.c (file_expand_path): rename to rb_file_expand_path_internal.
	  Conditionally exclude from Windows.

	* file.c (rb_file_expand_path_fast): new function. delegates to
	  rb_file_expand_path_internal without performing a hit to the
	  filesystem.

	* file.c (file_expand_path_1): use rb_file_expand_path_internal without
	  path expansion (used by require).
	* file.c (rb_find_file_ext_safe): ditto.
	* file.c (rb_find_file_safe): ditto.

	* load.c (rb_get_expanded_load_path): use rb_file_expand_path_fast.
	* load.c (rb_feature_provided): ditto.

	* file.c (rb_file_expand_path): use rb_file_expand_path_internal with
	  path expansion.
	* file.c (rb_file_absolute_path): ditto.

	* test/ruby/test_file_exhaustive.rb: new tests to exercise
	  rb_file_expand_path_internal implementation and compliance with
	  existing behaviors.

Fri Aug 24 07:35:24 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http/backward.rb (class Net):  Restored Net::HTTPSession to
	  fix backwards-compatibility with ancient Net::HTTP.  [Bug #6889]

Thu Aug 23 20:58:55 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* common.mk: support `make id.h` without `rm .id.h.time` after
	  `rm id.h`.

Thu Aug 23 20:48:45 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_fixnum.rb (TestFixnum#test_singleton_method): new test.

	* test/ruby/test_bignum.rb (TestBignum#test_singleton_method): ditto.

	* test/ruby/test_float.rb (TestFloat#test_singleton_method): ditto.

	* test/ruby/test_symbol.rb (TestSymbol#test_singleton_method): ditto.

Thu Aug 23 20:34:32 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* class.c (singleton_class_of): flonum can't have singleton class.

	* vm.c (vm_define_method): flonum can't have singleton method.

Thu Aug 23 19:18:33 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* common.mk (win32/*): macro RUBY_H_INCLUDES is not defined there,
	  so need to move dependency rules under the definition of it.

Thu Aug 23 19:16:20 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/Makefile.sub: refactoring.  remove unused rules, and update
	  some rules which are not used usually to fit current macros.

Thu Aug 23 16:46:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* file.c (rb_find_file_ext_safe, rb_find_file_safe): default to
	  US-ASCII for encdb and transdb.

	* load.c (search_required): keep encoding of feature name.  set
	  loading path to filesystem encoding.  [Bug #6377][ruby-core:44750]

	* ruby.c (add_modules, require_libraries): assume default external
	  encoding as well as ARGV.

Thu Aug 23 16:20:04 2012  Koichi Sasada  <ko1@atdot.net>

	* include/ruby/ruby.h: introduce flonum technique for
	  64bit CPU environment (sizeof(double) == sizeof(VALUE)).
	  flonum technique enables to avoid double object creation
	  if the double value d is in range about between
	  1.72723e-77 < |d| <= 1.15792e+77 or 0.0.
	  flonum Float value is immediate and their lowest two bits
	  are b10.
	  If flonum is activated, then USE_FLONUM macro is 1.
	  I'll write detailed in this technique on
	  https://bugs.ruby-lang.org/projects/ruby-trunk/wiki/Flonum_tech

	* benchmark/bmx_temp.rb: add an benchmark for simple
	  Float calculation.

	* gc.c (id2ref, rb_obj_id): add flonum Float support.

	* include/ruby/intern.h: move decl of rb_float_new(double)
	  to include/ruby/ruby.h.

	* insns.def, vm.c, vm_insnhelper.c: add flonum optimization
	  and simplify source code.

	* vm_insnhelper.h (FLONUM_2_P): added.

	* marshal.c: support flonum output.

	* numeric.c (rb_float_new_in_heap): added.

	* parse.y: support flonum.

	* random.c: ditto.

Thu Aug 23 16:12:40 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* lib/mkmf.rb (create_makefile): add dependency to header files when
	  depend files don't exist.  now we can remove simple (and often
	  wrong) depend files in most cases.

Thu Aug 23 16:02:20 2012  Koichi Sasada  <ko1@atdot.net>

	* ext/date/depend: add dependency to $(ruby_headers).

Thu Aug 23 12:51:39 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* insns.def (invokesuper): reverted r36640 partially to make super
	  in a thread work correctly. [ruby-core:47284] [Bug #6907]

	* test/ruby/test_super.rb: related test.

Thu Aug 23 12:30:20 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/configure.bat: support --with(out)?-ext(ensions) options.

Thu Aug 23 11:52:04 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: Fixing Haiku build.
	  - -lbe is not required for linking
	  - stack protector doesn't work for now because of the default gcc's
	    bug
	  by Takashi Toyoshima <toyoshim@gmail.com>
	  https://github.com/ruby/ruby/pull/167

	* signal.c (ruby_signal): haiku doesn't have SIGBUS.

Thu Aug 23 11:32:44 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/open-uri/test_open-uri.rb (TestOpenURI#test_read_timeout): this
	  test expects that the server thread will be killed in sleep, but 0.01
	  sec is too short to reach there.

Thu Aug 23 10:49:28 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: use the value of --with-opt-dir on building ruby
	  itself. [ruby-dev:46064] [Bug #6900]

Thu Aug 23 10:36:35 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* common.mk (ID_H_TARGET): revert a part of r36724 and r36751.  they
	  break mswin build from clean source.

Thu Aug 23 02:37:35 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/syck: removed. Fixes [ruby-core:43360]

	* test/syck: removed.

	* lib/yaml.rb: only require psych, show a warning if people try to set
	  the engine to syck.

Thu Aug 23 01:46:53 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* insns.def: search up the cf stack for an object that is an instance
	  of the recipient class.  Fixes [ruby-core:47186]

	* test/ruby/test_super.rb: related test.

Wed Aug 22 19:46:24 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: [ruby-core:47266].

Wed Aug 22 19:41:19 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: [ruby-core:47226].

Wed Aug 22 16:57:04 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (configuration): extract least ruby headers list as
	  ruby_headers, so depend files can use default dependency
	  explicitly.

Wed Aug 22 15:27:50 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.c (vm_setup_method): fix last commit of
	  vm_insnhelper.c (r36771). [ruby-dev:46065] [Bug #6901]
	  Should not disable tail call opt on FINISH_FRAME.
	  This flag should be propagated correctly.

Wed Aug 22 14:05:23 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c: support TracePoint. [ruby-trunk - Feature #6895]

	* test/ruby/test_settracefunc.rb: add tests for above.

	* proc.c (rb_binding_new_with_cfp): add an internal function.

	* vm.c (rb_vm_control_frame_id_and_class): add an internal function.

	* vm_trace.c: add rb_add_event_hook2() and rb_thread_add_event_hook2().
	  Give us the good name for them!

Wed Aug 22 11:38:16 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* .travis.yml (before_script): Turned out that make -j is broken.

Wed Aug 22 11:23:35 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_insnhelper.c (vm_setup_method): should not enable tail call
	  optimization for frames with VM_FRAME_FLAG_FINISH.
	  [ruby-dev:46065] [Bug #6901]

Wed Aug 22 11:20:47 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/rubygems/test_case.rb: run test with psych if exist.

Thu Aug 16 12:09:51 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* nacl/pepper_main.c (init_loadpath): Pushes the correct load path on
	  other architectures than x86_64. Fixes #6873.

Wed Aug 15 19:37:33 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* configure.in (ac_cv_func_shutdown): shutdown(2) has a dummy
	  implementation but has no declaration and does not work in
	  NativeClient SDK pepper_20.

Wed Aug 15 19:29:29 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* common.mk (vm_backtrace.o): Added missing dependencies.

	* ext/nkf/depend (nkf.o): ditto.

	* ext/ripper/depend (ripper.o) ditto.

Wed Aug 22 07:27:00 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/cgi/util.rb (CGI.escapeHTML): use &#39;
	  [ruby-core:47221] [Bug #6861]

Tue Aug 21 21:59:22 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* lib/observer.rb: fix typo. https://github.com/ruby/ruby/pull/162 by
	  unsymbol (Philip Cunningham).

Tue Aug 21 20:30:06 2012  Benoit Daloze  <eregontp@gmail.com>

	* test/fileutils/test_fileutils.rb (TestFileUtils#teardown):
	  do not assume cwd is TMPROOT and never remove current directory.
	  [ruby-core:47224][Bug #6884]

Tue Aug 21 17:29:56 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* addr2line.c (fill_lines): need check and cast of the file size of
	  target binary because there are some platforms which off_t > size_t.

Tue Aug 21 17:07:58 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* .travis.yml (compiler): [experimental] clang support.

Tue Aug 21 15:44:27 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/dl/lib/dl/func.rb (DL::Function#bind): fixes an error in
	  test/dl/test_import.rb (DL::TestImport#test_carried_function)
	  introduced by r36718.
	  the instance of the anonymous class which wraps the block should have
	  same methods and instance variables of self.

Tue Aug 21 14:29:22 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/Makefile.sub (scriptbin.mk): no need to include twice.

Tue Aug 21 10:52:08 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/unit/test.rb (Test::Unit::ProxyError): new exception class to
	  wrap exceptions raised in workers in parallel test mode.

	* test/unit/parallel.rb (Test::Unit::Worker#puke): use above wrapper
	  exception.
	  [Bug #6882] [ruby-dev:46054]

Tue Aug 21 10:40:06 2012  Koichi Sasada  <ko1@atdot.net>

	* test_continuation.rb (tracing_with_thread_set_trace_func):
	  fix to use Thread#set_trace_func(nil), not set_trace_func(nil).

Tue Aug 21 09:32:41 2012  Ryan Davis  <ryand-ruby@zenspider.com>

	* lib/minitest/*: Imported minitest 3.3.0 (r7676)
	* test/minitest/*: ditto

Tue Aug 21 09:05:32 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/testunit/tests_for_parallel/ptest_forth.rb: added a test case
	  which causes an error.

	* test/testunit/test_parallel.rb: follow above change.
	  see [Bug #6882]

Tue Aug 21 05:43:00 2012  James Edward Gray II  <james@graysoftinc.com>

	* lib/csv.rb: Fixes #161 on github
	* lib/csv.rb: You can now specify a pattern for :skip_lines.
	  Matching lines will not be passed to the CSV parser.
	* lib/csv.rb: Patch by Christian Schwartz.

Tue Aug 21 05:25:41 2012  Eric Hodel  <drbrain@segment7.net>

	* re.c (rb_reg_initialize_m): Forgot to update output for or'd-options
	  example.

Tue Aug 21 05:18:03 2012  Eric Hodel  <drbrain@segment7.net>

	* re.c (rb_reg_initialize_m): Update example to show that regexp
	  options use | an not || to avoid confusion.

Mon Aug 20 23:02:27 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y: more descriptive token names in syntax error messages.

Mon Aug 20 20:36:30 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_insnhelper.c (vm_call_method): follow iclasses as klass in cfp
	  but not included modules.  [ruby-core:47241] [Bug #6891]

	* vm_insnhelper.c (vm_call_bmethod): pass defined_class to follow
	  proper ancestors.  [ruby-core:47241] [Bug #6891]

Mon Aug 20 11:40:27 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* common.mk: fix failed to make with -j2.
	  https://gist.github.com/3397935

Mon Aug 20 10:51:01 2012  Shota Fukumori  <sorah@tubusu.net>

	* lib/test/unit.rb, lib/test/unit/parallel.rb:
	  generate error message (String) in parallel.rb instead of
	  marshalling Exception. Fixes [Bug #6882] [ruby-dev:46054]

Sun Aug 19 01:24:32 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* enum.c: fix docs. https://github.com/ruby/ruby/pull/129 by
	  richardkmichael (Richard Michael).

Sun Aug 19 00:47:26 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* lib/fileutils.rb: fix typo.
	  https://github.com/ruby/ruby/pull/155 by simonc (Simon COURTOIS).

Sat Aug 18 09:57:46 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enc/depend: fix inplace-build condition.  enc.mk is generated with
	  setting $srcdir to enc, but pwd is still top build directory.
	  [ruby-core:47236] [Bug #6888]

Fri Aug 17 23:28:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* object.c (rb_any_to_s, rb_obj_inspect): preserve encodings of class
	  name and instance variable names.

Fri Aug 17 12:39:33 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/dl/lib/dl/func.rb (DL::Function#bind): allow to return/break from
	  the callback method. (Fiddle already allows it.)
	  [Bug #6389] [ruby-dev:45604]

Thu Aug 16 19:54:24 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c, vm_core.h: simplify tracing mechanism.

	  (1) add rb_hook_list_t data structure which includes
	      hooks, events (flag) and `need_clean' flag.
	      If the last flag is true, then clean the hooks list.
	      In other words, deleted hooks are contained by `hooks'.
	      Cleanup process should run before traversing the list.
	  (2) Change check mechanism
	      See EXEC_EVENT_HOOK() in vm_core.h.
	  (3) Add `raw' hooks APIs
	      Normal hooks are guarded from exception by rb_protect().
	      However, this protection is overhead for too simple
	      functions which never cause exceptions.  `raw' hooks
	      are executed without protection and faster.
	      Now, we only provide registration APIs.  All `raw'
	      hooks are kicked under protection (same as normal hooks).

	* include/ruby/ruby.h: remove internal data definition and
	  macros.

	* internal.h (ruby_suppress_tracing), vm_trace.c: rename
	  ruby_suppress_tracing() to rb_suppress_tracing()
	  and remove unused function parameter.

	* parse.y: fix to use renamed rb_suppress_tracing().

	* thread.c (thread_create_core): no need to set RUBY_VM_VM.

	* vm.c (mark_event_hooks): move definition to vm_trace.c.

	* vm.c (ruby_vm_event_flags): add a global variable.
	  This global variable represents all of Threads and VM's
	  event masks (T1#events | T2#events | ... | VM#events).
	  You can check the possibility kick trace func or not
	  with ruby_vm_event_flags.
	  ruby_vm_event_flags is maintained by vm_trace.c.

	* cont.c (fiber_switch, rb_cont_call): restore tracing status.
	  [Feature #4347]

	* test/ruby/test_continuation.rb: ditto.

Thu Aug 16 19:15:23 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* object.c (rb_class_initialize): forbid inheriting uninitialized
	  class.  another class tree not based on BasicObject cannot exist.
	  [ruby-core:47148][Bug #6863]

Thu Aug 16 11:52:06 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/-ext-/test_printf.rb (Test_SPrintf#test_{taint,untrust}): use
	  plain object so that the results of to_s and inspect are infected.
	  [ruby-dev:46053] [Bug #6881]

Thu Aug 16 09:46:07 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* strftime.c: remove unnecessary macros to check traditional C.
	  https://github.com/ruby/ruby/pull/46 by lateau (Daehyub Kim).

	* vsnprintf.c: remove K&R.

Wed Aug 15 20:47:49 2012  Benoit Daloze  <eregontp@gmail.com>

	* object.c (rb_obj_inspect): Kernel#inspect: do not call #to_s. A class
	  can now benefit from the nice default #inspect even if it defines #to_s.
	  Also, there is no more unexpected change in #inspect result.

	* NEWS: Add note about the change.

	* bignum.c, io.c, numeric.c, object.c, proc.c, vm.c (Init_*):
	  Adapt internal structures (by aliasing #inspect to #to_s) so they
	  don't rely on the removed behavior (#inspect calling overridden #to_s).

	* test/ruby/test_object.rb (test_inspect): add tests for Kernel#inspect.

	* lib/pp.rb (class PP): do not call #to_s anymore, as #inspect
	  no more does (mame).

	* test/test_pp.rb (class PPInspectTest): remove related assertion (mame).
	  [ruby-core:43238][Feature #6130]

	* test/drb/drbtest.rb (DRbCore#teardown, DRbAry#teardown):
	  adapt DRb tests with the new change (shirosaki).
	  [ruby-core:47182][Bug #6866]

Wed Aug 15 18:05:37 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Runner#failed): need to delete the
	  status line if the status is skipped and -q is specified.

Wed Aug 15 16:26:52 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* sprintf.c (ruby__sfvextra): the result should be infected by the
	  given strings.

	* sprintf.c (ruby__sfvwrite): set buffer length and exclude
	  uninitialized garbage to get correct coderange.

Wed Aug 15 16:20:09 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* common.mk (ID_H_TARGET): make timestamp file of id.h so that the
	  header will not be remade repetitively.

Wed Aug 15 11:39:53 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_trace.c: separate trace_func related functions from
	  thread.c.

	* thread.c: ditto.

	* common.mk: add vm_trace.o.

	* inits.c: call Init_vm_trace().

Tue Aug 14 16:25:46 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* test/erb/test_erb.rb (test_html_escape): add assertions for the
	  cases where the argument is not a String.

Tue Aug 14 16:03:31 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (check_valid_dir): reject "..." as directory name.
	  [Bug #6851]

Tue Aug 14 16:02:51 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_file_exhaustive.rb
	  (TestFileExhaustive#test_stat_dotted_prefix): added.

Tue Aug 14 15:39:09 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_file_exhaustive.rb
	  (TestFileExhaustive#test_stat_drive_root): added.

Tue Aug 14 10:38:17 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/erb.rb (ERB::Util.html_escape): fix r36687: call to_s before
	  passing it to CGI.escapeHTML.

Mon Aug 13 13:13:19 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/erb.rb (ERB::Util.html_escape): use CGI.escapeHTML to escape
	  single quotes. [ruby-core:47138] [Bug #6861]

Sun Aug 12 11:57:20 2012  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm.c (invoke_block_from_c): fix unintentional block passing.
	  [ruby-dev:45071] [Bug #5832]

Fri Aug 10 08:41:28 2012  Eric Hodel  <drbrain@segment7.net>

	* gc.c (gc_malloc_allocated_size):  RDoc does not process macros, so
	  mention this method is only available when ruby is built with
	  CALC_EXACT_MALLOC_SIZE
	* gc.c (gc_malloc_allocations):  ditto

Thu Aug  9 23:46:51 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* tool/mkrunnable.rb: see build_os instead of target arch for
	  cross-compiling.

	* configure.in (MINIRUBY): use real path for include path.

	* template/fake.rb.in (builddir): remove duplications

Thu Aug  9 20:03:11 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/ruby/test_file_exhaustive.rb
	  (TestFileExhaustive#test_stat_special_file): add a test.
	  GetFileAttributesExW fails to get attributes of special files
	  such as pagefile.sys.

	* win32/win32.c (check_valid_dir): for performance, check the path
	  by FindFirstFileW only if the path contains "..."

	* win32/win32.c (winnt_stat): use GetFileAttributesExW instead of
	  FindFirstFileW since GetFileAttributesExW is faster.
	  Based on the patch by Dusan D. Majkic.
	  [ruby-core:47083] [Feature #6845]

Thu Aug  9 18:33:46 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ruby.c (proc_options): show version only once even if -v and
	  --version are given together.
	  http://twitter.com/d6rkaiz/status/233491797085671424

Thu Aug  9 12:37:22 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/openssl/test_config.rb (OpenSSL#test_constants): skip this
	  test if platform is Mac OS X or Windows. [Bug #6830]

Wed Aug  8 22:51:30 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_eval.c (eval_under): singletons other than special constants
	  don't need cref-scope hack.

Wed Aug  8 22:45:38 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* common.mk (.y.h): split from .y.c rule to manage dependency on
	  parse.h.  [ruby-core:46741] [Bug #6789]

	* common.mk (id.h): keep old file unless changed.

Wed Aug  8 17:11:20 2012  Koichi Sasada  <ko1@atdot.net>

	* compile.c (ADD_INSNL): make ADD_INSNL as alias of ADD_INSN1.

Wed Aug  8 17:08:14 2012  Koichi Sasada  <ko1@atdot.net>

	* bootstrap/test_exception.rb: fix a last committed test.

Wed Aug  8 16:27:58 2012  Koichi Sasada  <ko1@atdot.net>

	* compile.c, insns.def (checkmatch):
	  remove checkincludearray instruction and
	  add new instruction checkmatch.
	  This change is to solve
	  [Bug #4438] "rescue args type check omitted".

	* iseq.c: increment ISEQ_MAJOR_VERSION because removal of
	  checkincludearray instruction.

	* vm_core.h: add several definitions for
	  the checkmatch instruction.

	* vm_insnhelper.c (check_match): added.

	* bootstraptest/test_exception.rb: add a test.

	* test/ruby/test_exception.rb: ditto.

Wed Aug  8 05:51:20 2012  Eric Hodel  <drbrain@segment7.net>

	* proc.c (method_clone):  Added documentation.  Patch by Robin Dupret.
	  Fixes #152 on github.

Tue Aug  7 20:19:29 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/readline/readline.c (Init_readline): rl_catch_signals=0 returns
	  back. Without this, on FreeBSD9 and readline 6.2 irb can't catch ^C.
	  [Bug #5423]

Tue Aug  7 20:12:39 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_exec.c, insns.def (leave): solve problems on
	  OPT_CALL_THREADED_CODE.
	  Catch up finish frame structure on OPT_CALL_THREADED_CODE.

	* vm_core.h: add rb_thread_t#retval for temporary space on
	  OPT_CALL_THREADED_CODE.

	* vm.c (th_init): clear rb_thread_t#retval as Qundef.

	* vm_dump.c (rb_vmdebug_debug_print_pre): fix debug print format.

Tue Aug  7 11:58:27 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_require.rb (TestRequire#test_require_twice): added.

Tue Aug  7 11:35:37 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_method.c (rb_redefine_opt_method): use RCLASS_ORIGIN to avoid
	  SEGV when a module-prepended class is refined.

Tue Aug  7 10:46:37 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_file_exhaustive.rb
	  (TestFileExhaustive#test_expand_path*): refactoring.  split the method
	  into some chunks of the same kind of tests.

Tue Aug  7 00:31:09 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* class.c (rb_special_singleton_class_of): utility function.

	* vm_eval.c (eval_under): special deal for class variable scope with
	  instance_eval.

	* vm_eval.c (rb_obj_instance_eval, rb_obj_instance_exec): allow method
	  definition in instance_eval of special constants.  [ruby-core:28324]
	  [Bug #2788]

Tue Aug  7 00:23:58 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* variable.c (CVAR_LOOKUP): split into helper functions.

Mon Aug  6 19:15:11 2012  Masaki Suketa <masaki.suketa@nifty.ne.jp>

	* test/win32ole/test_win32ole_variant.rb: setting WIN32OLE.locale
	  to pass some assertion.  Thanks to Hiroshi Shirosaki.
	  [ruby-core:46873][Bug #6814]

Mon Aug  6 15:54:50 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* internal.h, class.c, eval.c, insns.def: find the appropriate
	  receiver for super called in instance_eval.  If such a receiver is
	  not found, raise NoMethodError. [ruby-dev:39772] [Bug #2402]

Mon Aug  6 14:54:38 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* include/ruby/ruby.h, eval.c, vm_insnhelper.c: fix typo.

Mon Aug  6 13:13:58 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_eval.c (vm_call_super): since cfp->klass is always class or
	  iclass, no search from method entry.

	* insns.def (defined): now should use klass in the current control
	  frame to search superclass, not me->klass.  reported by naruse.

Mon Aug  6 11:19:19 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/etc/test_etc.rb (TestEtc#test_getpwuid): `s' is never set to nil.

Mon Aug  6 11:08:48 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/syslog/test_syslog_logger.rb: skip unless Syslog module is
	  available.

Mon Aug  6 00:40:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/bigdecimal/bigdecimal.c (BigMath_s_log): fix format specifier.

Mon Aug  6 00:39:24 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/ruby.h (NUM2ULONG): optimize by inline as well as
	  NUM2LONG, and cast to unsigned long explicitly for the platforms
	  where SIZEOF_VALUE is larger than SIZEOF_LONG.

	* include/ruby/ruby.h (NUM2SSIZET): fix type to cast.

Sun Aug  5 21:10:36 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c : if ENABLE_VM_OBJSPACE is 1, rest_sweep is not defined.
	  remove unused declarations. [ruby-core:47004] [Bug #6837]

Sun Aug  5 19:31:57 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c: just move functions and so on. I don't touch any internal
	  implementation.

Sun Aug  5 13:22:29 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: use gcc-4.2 prior to clang, gcc, and cc if exist for
	  the use of Snow Leopard's old clang. see also r36594, r36610, r36611.

Sun Aug  5 06:55:10 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_{core,strftime}.c: [ruby-core:46990].

Sat Aug  4 22:56:20 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c: use inline functions instead of macros, and close up
	  related codes for the profiler.

Sat Aug  4 20:37:56 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (gc_mark_children): use gc_mark_ptr instead of marking
	  a object directly.

Sat Aug  4 10:02:03 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* test/ruby/test_alias.rb (test_super_in_aliased_module_method):
	  add a test case for [ruby-dev:46028], which fails in 1.8.

Sat Aug  4 01:56:06 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_insnhelper.c (vm_search_normal_superclass): no longer needs
	  receiver, klass is always unique in the ancestors now.

Sat Aug  4 01:27:40 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* insns.def (invokesuper): reverted r36612 so that super in an
	  aliased method will not call the same method.

Fri Aug  3 19:26:10 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* insns.def (invokesuper): don't skip the same class.  instead, use
	  rb_method_entry_get_with_omod() to avoid infinite loop when
	  super is used with refinements. [ruby-core:30450] [Bug #3351]

Fri Aug  3 19:21:19 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in: use clang prior to gcc only when self-compiling on
	  darwin.  search default compilers on other platforms.  [Bug #6816]

Fri Aug  3 17:25:49 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: move RUBY_MINGW32 after AC_PROG_CC.
	  RUBY_MINGW32 uses AC_TRY_CPP and it sets CC and CPP. [Bug #6816]

	* configure.in: don't use AC_PROG_CC in AS_CASE.

Fri Aug  3 17:21:52 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/runner.rb: get rid of loading previously installed gems.
	  [ruby-dev:46025]

Fri Aug  3 16:40:01 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* .travis.yml (notifications): [experimental] IRC notifications.

Thu Aug  2 20:32:29 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* eval.c (rb_mod_using): new method Module#using. [experimental]

	* eval.c (rb_mod_refine): new method Module#refine. [experimental]

	* eval.c (f_using): new method Kernel#using. [experimental]

Thu Aug  2 20:08:02 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* class.c, insns.def, method.h, proc.c, vm.c, vm_core.h, vm_eval.c,
	  vm_insnhelper.c, vm_insnhelper.h, vm_method.c: add klass to
	  rb_control_frame_t to implement super correctly.

Thu Aug  2 13:23:08 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in (AC_PROG_CC): AC_PROG_CC tries clang at first on
	  darwin. [Bug #6816]

Thu Aug  2 11:39:25 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c: return true or false. Patch by Dirkjan Bussink. [Bug #6821]

	* test/ruby/test_gc.rb: add test-case for this bug.

Thu Aug  2 10:51:12 2012  Martin Bosslet  <Martin.Bosslet@gmail.com>

	* ext/openssl/lib/openssl/digest.rb
	  test/openssl/test_digest.rb: Add Digest module function to OpenSSL
	  module and test it. Patch provided by Eric Hodel.
	  [ruby-core:46908][Feature #6819]

Wed Aug  1 22:29:12 2012  Benoit Daloze  <eregontp@gmail.com>

	* ext/digest/digest.c (hexencode_str_new): return an ASCII string

	* test/digest: tests for all kind of digests encodings
	  [ruby-core:46792][Bug #6799]

Wed Aug  1 05:50:53 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/ruby/test_rubyoptions.rb (TestRubyOptions#test_encoding):
	  Fix test_encoding failure on Windows.
	  With chcp 65001, 1252 and 437, test_encoding failed. Test result
	  depends on locale because LANG environment variable doesn't affect
	  locale on Windows.
	  [ruby-core:46872] [Bug #6813]

Wed Aug  1 00:33:19 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* class.c (include_class_new): fix duplication of prepended module.
	  since m_tbl of prepended module is always zero, copy from its
	  copy iclass of original.

Tue Jul 31 18:22:34 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* variable.c (classname): tell if found name is permanent.  search
	  tmp_classpath only if class id is set.  [ruby-core:42865][Bug #6078]

	* variable.c (rb_class_path): duplicate found temporary path.

	* variable.c (rb_set_class_path_string, rb_set_class_path): set class
	  id to find classpath.

Tue Jul 31 10:36:12 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb: updated to released version.

	* ext/psych/psych.gemspec: ditto

Tue Jul 31 06:18:06 2012  Eric Hodel  <drbrain@segment7.net>

	* time.c (time_sec):  Remove extra wording about leap seconds and refer
	  directly to Wikipedia's leap second page for further information.
	  [Bug #6749]

Mon Jul 30 23:01:47 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/rubygems/platform.rb (Gem::Platform#initialize): Support pattern
	  like x86_64-netbsd6.99.7.

Mon Jul 30 21:00:53 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* variable.c (find_class_path): no retry when preferred is given.

	* variable.c (classname): if classid is set try it to find full
	  qualified class path, and then try arbitrary class path.  try
	  tmp_classpath at last even if enclosing namespace is anonymous.
	  fix r36574.  [ruby-core:42865][Bug #6078]

	* variable.c (rb_set_class_path_string, rb_set_class_path): set
	  tmp_classpath instead of classpath if the name is not permanent.

Mon Jul 30 14:24:20 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* variable.c: store anonymous class path in tmp_classpath but not in
	  classpath.  [ruby-core:42865][Bug #6078]

Mon Jul 30 13:11:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (DLDFLAGS): on Darwin, deprecate -flat_namespace to get
	  rid of huge imported symbols table.

	* configure.in (LIBRUBY_RELATIVE): libruby_so is not made when
	  disable-shared, so no absolute path is used for it and executable
	  file is runnable anywhere.

Mon Jul 30 01:30:10 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* common.mk: add a dependency. [ruby-core:46741] [Bug #6789]

Sun Jul 29 15:44:47 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* thread.c (thread_create_core): hide th->async_errinfo_mask_stack from
	  ObjectSpace.each_object. refix of r36539.

Sun Jul 29 23:57:27 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/socket/option.c (inet_ntop): use rb_w32_inet_ntop, instead of
	  inet_ntop directly, which is unavailable on older version Windows.

	* win32/win32.c (rb_w32_inet_ntop): type should be const.

Sun Jul 29 14:20:34 2012  Kazuki Tsujimoto  <kazuki@callcc.net>

	* thread.c (Init_Thread): does not need to set klass
	  explicitly.

Sun Jul 29 06:21:04 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* win32/win32.c: suppress warning redeclared on mingw64.
	  *_s functions are declared if MINGW_HAS_SECURE_API is defined.
	  Follow up r36556.

Sun Jul 29 00:28:46 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c: remove unused initialization.

Sat Jul 28 16:26:09 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* win32/win32.c (gmtime_r): use _gmtime64_s() with x86_64-w64-mingw32.

	* win32/win32.c (localtime_r): use _localtime64_s() with
	  x86_64-w64-mingw32. Since FileTimeToSystemTime() seems not work with
	  large value under x64. Mingw-w64 doesn't have these declaration.
	  [ruby-core:46780] [Bug #6794]

Fri Jul 27 18:25:51 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_io_check_io): make public.

	* process.c (check_exec_redirect): try conversion to IO on redirect
	  parameters.  [ruby-core:44181] [Bug #6269]

Fri Jul 27 17:58:12 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (RUBY_CPPOUTFILE): get rid of variable conflict so
	  CPPFLAGS is not duplicated.  [ruby-core:43097] [Bug #6119]

Fri Jul 27 12:12:36 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/mkexports.rb: should not export DllMain().
	  reported by luis at [ruby-core:46743] [Bug #6790], solved by
	  Heesob Park, and confirmed by nobu.

Thu Jul 26 14:51:29 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* test/net/http/test_https.rb (TestNetHTTPS#test_session_reuse):
	  localhost is not (always) 127.0.0.1.  Don't expect that.

Thu Jul 26 07:18:38 2012    <kanemoto@ruby-lang.org>

	* ext/json/fbuffer/fbuffer.h: avoid compilation error on AIX by
	   -ansi -std=iso9899:199409 (r36038). [ruby-core:46744] [Bug #6791].

Thu Jul 26 00:42:23 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* thread.c (thread_create_core, Init_Thread): hide
	  th->async_errinfo_queue and th->async_errinfo_mask_stack from
	  ObjectSpace.each_object.

Wed Jul 25 17:41:05 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* complex.c, rational.c: compatible marshal loader for compatibilities
	  with 1.8.  [ruby-core:45775] [Bug #6625]

Wed Jul 25 17:17:05 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* atomic.h: prefer GCC atomic builtins than Windows APIs, if possible,
	  since they are generic.

Wed Jul 25 11:16:57 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/net/.document:  Removed.  All files in net/ should be included in
	  RDoc.

Wed Jul 25 10:00:23 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/testunit/test_redefinition.rb: broken class/method names.

Wed Jul 25 09:26:32 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/cgi/html.rb: Use << instead of +=.
	  `a += b` is syntax sugar of `a = a + b`; it creates a new string
	  object. `a << b` is concatenation and doesn't create new object.

Wed Jul 25 09:16:26 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/cgi/html.rb (element_init): suppress redefine warning.
	  Don't define methods if they are already defined.

Wed Jul 25 09:05:38 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http.rb:  Added SSL session reuse across connections for a
	  single instance to speed up connection.  [Feature #5341]
	* NEWS:  ditto
	* test/net/http/test_https.rb:  Tests for #5341

Wed Jul 25 06:54:24 2012  Eric Hodel  <drbrain@segment7.net>

	* doc/re.rdoc:  Fix spelling

Wed Jul 25 06:49:12 2012  Eric Hodel  <drbrain@segment7.net>

	* re.c (rb_reg_s_last_match):  Update $~ to reference Regexp
	  documentation about "special global variables".  [Bug #6723]

Wed Jul 25 06:28:56 2012  Eric Hodel  <drbrain@segment7.net>

	* iseq.c:  Added documentation.  Patch by David Albert.  [Bug #6785]

Wed Jul 25 03:05:06 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* parse.y: added symbols and qsymbols productions for %i and %I
	  support. %i{ .. } returns a list of symbols without interpolation,
	  %I{ .. } returns a list of symbols with interpolation.  Thanks to
	  Josh Susser for inspiration of this feature. [Feature #4985]

	* ext/ripper/eventids2.c: added ripper events for %i and %I.

	* test/ripper/test_parser_events.rb: ripper tests

	* test/ripper/test_scanner_events.rb: ditto

	* test/ruby/test_array.rb: test for %i and %I behavior

Tue Jul 24 23:34:43 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* include/ruby/win32.h (rb_w32_pow): add new function.
	  We use powl() instead of broken pow() for x64-mingw32. This workaround
	  fixes test failures related to floating point numeric.
	  [ruby-core:46686] [Bug #6784]

Tue Jul 24 15:01:24 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (rb_w32_socket, rb_w32_socketpair): remember the family
	  in the high word of socklist value.

	* win32/win32.c (overlapped_socket_io, recvmsg, sendmsg, setfl): follow
	  above changes.

	* win32/win32.c (rb_w32_getsockname): set remembered family to the
	  argument when OS's function fails.

Tue Jul 24 12:35:13 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_dir_m17n.rb: remove a garbage.

	* test/ruby/test_dir_m17n.rb: convert from ascii-8bit to other encoding
	  with 8bit bytes always fails.

Tue Jul 24 12:32:18 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_dir_m17n.rb: sorry, typo.

Tue Jul 24 12:13:26 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_dir_m17n.rb: refactoring. RE should be in the left side
	  of the =~ operator, and compare the result with nil is meaningless.

Tue Jul 24 11:35:20 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_pack.rb (test_pack_unpack_M): was redefined
	  accidentally.

Tue Jul 24 09:31:18 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems:  Updated to RubyGems 1.8.24, a bugfix release.

Tue Jul 24 08:30:15 2012  Luis Lavena  <luislavena@gmail.com>

	* test/ruby/test_dir_m17n.rb (create_and_check_raw_file_name): add new
	  helper method to ease encoding testing. Patch by Oleg Sukhodolsky.
	  [ruby-core:46589][Bug #6765]

	* test/ruby/test_dir_m17n.rb (test_filename_extutf8): use filesystem
	  encoding when reading entries and comparing.

	* test/ruby/test_dir_m17n.rb (test_filename_utf8_raw_name): removed.

	* test/ruby/test_dir_m17n.rb (test_filename_utf8_raw_jp_name): split test.

Tue Jul 24 08:09:30 2012  Luis Lavena  <luislavena@gmail.com>

	* test/win32ole/test_win32ole_method.rb (is_ruby64?): Correct platform
	  used to identify mingw-w64 (x64-mingw32). Patch by Hiroshi Shirosaki.
	  [ruby-core:46651][Bug #6782]

Tue Jul 24 07:22:58 2012  Eric Hodel  <drbrain@segment7.net>

	* time.c (time_sec):  Updated description of leap seconds for accuracy.
	  Based on patch by Marcus Stollsteimer.  [Bug #6749]

Tue Jul 24 07:03:11 2012  Eric Hodel  <drbrain@segment7.net>

	* string.c (rb_str_sub):  Fixed wording of documentation to match the
	  replacement operation.  Minor cleanup of markup.  [Bug #6719]
	* string.c (rb_str_sub_bang):  Minor wording change for clarity, minor
	  cleanup of markup.

Mon Jul 23 23:58:40 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enc/Makefile.in (TARGET_NAME, TARGET_ENTRY): needed for EXTDLDFLAGS
	  on some platforms.  [ruby-core:46600] [Bug #6768]

	* enc/depend: no longer needs tweaking DLDFLAGS for TARGET names.

Mon Jul 23 22:48:19 2012  Tanaka Akira  <akr@fsij.org>

	* lib/open-uri.rb: use respond_to? to test Tempfile.
	  [ruby-dev:45995] [Bug #6781] reported by hsbt (Hiroshi SHIBATA).

Mon Jul 23 14:43:34 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (LIBPATHENV): LIBPATH is used on AIX, but not
	  SHLIB_PATH which was carelessly copied from HP/UX.  suggested by
	  Perry Smith at [ruby-core:46397].  [Bug #6728]

Mon Jul 23 01:55:08 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* test/uri/test_generic.rb (URI#test_find_proxy): add tests with
	  empty *_proxy env variables.

Mon Jul 23 01:47:26 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* test/uri/test_generic.rb (URI#with_env): unset proxy related env
	  variables.  [Bug #6774]

	* test/uri/test_generic.rb (URI#test_find_proxy): fix failures
	  when proxy related env variables already set.  [Bug #6774]

Sun Jul 22 23:58:48 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* thread.c (rb_threadptr_execute_interrupts_common): increase
	  running_time_us on THREAD_TO_KILL like on THREAD_RUNNABLE.
	  This cause not to switch from a thread which is to be killed
	  on FreeBSD and Mac OS X. see also the test.
	  This issue maybe exist for long time but happens after r36430.

Sat Jul 21 06:21:45 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/http.rb: fixes for r36476. [Feature #6546]
	 http://u64.rubyci.org/~chkbuild/ruby-trunk/log/20120720T030101Z.diff.html.gz

	* lib/net/http.rb (Net::HTTP.newobj): return back for compatibility.

	* lib/net/http.rb (Net::HTTP.new): set default_port if proxy port is
	  not given.

	* lib/net/http.rb (Net::HTTP#initialize): ditto.

	* lib/net/http.rb (Net::HTTP#proxy?): return true or false.

	* lib/net/http.rb (Net::HTTP#proxy_address): check proxy_uri is not nil.

	* lib/net/http.rb (Net::HTTP#proxy_port): ditto.

Sat Jul 21 23:12:53 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread_pthread.c (ruby_init_stack): STACK_GROW_DIR_DETECTION is
	  necessary on platforms with unknown stack direction.  [Bug #6761]

Sat Jul 21 15:13:42 2012  Shota Fukumori  <sorah@tubusu.net>

	* lib/test/unit/testcase.rb (method_added): refactoring.

Sat Jul 21 14:06:41 2012  Shota Fukumori  <sorah@tubusu.net>

	* lib/test/unit/testcase.rb: warn when test_* method is redefined.
	  Patch by mame (Yusuke Endoh). [Feature #2643] [ruby-core:27790]

	* test/testunit/test_redefinition.rb: Test for above.

	* test/testunit/test4test_redefinition.rb: Ditto.

Sat Jul 21 08:41:14 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/logger.rb:  Updated example in Logger comment to match other
	  examples and fixed a bug.  Patch by Marcus Stollsteimer.
	  [Bug #6759]

Fri Jul 20 17:20:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* random.c (rb_random_real): refine error message.

Fri Jul 20 11:03:17 2012  Eric Hodel  <drbrain@segment7.net>

	* NEWS:  Updated net/http for automatic proxy detection (#6546) and
	  automatic gzip and deflate compression (#6492, #6494).

Fri Jul 20 10:55:38 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http.rb:  Net::HTTP now automatically detects and uses
	  proxies from the environment.  A proxy may also be specified as
	  before.

	  Net::HTTP::Proxy still creates anonymous classes, but these classes
	  are only used to store configuration information.  When an HTTP
	  instance is created the configuration is now copied.

	  Additionally, Net::HTTP::ProxyDelta is no longer used by Net::HTTP

	  [Feature #6546]
	* lib/open-uri.rb:  Moved URI::Generic#find_proxy to uri/generic.
	* lib/uri/generic.rb:  Imported find_proxy from open-uri.
	* test/open-uri/test_open-uri.rb:  Moved proxy-discovery tests to URI.
	* test/uri/test_generic.rb:  Imported proxy-discovery tests from
	  open-uri.
	* test/net/http/test_http.rb:  Added tests for proxy behavior.

Fri Jul 20 09:34:11 2012  Eric Hodel  <drbrain@segment7.net>

	* test/socket/test_socket.rb:  Ignore IPv6 unique local addresses on OS
	  X (iCloud Back to my Mac addresses) for test_udp_socket since they do
	  not act as loopback addresses.  [Bug #6692]

Fri Jul 20 09:32:14 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/socket/raddrinfo.c (addrinfo_ipv6_unique_local_p):  Added
	  Addrinfo#ipv6_unique_local? to detect RFC 4193 unique local
	  addresses.  Part of #6692
	* ext/socket/rubysocket.h:  Add IN6_IS_ADDR_UNIQUE_LOCAL macro if
	  missing.
	* test/socket/test_addrinfo.rb:  Test for ipv6_unique_local?

Fri Jul 20 07:40:32 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http/response.rb:  Automatically inflate gzip and
	  deflate-encoded response bodies.  [Feature #6942]
	* lib/net/http/generic_request.rb:  Automatically accept gzip and
	  deflate content-encoding for requests.  [Feature #6494]
	* lib/net/http/request.rb:  Updated documentation for #6494.
	* lib/net/http.rb:  Updated documentation for #6492 and #6494, removed
	  Content-Encoding handling now present in Net::HTTPResponse.
	* test/net/http/test_httpresponse.rb:  Tests for #6492
	* test/net/http/test_http_request.rb:  Tests for #6494
	* test/open-uri/test_open-uri.rb (test_content_encoding):  Updated test
	  for automatic content-encoding handling.

Fri Jul 20 03:42:54 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* thread_pthread.c: use #ifdef, not #if.

Thu Jul 19 15:08:40 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c (rb_thread_s_control_interrupt,
	            rb_thread_s_check_interrupt): added for
	  Thread.control_interrupt and Thread.check_interrupt.
	  See details on rdoc.
	  I'll make an ticket for this feature.

	* test/ruby/test_thread.rb: add a test for Thread.control_interrupt.

	* thread.c (rb_threadptr_raise): make a new exception object
	  even if argc is 0.

	* thread.c (rb_thread_kill): kill thread immediately if target thread
	  is current thread.

	* vm_core.h (RUBY_VM_CHECK_INTS_BLOCKING): added.
	  CHECK_INTS while/after blocking operation.

	* vm_core.h (RUBY_VM_CHECK_INTS): require rb_thread_t ptr.

	* cont.c (fiber_switch): use replaced RUBY_VM_CHECK_INTS().

	* eval.c (ruby_cleanup): ditto.

	* insns.def: ditto.

	* process.c (rb_waitpid): ditto.

	* vm_eval.c (vm_call0): ditto.

	* vm_insnhelper.c (vm_call_method): ditto.

Thu Jul 19 22:46:48 2012  Tanaka Akira  <akr@fsij.org>

	* test/ruby/test_io.rb: remove temporally files early.

Thu Jul 19 15:38:35 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* variable.c (rb_mod_class_variables): return inherited variables
	  except when the optional argument is set to false.
	  [ruby-dev:44034] [Bug #4971]

	* variable.c (rb_mod_constants): fix typo in documentation.

Thu Jul 19 14:30:43 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* internal.h: move mark function declarations that should be private.

Thu Jul 19 14:18:22 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/socket/init.c (rsock_init_sock): need to update max fd on all
	  platforms.

Thu Jul 19 14:15:48 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread.c (rb_gc_mark_threads): remove deprecated function.

Thu Jul 19 13:28:03 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/net/http/test_http.rb (TestNetHTTPLocalBind#test_bind_to_local*):
	  re-enable the tests because now it's OK on windows.

Thu Jul 19 13:26:25 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/socket/extconf.rb: now enable IPv6 by default on mswin.

Thu Jul 19 09:33:46 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/emitter.c (initialize): allow a configuration object to be
	  passed to the constructor so that mutation isn't required after
	  instantiation.

	* ext/psych/lib/psych/handler.rb: add configuration object

	* ext/psych/lib/psych/visitors/emitter.rb: use configuration object if
	  extra configuration is present.

Thu Jul 19 08:20:25 2012  Tanaka Akira  <akr@fsij.org>

	* test/ruby/test_file.rb: remove temporally files early.

Thu Jul 19 07:37:41 2012  Masatoshi SEKI  <m_seki@mva.biglobe.ne.jp>

	* test/drb/drbtest.rb: fixed: can't delete unix domain sockets problem.

Thu Jul 19 03:41:20 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* bignum.c: Added #include <strings.h> for ffs(). Patch by Perry
	  Smith. Thank you. [Bug #6748]

Thu Jul 19 01:56:02 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* include/ruby/intern.h (rb_num_zerodiv): Added NORETURN.
	  Patched by Xi Wang. [Bug #6736]

Wed Jul 18 23:57:38 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* pack.c (pack_pack): round down too long uuencode width.  folding
	  width in uuencode format cannot be longer than 63 bytes.

Wed Jul 18 23:04:18 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/dbm/dbm.c (fdbm_empty_p): fix wrong condition introduced in r36438.

	* ext/sdbm/init.c (fsdbm_empty_p): ditto.

Wed Jul 18 23:08:57 2012  Tanaka Akira  <akr@fsij.org>

	* test/ruby/test_beginendblock.rb: remove temporally files early.

Wed Jul 18 22:43:02 2012  Tanaka Akira  <akr@fsij.org>

	* test/ruby/test_autoload.rb: remove temporally files early.

Wed Jul 18 21:59:46 2012  Tanaka Akira  <akr@fsij.org>

	* test/ruby/test_argf.rb: use temporally directory.

Wed Jul 18 19:41:19 2012  Tanaka Akira  <akr@fsij.org>

	* test/openssl/test_config.rb: remove temporally files early.

Wed Jul 18 17:45:26 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (rb_builtin_type_name): map by index.

Wed Jul 18 16:17:40 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (have_framework): get rid of separating -framework
	  option and its argument and dealing with the argument as a library
	  or an object name.  if $LDFLAGS were an array...

Wed Jul 18 16:09:10 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* ext/curses/extconf.rb: support PDCurses.  patched by Luis Lavena.
	  [ruby-core:46485] [Feature #6735]

Wed Jul 18 15:50:25 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* parse.y (primary): allow an empty grouped expression as the
	  operand of the not operator (e.g., not ()).
	  [ruby-core:45976] [Bug #6674]

	* parse.y (parser_yylex): show no warning for a grouped expression
	  as the operand of the not operator (e.g., not (a)) or as an
	  argument of a method call without parentheses (e.g., foo (a)).
	  [ruby-core:39050] [Bug #5214]

Wed Jul 18 15:33:21 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c (rb_thread_call_without_gvl2): added.
	  it can skip last CHECK_INTS.  See document for more details.
	  Document about it was updated a bit.

	* include/ruby/thread.h (decl. of rb_thread_call_without_gvl2): added.

	* thread.c (rb_thread_call_with_gvl): remove "EXPERIMENTAL!"
	  warning from a document.

Wed Jul 18 14:53:21 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (EXTDLDFLAGS): split options for each extension
	  libraries, and unused in ruby.pc.  [Bug #6734]

	* lib/mkmf.rb (MakeMakefile#configuration): add EXTDLDFLAGS.

Wed Jul 18 14:47:23 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c: fix last commit miss.

Wed Jul 18 14:16:51 2012  Koichi Sasada  <ko1@atdot.net>

	* thread.c (rb_threadptr_async_errinfo_*): manage async errors queue.
	  Async events such as an exception throwed by Thread#raise,
	  Thread#kill and thread termination (after main thread termination)
	  will be queued to th->async_errinfo_queue.
	  - clear: clear the queue.
	  - enque: enque err object into queue.
	  - deque: deque err object from queue.
	  - active_p: return 1 if the queue should be checked.
	  rb_thread_t#thrown_errinfo was removed.

	* vm_core.h: add declarations of rb_threadptr_async_errinfo_*.
	  remove rb_thread_t#thrown_errinfo field and
	  add rb_thread_t#async_errinfo_queue (queue body: Array),
	      rb_thread_t#async_errinfo_queue_checked (flag),
	      rb_thread_t#async_errinfo_mask_stack(Array, not used yet).

	* vm.c (rb_thread_mark): fix a mark function.

	* cont.c (rb_fiber_start): enque an error.

	* process.c (after_fork): clear async errinfo queue.

Wed Jul 18 14:25:55 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* pack.c: (ditto) bitwise operations are not char.  Apply explicit
	  casts on them.

Wed Jul 18 12:59:50 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* encoding.c (load_encoding): explicit cast  to suppress  warning.
	  Though the  cast truncates some bits, from  heuristic analysis I
	  believe it is OK to do so here.

	* bignum.c (rb_cstr_to_inum): ditto.

Wed Jul 18 12:55:54 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/benchmark.rb: Fix Benchmark.benchmark output with an empty
	  caption.  patched by Benoit Daloze. [ruby-core:45719] [Bug #6610]

Wed Jul 18 10:00:54 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/debug.rb:  Added toplevel documentation.  Based on patch by Oscar
	  Del Ben.  [Bug #6743], fixes #146 on github.

Wed Jul 18 09:33:59 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/win32ole/test_win32ole_event.rb (TestWIN32OLE_EVENT): use
	  standard skip method to skip tests.

Wed Jul 18 09:26:45 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/logger.rb:  Updated typos and output to match modern Logger
	  output.  Patch by Marcus Stollsteimer.  [Bug #6738]

Wed Jul 18 07:59:29 2012  Takeyuki FUJIOKA  <xibbar@ruby-lang.org>

	* lib/cgi/util.rb (CGI.escapeHTML,unescapeHTML): Add &apos; for HTML5
	  escaping.
	  [Feature #6620]

Tue Jul 17 22:17:13 2012  Tanaka Akira  <akr@fsij.org>

	* lib/open-uri.rb: call io.close! for Tempfile.

Tue Jul 17 16:41:32 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* proc.c (rb_proc_arity): return normal value (not -n-1) if it is not
	  a labmda, or it is a labmda and no arg_opts. [Bug #5694]

Tue Jul 17 03:56:34 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/to_ruby.rb: strings with YAML anchors
	  are properly referenced. Patched by Joe Rafaniello via Github:
	    https://github.com/tenderlove/psych/pull/69
	* ext/psych/lib/psych/visitors/yaml_tree.rb: ditto
	* test/psych/test_alias_and_anchor.rb: test for change

Mon Jul 16 23:20:24 2012  Tanaka Akira  <akr@fsij.org>

	* bignum.c (rb_integer_float_cmp): use FIXNUM_MIN and FIXNUM_MAX,
	  instead of LONG_MIN and LONG_MAX.

Mon Jul 16 22:50:41 2012  Tanaka Akira  <akr@fsij.org>

	* numeric.c (flo_to_s): use the exponential form if the integer part
	  is longer than or equal DBL_DIG.
	  [ruby-dev:45960] [ruby-trunk - Bug #6741]

Mon Jul 16 22:01:00 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* ext/readline/readline.c: fixed docs. [Bug #6740][ruby-core:46501]
	  patched by Nobuhiro IMAI.

Mon Jul 16 19:24:01 2012  Tanaka Akira  <akr@fsij.org>

	* bignum.c (rb_integer_float_eq): new function.
	  (rb_big_eq): use rb_integer_float_eq.

	* internal.h (rb_integer_float_eq): declared.

	* numeric.c (flo_eq): use rb_integer_float_eq.
	  (fix_equal): ditto.

Mon Jul 16 19:02:31 2012  Tanaka Akira  <akr@fsij.org>

	* bignum.c (rb_integer_float_cmp): rename a local variable.

Mon Jul 16 18:40:26 2012  Tanaka Akira  <akr@fsij.org>

	* bignum.c (rb_integer_float_cmp): renamed from rb_big_float_cmp.

	* internal.h: follow the above change.

	* numeric.c: ditto.

Mon Jul 16 17:57:54 2012  Tanaka Akira  <akr@fsij.org>

	* bignum.c (rb_big_float_cmp): compare an integer and float precisely.
	  [ruby-core:31376] [Bug #3589] reported by Tomasz Wegrzanowski.

Mon Jul 16 17:29:45 2012  Tanaka Akira  <akr@fsij.org>

	* bignum.c (rb_big_float_cmp): support fixnum for argument x.

	* numeric.c (fix_equal): use rb_big_float_cmp.
	  (fix_cmp): ditto.
	  (fix_gt): ditto.
	  (fix_ge): ditto.
	  (fix_lt): ditto.
	  (fix_le): ditto.
	  (flo_eq): ditto.
	  (flo_cmp): use rb_big_float_cmp for fixnum argument.
	  (flo_gt): ditto.
	  (flo_ge): ditto.
	  (flo_lt): ditto.
	  (flo_le): ditto.

Mon Jul 16 17:05:53 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* test/fileutils/test_fileutils.rb: add test for FileUtils#uptodate?

Mon Jul 16 16:56:12 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* lib/fileutils.rb (FileUtils.uptodate?): remove useless parameter.
	  patched by Oscar Del Ben.[Bug #6708][ruby-core:46256]

Mon Jul 16 15:37:56 2012  Tanaka Akira  <akr@fsij.org>

	* bignum.c (rb_big_eq): use rb_big_float_cmp.

Mon Jul 16 15:00:45 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_big_float_cmp): declared.

	* bignum.c (rb_big_float_cmp): extracted from rb_big_cmp and big_op.
	  (rb_big_cmp): use rb_big_float_cmp.
	  (big_op): ditto.

	* numeric.c (flo_cmp): use rb_big_float_cmp.
	  (flo_gt): ditto.
	  (flo_ge): ditto.
	  (flo_lt): ditto.
	  (flo_le): ditto.

Mon Jul 16 14:14:21 2012  Tanaka Akira  <akr@fsij.org>

	* bignum.c (enum big_op_t): new type.
	  (big_op): use enum big_op_t.
	  (big_gt): ditto.
	  (big_ge): ditto.
	  (big_lt): ditto.
	  (big_le): ditto.

Sat Jul 14 18:18:48 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* array.c (rb_get_values_at): fill with nil out of range.
	  [ruby-core:43678] [Bug #6203]

Sat Jul 14 17:17:55 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* cont.c (cont_restore_0): improve docs. [Bug #6706][ruby-core:46243]
	  patched by Oscar Del Ben via https://github.com/ruby/ruby/pull/140

Sat Jul 14 17:08:13 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* hash.c (rb_hash_s_create): raise an exception, when input elements
	  are not one or two elements arrays.  [ruby-core:39945] [Bug #5406]

Sat Jul 14 16:16:48 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Runner#_run_parallel): use
	  Array#uniq!.

	* lib/test/unit.rb (Test::Unit::Runner#deal): deal tasks to workers.

	* lib/test/unit.rb (Test::Unit::Runner#quit_workers): close and kill
	  all workers.

	* lib/test/unit.rb (Test::Unit::Runner#delete_worker): delete dead
	  worker from working set.

	* lib/test/unit.rb (Test::Unit::Runner#launch_worker): add new worker
	  to working set.

	* lib/test/unit.rb (Test::Unit::Runner#launch_worker): extract.

	* lib/test/unit.rb (Test::Unit::Runner#start_watchdog): extract.

	* lib/test/unit.rb (Test::Unit::Runner#_run_parallel): move
	  initializations with nothing to release outside begin/ensure.

Sat Jul 14 16:04:24 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* array.c (rb_ary_join): should not infected by separator if it is not
	  used.  [ruby-core:42161][Bug #5902]

Sat Jul 14 02:31:55 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/intern.h (rb_thread_blocking_region): fix declarations
	  prototypes without arguments in C++ have different meanings than C.

Thu Jul 12 12:32:26 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/runner.rb: skip default gems to get rid of loading old versions
	  before installation.

Thu Jul 12 11:44:23 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* string.c (rb_str_new_frozen): since the result object should have
	  same tainted/untrusted bits with the original object, return new
	  object if the shared object unmatch.  [ruby-core:39745][Bug #5374]

Thu Jul 12 10:46:39 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/net/http/test_http.rb (TestNetHTTPLocalBind#test_bind_to_local*):
	  cannot cross between network interfaces on Windows, so skip this test
	  until we find better test.

Thu Jul 12 08:48:33 2012  Ryan Davis  <ryand-ruby@zenspider.com>

	* lib/minitest/*: Imported minitest 3.2.0 (r7598)
	* test/minitest/*: ditto

Thu Jul 12 05:11:41 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* insns.def (defined): use method entry and id in cfp for proper
	  superclass, since klass in iseq is shared by dynamically defined
	  methods from the same block.  [ruby-core:45831][Bug #6644]

Thu Jul 12 01:49:07 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/http.rb (Net::HTTP#connect): use local_host and local_port
	  if specified. patched by Ricardo Amorim [Feature #6617]

Wed Jul 11 17:36:39 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/extmk.rb: append ENCOBJS to DLDOBJS but not EXTSOLIBS which is
	  not a target, to compile enc/encinit.c.

Wed Jul 11 12:38:20 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/openssl/ossl_pkey_ec.c (ossl_ec_point_mul): nonstatic initializer
	  of an aggregate type is a C99ism.

	* ext/openssl/ossl_pkey_ec.c (ossl_ec_point_mul): get rid of VC++
	  warnings.

Mon Jul  9 16:11:30 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* vm_eval.c (rb_eval_string_from_file,
	  rb_eval_string_from_file_protect): new functions to replace
	  rb_compile_main_from_string() and ruby_eval_main().

	* nacl/pepper_ruby.c: Follows the change in vm_eval.c

Mon Jul  9 14:05:42 2012  Yuki Yugui Sonoda  <yugui@google.com>

	Reverts a half of r36079. As we discussed on ruby-dev@ and IRC,
	we do not need to disclose intermediate representation of program.
	The program embedding CRuby should use rb_eval_string family.
	* include/ruby/ruby.h (ruby_opaque_t): removed.
	  (ruby_compile_main_from_file, ruby_compile_main_from_string,
	   ruby_eval_main): removed.

	* eval.c (ruby_eval_main_internal): became ruby_exec_internal() again.
	  (ruby_eval_main): removed.

	* ruby.c (PREPARE_PARSE_MAIN) reverted.
	  (parse_and_compile_main, ruby_compile_main_from_file,
	   ruby_compile_main_from_string): removed

Wed Jul 11 10:16:38 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby.h (HAVE_RUBY_THREAD_H): to show ruby/thread.h to be
	  available.  fixup of r36355.

Wed Jul 11 03:26:47 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/zlib/zlib.c:  Added streaming support to inflate processing.
	  This allows zlib streams to be processed without huge memory growth.
	  [Feature #6612]
	* NEWS:  ditto
	* ext/zlib/zlib.c (zstream_expand_buffer):  Uses rb_yield when a block
	  is given for streaming support.  Refactored to use
	  zstream_expand_buffer_into to remove duplicate code.
	* ext/zlib/zlib.c (zstream_expand_buffer_protect):  Added wrapper
	  function to pass jump state back through GVL-free section to allow
	  zstream clean-up before terminating the ruby call.
	* ext/zlib/zlib.c (zstream_expand_buffer_without_gvl):  Acquire GVL to
	  yield processed chunk of output stream.
	* ext/zlib/zlib.c (zstream_detach_buffer):  When a block is given,
	  returns Qnil mid-stream and yields the output buffer at the end of
	  the stream.
	* test/zlib/test_zlib.rb:  Updated tests

Tue Jul 10 22:57:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/thread.h: new header file for thread stuff.

	* thread.c (rb_thread_call_without_gvl): export.  [Feature#4328]
	  returns void* instead of VALUE.  [Feature #5543]

	* thread.c (rb_thread_blocking_region): deprecate.  [ruby-core:46295]

Tue Jul 10 10:48:59 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* include/ruby/win32.h (NT, NtInitialize): removed unused old macros.

Tue Jul 10 10:43:37 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* configure.in: removed --enable/disable-win95 options. (see r36342)

Tue Jul 10 00:44:41 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* include/ruby/ruby.h: Removed RUBY_GLOBAL_SETUP completely. It is
	  no meaning definition since r24894.
	* main.c: ditto.
	* nacl/pepper_main.c: ditto.

Mon Jul  9 23:59:36 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* dln.c: Simplify and make consistent an ifdef for Mac OS X.
	* ext/socket/rubysocket.h: ditto.
	* ext/tk/stubs.c: ditto.
	* io.c: ditto.
	* process.c: ditto.
	* signal.c: ditto.
	* vm_dump.c: ditto.

Mon Jul  9 17:37:35 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (win95_stat): removed unnecessary macro.

Mon Jul  9 17:22:16 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/configure.bat, win32/setup.mak, win32/Makefile.sub: omitted
	  Win9x support.  removed --enable/disable-win95 options.

	* include/ruby/win32.h, file.c, win32/win32.c: ditto.

	* win32/README.win32: ditto.

Mon Jul  9 13:28:34 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (DLDFLAGS): use TARGET_ENTRY to specify an entry point
	  instead of TARGET which may contain non-identifier characters.

	* lib/mkmf.rb (create_makefile): add TARGET_NAME which is the first
	  part consists of only word characters.  [ruby-core:46248][Bug #6709]

Sun Jul  8 07:36:19 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (shadowing_lvar_gen, warn_unused_var): no warnings for
	  variables starting with _.  [ruby-core:46160][Feature #6693]

Sat Jul  7 23:07:30 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* test/csv/test_features.rb: add require for Tempfile.
	* test/csv/test_serialization.rb: ditto.

Fri Jul  6 06:49:50 2012  Eric Hodel  <drbrain@segment7.net>

	* array.c (rb_ary_aref):  Added a description of the behavior of
	  index positioning.  [Bug #6680]
	* array.c (rb_ary_aset):  ditto.  Reordered sentences for clarity.
	* string.c (rb_str_aref_m):  Added a description of the behavior of
	  index positioning

Fri Jul  6 05:38:44 2012  Eric Hodel  <drbrain@segment7.net>

	* string.c (rb_str_bytesize):  Improve documentation.  Patch by Oscar
	  Del Ben from github issue #138.
	* string.c (rb_str_empty):  ditto.
	* string.c (rb_str_times):  ditto.
	* string.c (rb_str_dump):  ditto.
	* string.c (rb_str_center):  ditto.

Fri Jul  6 04:05:59 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/zlib/zlib.c (zstream_expand_buffer_without_gvl):  Use
	  ruby_xrealloc() to avoid crash with CALC_EXACT_MALLOC_SIZE.

Thu Jul  5 17:32:19 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* internal.h: move ThreadShield declarations from intern.h.

Thu Jul  5 16:00:24 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread.c (ThreadShield): rename from Barrier.

Thu Jul  5 15:14:50 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* bootstraptest/runner.rb (show_progress): refine error output. do not
	  count non-empty error message, but just warn.

	* bootstraptest/runner.rb (error): show errors immediately if tty.

Thu Jul  5 12:28:11 2012  Akinori MUSHA  <knu@iDaemons.org>

	* test/net/http/test_httpresponses.rb: Add a test file for
	  Net::HTTPResponses and put a test case for the previous bug.

Thu Jul  5 06:33:52 2012  Mark Dodwell <mark@mkdynamic.co.uk>

	* lib/net/http/responses.rb: Fix 4xx classes to inherit correctly
	  from Net::HTTPClientError. [Bug #6700]

Wed Jul  4 21:55:35 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ruby.c (proc_options): warn only if -K and -w option is specified.
	  see also r36274 [Feature #5206]

Wed Jul  4 21:41:44 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* gc.c, atomic.h (ATOMIC_SIZE_*): moved from gc.c to atomic.h
	  [ruby-dev:45909]

Wed Jul  4 19:13:15 2012  Masaki Suketa <masaki.suketa@nifty.ne.jp>

	* test/win32ole/test_win32ole.rb (test_s_codepage_changed):
	  FileSystemObject only supports ANSI or UTF-16LE encoding.
	  Patch by h.shirosaki (Hiroshi Shirosaki) [ruby-trunk - Bug #6650]

Wed Jul  4 11:52:12 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* gc.c (ATOMIC_SIZE_*): 64bit Windows support.

Wed Jul  4 11:11:28 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* eval.c (rb_frame_callee, rb_f_callee_name): fix to return the
	  called id.  this longstanding bug has been caused and blocked by
	  the structure of old rb_control_frame_t and rb_iseq_t.

	* vm_insnhelper.c (vm_push_frame): set proper method entry.

Wed Jul  4 08:29:31 2012  Eric Hodel  <drbrain@segment7.net>

	* array.c (rb_ary_aref):  Updated documentation to indicate the
	  starting index is an index into the array or string.  Updated
	  examples to show behavior of indexes at the end of an array or
	  string.  Based on patch by Marcus Stollsteimer.  [Bug #6680]
	* array.c (rb_ary_aset):  ditto.
	* string.c (rb_str_aref):  ditto.  Also added descriptive argument
	  names to call-seq section.

Wed Jul  4 07:05:59 2012  Eric Hodel  <drbrain@segment7.net>

	* test/zlib/test_zlib.rb (test_inflate_partial_input):  Added test for
	  inflating incomplete zlib streams.

Tue Jul  3 23:14:16 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* gc.c (ATOMIC_SIZE_EXCHANGE): fix function name on Solaris [Bug #6689]
	  [ruby-dev:45904]

Tue Jul  3 16:07:49 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c (vm_malloc_fixup, vm_xrealloc, vm_xfree, after_gc_sweep): use
	  atomic operations to update malloc_params.

Tue Jul  3 14:50:16 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/zlib/zlib.c (zstream_run_func):  Don't exit run loop for buffer
	  error.  [Feature #6615]
	* ext/zlib/zlib.c:  Fix style to match existing functions.

Tue Jul  3 12:05:51 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/dl/cfunc.c (rb_dlcfunc_call): also needed the workaround for VC8
	  for x64.  [ruby-dev:45875] [Bug #6676]
	  reported by aves_ramphastos (Seigo Ishigane)

Tue Jul  3 11:56:46 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/zlib/zlib.c (zstream_detach_buffer):  Refactored tainting of
	  output string, moving it from the callee to zstream_detach_buffer.
	* ext/zlib/zlib.c (rb_zstream_finish):  ditto
	* ext/zlib/zlib.c (rb_zstream_flush_next_out):  ditto
	* ext/zlib/zlib.c (rb_deflate_deflate):  ditto
	* ext/zlib/zlib.c (rb_deflate_flush):  ditto
	* ext/zlib/zlib.c (rb_inflate_inflate):  ditto

Tue Jul  3 11:16:06 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* common.mk (runnable): make symbolic links to run in build directory.

Tue Jul  3 10:46:06 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ruby.c (proc_options): warn if -K option is specified. [Feature #5206]

Tue Jul  3 06:12:13 2012  Eric Hodel  <drbrain@segment7.net>

	* object.c (Init_Object):  Added RDoc location pointers for
	  Kernel#methods, Kernel#protected_methods, Kernel#private_methods and
	  Kernel#public_methods.  [Bug #6666]

Tue Jul  3 06:02:54 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/zlib/zlib.c (zstream_run):  Process zlib streams without GVL.
	  [Feature #6615]
	* NEWS:  ditto.

Mon Jul  2 22:13:04 2012  Tanaka Akira  <akr@fsij.org>

	* thread.c (rb_thread_aref): add explanation for why Thread#[] and
	  Thread#[]= are fiber-local and not thread-local.
	  reported by Julien A.  [ruby-core:41606] [ruby-trunk - Bug #5750]

Mon Jul  2 21:25:55 2012  Tanaka Akira  <akr@fsij.org>

	* time.c (timew_out_of_timet_range): specialization for
	  SIZEOF_TIME_T == SIZEOF_INT64_T.

Mon Jul  2 17:06:32 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* class.c (rb_include_module): include modules after the origin.

	* class.c (include_modules_at): skip prepended modules.

	* class.c (rb_prepend_module): now basic.klass in ICLASS refers the
	  old original class/module.  [ruby-dev:45868][Bug #6662]

	* class.c (rb_mod_ancestors): ditto.

	* vm_method.c (search_method): search method entry from the origin
	  iclass.

Mon Jul  2 05:54:58 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: [ruby-core:46058].

Mon Jul  2 05:35:43 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c (d_lite_marshal_load): accepts old dump.

Mon Jul  2 03:21:53 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* README.EXT.ja: fixed args of have_struct_member() ,
	  create_makefile() same as r35977. however, mkmf.rb include
	  no Japanese-docs, so Appendix C was not removed. [Bug #6597]

Fri Jun 29 05:08:41 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/test/unit/parallel.rb: workaround fix for rubygems.
	  RubyGems can't find rake if the source directory is not equal to
	  the directory which is running the test. [Bug #6604]

Thu Jun 28 20:33:15 2012  Luis Lavena  <luislavena@gmail.com>

	* test/win32ole/test_win32ole.rb (test_s_codepage_changed):
	  FileSystemObject only supports ANSI or UTF-16LE encoding.
	  Patch by bosko (Bosko Ivanisevic) [ruby-trunk - Bug #6650]

Thu Jun 28 09:27:09 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* class.c (class_instance_method_list): consider prepended Class/Module
	  when recur != 0. [ruby-dev:45863] [Bug #6660]

	* test/ruby/test_module.rb (test_prepend_instance_methods_false): add
	  a test for it.


Thu Jun 28 06:12:42 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* class.c (rb_mod_ancestors): fix ancestors order.
	  [ruby-core:45919][Bug #6658] [ruby-dev:45861][Bug #6659]

Wed Jun 27 21:28:59 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* lib/racc/parser.rb: NotImplementError is not exist.

	* lib/irb/output-method.rb (IRB::OutputMethod#print): ditto.

Wed Jun 27 21:31:13 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* class.c (rb_prepend_module): ancestors of prepending module also
	  should be included.  [ruby-core:45914][Bug #6654]

Wed Jun 27 21:01:32 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* class.c (class_instance_method_list): m_tbl in prepended
	  class/module is NULL.  [ruby-core:45915][Bug #6655]

Wed Jun 27 16:48:48 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* class.c (rb_prepend_module): prepend module into another module.

	* eval.c (rb_mod_prepend): new method Module#prepend.  [Feature #1102]

Wed Jun 27 09:15:46 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (is_popen_fork): check if fork and raise NotImplementedError if
	  unavailable.

	* io.c (rb_io_s_popen): allow environment variables hash and exec
	  options as flat parameters, not in an array arguments.
	  [Feature#6651] [EXPERIMENTAL]

	* process.c (rb_execarg_extract_options): extract exec options, but no
	  exceptions on non-exec options and returns them as a Hash.

	* process.c (rb_execarg_setenv): set environment variables.

Tue Jun 26 16:57:14 2012  Koichi Sasada  <ko1@atdot.net>

	* thread_pthread.c (register_cached_thread_and_wait):
	  return immediately if malloc() failed.
	  [ruby-core:43960] [ruby-trunk - Bug #6235]

	* thread_pthread.c (USE_THREAD_CACHE): check already defined or not.

Tue Jun 26 10:01:56 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_io_s_popen): revert r36213 "popen: shell commands with
	  envvar" because it disabled to let single command bypass shell.

Mon Jun 25 17:49:28 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* class.c (rb_mix_module): revert Module#mix.

Mon Jun 25 16:57:38 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* proc.c (rb_mod_define_method): allow method transplanting from a
	  module to either class or module.  [ruby-core:34267][Feature #4254]

Mon Jun 25 11:34:45 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* internal.h: use rb_pid_t instead of pid_t because of there is no
	  definition of pid_t here on Windows.

Mon Jun 25 00:25:01 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in (for stack end address): remove human68k specific
	  check. It is no longer supported.

Sun Jun 24 23:02:17 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (pipe_open): merge win32 code using spawnv().

Sun Jun 24 22:53:42 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* process.c (check_exec_fds): separate check_exec_fds_1() since
	  nonstatic initializer of an aggregate type is not allowed by C89.

Sun Jun 24 07:47:17 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_execarg): options field removed.

	* process.c: follow the rb_execarg change.

Sat Jun 23 23:48:21 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (proc_spawn_cmd): unused variable removed to suppress a
	  warning.
	  (save_env): ditto.

	  [ruby-core:45797] reported by Luis Lavena.

Sat Jun 23 23:19:31 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_execarg): add new_pgroup_given and new_pgroup_flag
	  fields.

	* process.c (EXEC_OPTION_NEW_PGROUP): removed.
	  (proc_spawn_cmd): take a struct rb_execarg argument.
	  use the new fields.
	  (rb_execarg_addopt): use the new fields.
	  (rb_spawn_process): follow the proc_spawn_cmd change.

	  [ruby-core:45794] [ruby-trunk - Bug #6633] reported by Luis Lavena.

Sat Jun 23 20:26:36 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_execarg): add fd_dup2, fd_close, fd_open,
	  fd_dup2_child fields.

	* process.c (EXEC_OPTION_DUP2): removed.
	  (EXEC_OPTION_CLOSE): removed.
	  (EXEC_OPTION_OPEN): removed.
	  (EXEC_OPTION_DUP2_CHILD): removed.
	  (mark_exec_arg): mark the new fields.
	  (check_exec_redirect1): change condition for default option.
	  (check_exec_redirect): take a struct rb_execarg argument.
	  use the new fields.
	  (rb_execarg_addopt): follow the check_exec_redirect change.
	  (check_exec_fds): use the new fields.
	  (save_redirect_fd): ditto.

Sat Jun 23 19:01:18 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_execarg_fixup): fix envopts condition.

Sat Jun 23 18:44:13 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (check_exec_redirect1): extracted from
	  check_exec_redirect.

Sat Jun 23 17:22:02 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (save_env): don't use EXEC_OPTION_UNSETENV_OTHERS.
	  (rb_execarg_run_options): ditto.

Sat Jun 23 17:04:08 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_execarg): add env_modification field.

	* process.c (EXEC_OPTION_ENV): removed.
	  (mark_exec_arg): mark env_modification field.
	  (rb_exec_fillarg): update the new field, instead of options array.
	  (rb_execarg_fixup): use the new field.
	  (save_env): ditto.
	  (rb_execarg_run_options): ditto.

Sat Jun 23 16:27:01 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_execarg): add rlimit_limits field.

	* process.c (EXEC_OPTION_RLIMIT): removed.
	  (mark_exec_arg): mark rlimit_limits field.
	  (rb_execarg_addopt): update the new fields, instead of options array.
	  (run_exec_rlimit): use the new field.
	  (rb_execarg_run_options): clear sarg using MEMZERO.  use the new
	  field.

Sat Jun 23 14:29:25 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_execarg): add chdir_given and chdir_dir fields.

	* process.c (EXEC_OPTION_CHDIR): removed.
	  (mark_exec_arg): mark chdir_dir field.
	  (rb_execarg_addopt): update the new fields, instead of options array.
	  (rb_execarg_run_options): use the new fields.

Sat Jun 23 13:20:47 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_execarg): add close_others_given, close_others_do and
	  close_others_maxhint fields.

	* process.c (EXEC_OPTION_CLOSE_OTHERS): removed.
	  (rb_execarg_addopt): update the new fields, instead of options array.
	  (check_exec_fds): take eargp as an argument.  update the
	  close_others_maxhint field.
	  (rb_execarg_fixup): follow the argument change of check_exec_fds.
	  (rb_execarg_run_options): use the new fields.

Sat Jun 23 10:41:59 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_execarg): add unsetenv_others_given and
	  unsetenv_others_do fields.

	* process.c (EXEC_OPTION_UNSETENV_OTHERS): removed.
	  (rb_execarg_addopt): update the new fields, instead of options array.
	  (rb_execarg_fixup): use the new fields.

Sat Jun 23 09:35:47 2012  Tanaka Akira  <akr@fsij.org>

	* process.c: use the variable name "soptions" for sargp->options.

Sat Jun 23 09:17:49 2012  Tanaka Akira  <akr@fsij.org>

	* process.c: use the name "sargp" for struct rb_execarg variables
	  consistently for saving process attributes.

	* io.c: ditto.

Sat Jun 23 07:59:57 2012  Tanaka Akira  <akr@fsij.org>

	* process.c: use the name "eargp" for struct rb_execarg variables
	  consistently except for saving process attributes.

	* io.c: ditto.

	* ext/pty/pty.c: ditto.

Wed Jun 20 18:27:03 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* common.mk: Add missing dependencies.

Fri Jun 22 20:27:39 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_execarg): add pgroup_given and pgroup_pgid fields.

	* process.c (EXEC_OPTION_PGROUP): removed.
	  (rb_execarg_addopt): update the new fields, instead of options array.
	  (run_exec_pgroup): take a struct rb_execarg argument.  refer the new
	  fields.
	  (rb_execarg_run_options): follow run_exec_pgroup change.

Fri Jun 22 18:48:51 2012  Kouhei Sutou  <kou@cozmixng.org>

	* README.EXT, README.EXT.ja: use "sval" for the third argument
	  name of Data_Wrap_Struct().
	  Suggested by @satoh_fumiyasu. Thanks!!!

Fri Jun 22 18:04:26 2012  Koichi Sasada  <ko1@atdot.net>

	* iseq.c, vm_eval.c: set th->base_block properly.
	  th->base_block is information for (a) parsing, (b) compiling
	  and (c) setting up the frame to execute the program passed by
	  `eval' method.  For example, (1) parser need to know up-level
	  variables to detect it is variable or method without paren.
	  Befor (a), (b) and (c), VM set th->base_block by passed bindng
	  (or previous frame information).  After execute (a), (b) and (c),
	  VM should clear th->base_block.  However, if (a), (b) or (c)
	  raises an exception, then th->base_block is not cleared.
	  Problem is that the uncleared value th->balo_block is used for
	  irrelevant iseq compilation.  It causes SEGV or critical error.
	  I tried to solve this problem: to clear them before exception,
	  but finally I found out that it is difficult to do it (Ruby
	  program can be run in many places).
	  Because of this background, I set th->base_block before
	  compiling iseq and restore it after compiling.
	  Basically, th->base_block is dirty hack (similar to global
	  variable) and this patch is also dirty.

	* bootstraptest/test_eval.rb: add a test for above.

	* internal.h: remove unused decl.

	* iseq.c (rb_iseq_compile_with_option): add base_block parameter.
	  set th->base_block before compilation and restore it after
	  compilation.

	* ruby.c (require_libraries): pass 0 as base_block instead of
	  setting th->base_block

	* tool/compile_prelude.rb (prelude_eval): apply above changes.

	* vm.c, vm_eval.c: ditto.

	* vm_core.h: add comments.

Fri Jun 22 18:19:38 2012  Tanaka Akira  <akr@fsij.org>

	* process.c: pass struct rb_execarg value instead of its options
	  field for saving process attribute changing functions.
	  (save_redirect_fd): take a struct rb_execarg argument.
	  (run_exec_dup2): ditto.
	  (run_exec_close): ditto.
	  (run_exec_open): ditto.
	  (run_exec_dup2_child): ditto.
	  (run_exec_pgroup): ditto.
	  (run_exec_rlimit): ditto.
	  (save_env): ditto.
	  (rb_execarg_run_options): follow the above functions change.

Fri Jun 22 17:55:48 2012  Koichi Sasada  <ko1@atdot.net>

	* test/ruby/test_backtrace.rb: decrease recursion depth
	  to reduce consuming stack size.

Fri Jun 22 13:36:50 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* random.c (random_init, random_load): cannot initialize frozen object
	  again, nor with tainted/untrusted object.  [Bug #6540]

Fri Jun 22 13:32:33 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (rb_check_copyable): new function, to ensure the target is
	  not frozen and the source is not tainted nor untrusted.

Fri Jun 22 05:55:20 2012  Eric Hodel  <drbrain@segment7.net>

	* eval.c (ruby_cleanup):  Fixed typo.  Patch by Trever Dawe.
	  Fixes #131 (github).  [ruby-trunk - Bug #6619]

Thu Jun 21 21:16:58 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_execarg_addopt): take a VALUE argument instead of
	  struct rb_execarg.
	  (rb_exec_arg_addopt): follow the rb_execarg_addopt change.
	  (check_exec_options_i): ditto.

	* io.c (pipe_open): follow the rb_execarg_addopt change.

	* internal.h (rb_execarg_addopt): follow the definition change.

Thu Jun 21 20:34:19 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_fillarg): take a VALUE argument instead of
	  struct rb_execarg.
	  (rb_check_exec_options): ditto.
	  (check_exec_options_i): ditto.

Thu Jun 21 19:48:05 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_async_signal_safe): use rb_execarg_run_options
	  instead of rb_run_exec_options_err.
	  (rb_spawn_process): ditto.

Thu Jun 21 19:02:43 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_fillarg): take a VALUE argument instead of
	  struct rb_execarg.
	  (rb_execarg_init): follow the rb_exec_fillarg change.

Thu Jun 21 18:36:43 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_execarg_init): take a VALUE argument instead of
	  struct rb_execarg.
	  (rb_execarg_new): follow the rb_execarg_init change.
	  (rb_exec_arg_init): ditto.

	* internal.h (rb_execarg_init): follow the definition change.

Thu Jun 21 17:20:44 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (new_args_tail_gen): fix GC problem of keyword rest
	  argument.  the wrapped struct should be bound to the wrapping node
	  before assignment of child nodes, to get rid of the case the
	  children are referred by only the struct pointer which is not a
	  subject of GC.  [ruby-core:45744]

Thu Jun 21 07:06:52 2012  Koichi Sasada  <ko1@atdot.net>

	* error.c (err_append): rename err_append() to compile_err_append()
	  and move definition body.  err_append() is used only by compiling.

Thu Jun 21 06:21:54 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_execarg_fixup): take a VALUE argument instead of
	  struct rb_execarg.

	* internal.h (rb_execarg_fixup): follow the definition change.

	* io.c (pipe_open): follow rb_execarg_fixup change.

	* ext/pty/pty.c (establishShell): ditto.

Wed Jun 20 21:25:37 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (struct rb_execarg): add umask_given and umask_mask
	  fields.

	* process.c (STATIC_ASSERT): removed.
	  (rb_execarg_addopt): follow the rb_execarg change.
	  (rb_execarg_run_options): ditto.

Wed Jun 20 20:38:23 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (struct rb_execarg) moved and renamed from
	  struct rb_exec_arg in intern.h.

	* include/ruby/intern.h (struct rb_exec_arg): refer Data object which
	  contains struct rb_execarg.

	* process.c: use struct rb_execarg instead of struct rb_exec_arg
	  except functions declared in intern.h.
	  (rb_exec_arg_addopt): extract a pointer to struct rb_execarg from
	  struct rb_exec_arg.
	  (rb_exec_arg_init): ditto.
	  (rb_exec_arg_fixup): ditto.
	  (rb_run_exec_options_err): ditto.
	  (rb_run_exec_options): ditto.
	  (rb_exec_err): ditto.
	  (rb_exec): ditto.

	* io.c: use struct rb_execarg instead of struct rb_exec_arg.

	* ext/pty/pty.c: ditto.

Wed Jun 20 19:13:25 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_execarg_new): declared.
	  (rb_execarg_get): ditto.

	* process.c (mark_exec_arg): new function.
	  (free_exec_arg): ditto.
	  (memsize_exec_arg): ditto.
	  (exec_arg_data_type): defined.
	  (rb_execarg_new): new function.
	  (rb_execarg_get): ditto.
	  (rb_f_exec): use rb_execarg_new.
	  (rb_spawn_internal): ditto.
	  (rb_f_spawn): ditto.

	* io.c (pipe_open_v): use rb_execarg_new.
	  (pipe_open_s): ditto.

	* ext/pty/pty.c (establishShell): use rb_execarg_new.

Wed Jun 20 16:36:14 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* missing/setproctitle.c (environ): use (*_NSGetEnviron()) instead of
	  environ on Darwin for namespace cleanness, same as [ruby-core:00537].
	  [ruby-core:45615] [Bug #6576]

Wed Jun 20 11:33:04 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* process.c (rb_execarg_addopt): always make Fixnum, and ignore higher
	  bits in too large umask value.

Wed Jun 20 11:24:35 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Runner#_run_parallel): deal with
	  sudden-death of workers.

Mon Jun 18 20:34:20 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* time.c (init_leap_second_info): fix non-ANSI function declaration.

Mon Jun 18 20:29:04 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* ruby.c (rb_f_sub): use ansi style declaration.
	* ruby.c (rb_f_gsub): ditto.
	* ruby.c (rb_f_chomp): ditto.

Mon Jun 18 20:26:23 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* random.c (rb_random_int32): get rid of "warning: constant 0x100000000
	  is so big it is long" warning.

Mon Jun 18 20:07:23 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* dir.c (dir_initialize): get rid of "unused return: argc = rb_scan_args()"
	  warning.

Mon Jun 18 19:31:20 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* include/ruby/missing.h: include math.h before checking INFINITY
	  and NAN. Otherwise, strange macro redefinition will occur.

Mon Jun 18 19:12:37 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* array.c (ary_reverse): use ansi style declaration.

Tue Jun 19 18:43:50 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/backward/rubysig.h: fix visibility.  [Bug #6607]

Tue Jun 19 17:51:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* process.c (rb_execarg_run_options): do not call any methods in the
	  async-signal-safe function.  mask has been checked with NUM2MODET()
	  already and converted with LONG2NUM().

Tue Jun 19 11:59:56 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/readline/readline.c (Init_readline): don't set 0 to
	  rl_catch_signals and rl_catch_sigwinch. [Bug #5423]

Tue Jun 19 11:52:59 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/readline/readline.c (readline_s_get_special_prefixes): suppress
	  warning: uninitialized instance variable.

Tue Jun 19 11:43:16 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/readline/readline.c (readline_getc): fix editline compatibility
	  broken by r36123. [Bug #6601]

Mon Jun 18 17:10:08 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* string.c (rb_str_subpos): split from rb_str_substr.  returns
	  adjusted position for substring.

Mon Jun 18 10:42:57 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/readline/readline.c (readline_getc): deal with ESC just followed
	  by ASCII as meta prefix in incremental search mode.  based on the
	  patch from rctay (Tay Ray Chuan) at [ruby-core:45682].  [Bug #6601]

Sun Jun 17 22:23:53 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* dir.c (rb_file_directory_p): move documentation for Dir.exist? from
	  file.c so that the proper description will be shown instead of the
	  documentation of File.directory?.  [ruby-core:45685]

Sun Jun 17 16:21:01 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread_win32.h (rb_thread_lock_t): make a union for USE_WIN32_MUTEX.
	  this internal is used only in thread_win32.c, but has to be complete
	  to define rb_thread_t.

	* thread_win32.c (native_mutex_lock, native_mutex_destroy): fix for
	  USE_WIN32_MUTEX.

	* thread_win32.c (native_cond_timedwait_ms): rename reserved pattern
	  name.  user defined symbols should not start with __.

Sat Jun 16 19:24:01 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: define date_sg_t.

Sat Jun 16 18:46:57 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_tmx.h: offset in struct tmx_funcs is now int.
	* ext/date/date_strftime.c: ditto.
	* ext/date/date_core.c: ditto.

Sat Jun 16 18:31:46 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* eval.c (ruby_setup): set running state in the normal case before
	  popping a tag.

Sat Jun 16 07:46:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Runner#_run_parallel): format workers
	  results in the parent.

Sat Jun 16 07:12:56 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* tool/runruby.rb (File.realpath): return real path of expanded path.
	  [Bug #6598]

Sat Jun 16 07:12:28 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* bootstraptest/runner.rb (main): ignore -j option for compatibility
	  with test/unit.

Sat Jun 16 07:11:52 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Runner#puke): modify only result and
	  drop useless reports, not override entirely.

	* lib/test/unit/parallel.rb (Test::Unit::Worker#_run_suite): report
	  unformatted results.  formatting messages is not a workers task.

	* lib/test/unit/parallel.rb (Test::Unit::Worker#puke): store raw
	  results.

Sat Jun 16 01:27:14 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb: bumping psych to 1.3.3
	* ext/psych/psych.gemspec: ditto

Fri Jun 15 20:54:28 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* vm_backtrace.c (backtrace_collect): rename from backtreace_collect.

Fri Jun 15 19:22:13 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h: remove VM_FRAME_MAGIC_FINISH (finish frame type).
	  Before this commit:
	    `finish frame' was place holder which indicates that VM loop
	    needs to return function.
	    If a C method calls a Ruby methods (a method written by Ruby),
	    then VM loop will be (re-)invoked.  When the Ruby method returns,
	    then also VM loop should be escaped.  `finish frame' has only
	    one instruction `finish', which returns VM loop function.
	    VM loop function executes `finish' instruction, then VM loop
	    function returns itself.
	    With such mechanism, `leave' instruction (which returns one
	    frame from current scope) doesn't need to check that this `leave'
	    should also return from VM loop function.
	    Strictly, one branch can be removed from `leave' instruction.
	  Consideration:
	    However, pushing the `finish frame' needs costs because
	    it needs several memory accesses.  The number of pushing
	    `finish frame' is greater than I had assumed.  Of course,
	    pushing `finish frame' consumes additional control frame.
	    Moreover, recent processors has good branch prediction,
	    with which we can ignore such trivial checking.
	  After this commit:
	    Finally, I decide to remove `finish frame' and `finish'
	    instruction.  Some parts of VM depend on `finish frame',
	    so the new frame flag VM_FRAME_FLAG_FINISH is introduced.
	    If this frame should escape from VM function loop, then
	    the result of VM_FRAME_TYPE_FINISH_P(cfp) is true.
	    `leave' instruction checks this flag every time.
	    I measured performance on it.  However on my environments,
	    it improves some benchmarks and slows some benchmarks down.
	    Maybe it is because of C compiler optimization parameters.
	    I'll re-visit here if this cause problems.

	* insns.def (leave, finish): remove finish instruction.

	* vm.c, vm_eval.c, vm_exec.c, vm_backtrace.c, vm_dump.c:
	  apply above changes.

Fri Jun 15 19:11:23 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Runner#puke): always add skipped
	  results to the report for parallel test.  [Bug #6595]

Fri Jun 15 09:01:35 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* nacl/pepper_main.c: Removed an unnecessary and erroneous inclusion.

Thu Jun 14 22:59:56 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (RUBY_CPPOUTFILE): check if output is really sent to
	  specified file to tell if -o option works.  [ruby-dev:45742]
	  [Bug#6591]

	* configure.in (RUBY_CPPOUTFILE): check if output file is actually
	  created.  [ruby-dev:45742] [Bug#6591]

Thu Jun 14 22:10:50 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (proc_exec_sh): don't strip leading spaces of the script.

Thu Jun 14 15:54:02 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* file.c (rb_file_s_basename, rb_file_s_dirname): documentation fix.
	  File.basename and File.dirname support File::ALT_SEPARATOR.

Thu Jun 14 11:10:10 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* nacl/pepper_main.c: Applies the new embedding API to pepper_ruby.

Thu Jun 14 10:44:41 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* include/ruby/ruby.h: Grouped APIs for embedding CRuby interpreter.
	  (ruby_setup, ruby_compile_main_from_file,
	  ruby_compile_main_from_string, ruby_eval_main,
	  ruby_set_script_name): new APIs to embed CRuby.
	  (ruby_opaque_t) Opaque pointer to an internal data, to NODE or iseq
	  in particular.

	* eval.c (ruby_setup): Similar to ruby_init but returns an error code
	  instead of exit(3) on error.
	  (ruby_eval_main): Similar to ruby_exec_node but returns the
	  evaluation result.
	  (ruby_eval_main_internal): renamed from ruby_exec_internal.

	* ruby.c (toplevel_context): new helper function.
	  (PREPARE_EVAL_MAIN): moved.
	  (process_options): refactored with new functions.
	  (parse_and_compile_main) new helper function.
	  (ruby_compile_main_from_file, ruby_compile_main_from_string) new API
	  (ruby_set_script_name): new API.


Thu Jun 14 10:39:48 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* eval.c: Add doxygen comments.

	* ruby.c: ditto.

	* thread_pthread.c: ditto

	* version.c: ditto.

	* vm_core.h: ditto.

Thu Jun 14 10:16:07 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: revert r36071 and add NetBSD to blacklist of -ansi.

Thu Jun 14 07:59:12 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* thread_pthread.c (get_stack): Linux is the only OS which includes
	  the size of guard page into the stack size.

Thu Jun 14 06:21:00 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/drb/drb.rb:  Replace broken links to the English DRb book.
	  Patch by Zachary Scott.  [ruby-trunk - Bug #6544]

Thu Jun 14 06:17:47 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/observer.rb:  Update broken link to the Programming Ruby book.
	  Patch by Zachary Scott.  [ruby-trunk - Bug #6536]
	* lib/drb/drb.rb:  ditto.

Thu Jun 14 05:23:05 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* regparse.c (PFETCH_READY): suppress Wunused-but-set-variable.

	* regparse.c (is_onechar_cclass): restructured to clarify that c is
	  used iff found == 1.

Thu Jun 14 02:54:17 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: use -fbuiltin with -ansi -std=iso9899:199409.
	  This prevents errors introduced by disabling builtin functions,
	  which is the sub-effect of -ansi/-std.
	  Now NetBSD can use -ansi -std=iso9899:199409.
	  Maybe mingw, cygwin and darwin can also.

Thu Jun 14 02:53:30 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* Makefile.in: don't remove macros. now name2ctype uses macros.

	* tool/enc-unicode.rb: add comment why it uses Hash#index.

	* enc/unicode/{name2ctype.kwd,name2ctype.src,name2ctype.h.blt}:
	  update to follow the current name2ctype.h.
	  FYI current Unicode version is 6.1.

Thu Jun 14 00:16:59 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/net/http/responses.rb, lib/webrick/httpstatus.rb: Add HTTP
	  response codes added in RFCs 2817 and 4918.  [ruby-core:45547]
	  [Feature #6569]

	* lib/net/http/responses.rb: Rename Net::HTTPMultipleChoice to
	  Net::HTTPMultipleChoices, leaving the former as alias to the
	  latter for backward compatibility.  [ruby-core:45547]
	  [Feature #6569]

	* lib/net/http/responses.rb: Add comments about unused,
	  still-in-draft and private extension response codes.
	  [ruby-core:45547] [Feature #6569]

Wed Jun 13 22:44:32 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* test/dl/test_func.rb (test_qsort1, test_qsort2): use TYPE_SIZE_T
	  for size_t variables. [ruby-dev:45733] [Bug #6584]

Wed Jun 13 22:18:01 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in: remove -ansi and -std options for lgamma_r() and
	  finite().

Wed Jun 13 21:46:34 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in: cygwin does not provide some declarations in strict
	  ANSI mode.

Wed Jun 13 20:19:59 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_fork_internal): move a variable declaration.

Wed Jun 13 17:54:38 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* regparse.c (PFETCH_READY):  this  line was to  suppress warning,
	  but  did emit  warnings if  -Wuninitialized was  set.  Assigning
	  NULL instead if pfetch_prev should suffice the situation.

Wed Jun 13 17:51:05 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in: cygwin needs C99 for some stuff, e.g.,
	  pthread_attr_setstacksize, sched_yield.

Wed Jun 13 17:50:43 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* Makefile.in (.c.i): add warnflags to make the result consistent with
	  compilation.

Wed Jun 13 15:12:07 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* configure.in: On Windows  platforms, system provided headers are
	  VC++ optimized.  That is, C++ habits are often contaminated into
	  various  headers.  Most  frequent  situation is  the  use of  //
	  comments.  We bypass ANSI  C mode for them.  Otherwise extension
	  libs cannot include those headers.

Wed Jun 13 13:39:23 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/win32.h: get rid of C99 style one line comments.

Wed Jun 13 13:39:04 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* encoding.c (enc_alias_internal): use strdup defined as macro.

Wed Jun 13 10:20:27 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* process.c (rb_exec_fillarg): get rid of SIZE_T_MAX which may need
	  more headers.

	* process.c (rb_exec_fillarg): fix array element size.  "continue" and
	  "readonly" exceeded the size.

	* process.c (rb_exec_fillarg): use shell if the first word is reserved
	  or special built-in name.
	 http://pubs.opengroup.org/onlinepubs/009695399/utilities/xcu_chap02.html

	* process.c (rb_exec_fillarg): treat '=' only in the first word.  if
	  the first word does not contain '=', it is the command name and
	  environment assignments cannot be anymore.

Tue Jun 12 23:45:36 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/mkmf.rb: add dummy clean-static target to prevent errors for the
	  case real clean-static target doesn't exist.

Tue Jun 12 22:49:42 2012  Naohisa Goto  <ngotogenome@gmail.com>

	* process.c (rb_exec_arg_fixup): fix compile error

Tue Jun 12 21:40:13 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_fillarg): treat '=' character as a meta
	  character to detect assignments preceding command name.

Tue Jun 12 20:29:19 2012  Tanaka Akira  <akr@fsij.org>

	* include/ruby/intern.h (rb_exec_arg_init): deprecated.
	  (rb_exec_arg_addopt): ditto.
	  (rb_exec_arg_fixup): ditto.
	  (rb_run_exec_options): ditto.
	  (rb_run_exec_options_err): ditto.

	* internal.h (rb_execarg_init): declared.
	  (rb_execarg_addopt): ditto.
	  (rb_execarg_fixup): ditto.
	  (rb_execarg_run_options): ditto.

	* process.c: call rb_execarg_addopt, rb_execarg_fixup,
	  rb_execarg_run_options, rb_execarg_init.
	  (rb_execarg_addopt): renamed from rb_exec_arg_addopt.
	  (rb_exec_arg_addopt): stub to call rb_execarg_addopt.
	  (rb_execarg_init): renamed from rb_exec_arg_init.
	  (rb_exec_arg_init): stub to call rb_execarg_init.
	  (rb_execarg_fixup): renamed from rb_exec_arg_fixup.
	  (rb_exec_arg_fixup): stub to call rb_execarg_fixup.
	  (rb_execarg_run_options): renamed from rb_run_exec_options_err.
	  (rb_run_exec_options_err): stub to call rb_execarg_run_options.
	  (rb_run_exec_options): call rb_execarg_run_options.

	* io.c: call rb_execarg_addopt, rb_execarg_fixup,
	  rb_execarg_run_options, rb_execarg_init.

	* ext/pty/pty.c (establishShell): call rb_execarg_init and
	  rb_execarg_fixup.

Tue Jun 12 18:39:59 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* configure.in: enable strict ANSI mode by default in case of GCC,
	  requested by _ko1.

Tue Jun 12 06:40:23 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_fillarg): detect '#' as a meta character.

Mon Jun 11 22:15:44 2012  Tanaka Akira  <akr@fsij.org>

	* include/ruby/intern.h (rb_proc_exec_n): deprecated.
	  (rb_exec): ditto.
	  (rb_exec_err): ditto.
	  (rb_fork): ditto.
	  (rb_fork_err): ditto.

Mon Jun 11 18:49:52 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: on checking libexecinfo, don't specify /use/local.
	  On FreeBSD people must specify --with-opt-dir or --with-execinfo-dir.

Mon Jun 11 12:14:37 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h: remove lfp (local frame pointer) and rename
	  dfp (dynamic frame pointer) to ep (environment pointer).
	  This change make VM `normal' (similar to other interpreters).
	  Before this commit:
	    Each frame has two env pointers lfp and dfp.  lfp points
	    local environment which is method/class/toplevel frame.
	    lfp[0] is block pointer.
	    dfp is block local frame. dfp[0] points previous (parent)
	    environment pointer.
	    lfp == dfp when frame is method/class/toplevel.
	    You can get lfp from dfp by traversing previous environment
	    pointers.
	  After this commit:
	    Each frame has only `ep' to point respective environment.
	    If there is parent environment, then ep[0] points parent
	    environment (as dfp).  If there are no more environment,
	    then ep[0] points block pointer (as lfp).  We call such ep
	    as `LEP' (local EP).  We add some macros to get LEP and to
	    detect LEP or not.
	    In short, we replace dfp and lfp with ep and LEP.
	  rb_block_t and rb_binding_t member `lfp' and `dfp' are removed
	  and member `ep' is added.
	  rename rb_thread_t's member `local_lfp' and `local_svar' to
	  `root_lep' and `root_svar'.
	  (VM_EP_PREV_EP(ep)): get previous environment pointer.  This macro
	    assume that ep is not LEP.
	  (VM_EP_BLOCK_PTR(ep)): get block pointer.  This macro assume
	    that ep is LEP.
	  (VM_EP_LEP_P(ep)): detect ep is LEP or not.
	  (VM_ENVVAL_BLOCK_PTR(ptr)): make block pointer.
	  (VM_ENVVAL_BLOCK_PTR_P(v)): detect v is block pointer.
	  (VM_ENVVAL_PREV_EP_PTR(ptr)): make prev environment pointer.
	  (VM_ENVVAL_PREV_EP_PTR_P(v)): detect v is prev env pointer.

	* vm.c: apply above changes.
	  (VM_EP_LEP(ep)): get LEP.
	  (VM_CF_LEP(cfp)): get LEP of cfp->ep.
	  (VM_CF_PREV_EP(cfp)): utility function VM_EP_PREV_EP(cfp->ep).
	  (VM_CF_BLOCK_PTR(cfp)): utility function VM_EP_BLOCK_PTR(cfp->ep).

	* vm.c, vm_eval.c, vm_insnhelper.c, vm_insnhelper.h, insns.def:
	  apply above changes.

	* cont.c: ditto.

	* eval.c, eval_intern.h: ditto.

	* proc.c: ditto.

	* thread.c: ditto.

	* vm_dump.c: ditto.

	* vm_exec.h: fix function name (on vm debug mode).

Mon Jun 11 11:52:18 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* compile.c (iseq_set_sequence): nonstatic initializer of an
	  aggregate type is a C99ism.

	* compile.c (enum compile_array_type_t): comma at the end of enum
	  list is a C99ism.

	* vm_backtrace.c (enum LOCATION_TYPE): ditto.

Mon Jun 11 06:31:33 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_proc_exec_n): revert the function removed at r35889.

Mon Jun 11 06:20:50 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* thread_pthread.c (rb_thread_create_timer_thread): assign return
	  value to the variable err.

Mon Jun 11 06:17:06 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* thread_pthread.c (native_cond_initialize): fix typo in r36022.
	  this cause a failure on FreeBSD 8.2 amd64.
	 http://fbsd.rubyci.org/~chkbuild/ruby-trunk/log/20120610T130201Z.diff.html.gz

Mon Jun 11 05:21:57 2012  Koichi Sasada  <ko1@atdot.net>

	* .gdbinit (SDR): add SDR function.  It's only for VM debugging.

Sun Jun 10 21:50:45 2012  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* nacl/nacl_config.rb: Fixed for 32bit hosts.

Sun Jun 10 20:23:14 2012  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	Fixes threading on NativeClient.

	* thread_pthread.c (timer_thread_sleep): Extracted out a function from
	  thread_timer(). Added an alternative implementation for platforms
	  that lacks select(2) or pipe(2).
	  (rb_thread_create_timer_thread, native_cond_initialize,
	  native_cond_destroy): Replaced wrong HAVE_XXX checks.

	* configure.in (pthread_attr_init): New check.

Sun Jun 10 21:30:11 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_without_timer_thread): renamed from rb_exec_err.
	  (rb_exec_err): new stub function to call
	  rb_exec_without_timer_thread.
	  (rb_f_exec): call rb_exec_without_timer_thread.
	  (rb_exec): call rb_exec_without_timer_thread.

Sun Jun 10 21:13:10 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_fork): call rb_fork_internal instead of rb_fork_err.

Sun Jun 10 20:55:59 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_fork_ruby): call rb_fork_internal directly.

Sun Jun 10 20:19:40 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_fork_ruby): new function.
	  (rb_f_fork): use rb_fork_ruby instead of rb_fork.
	  (rb_daemon): ditto.

	* io.c (pipe_open): use rb_fork_ruby instead of rb_fork.

	* internal.h (rb_fork_ruby): declared.

Sun Jun 10 18:58:16 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/net/http/response.rb: Remove a duplicated rdoc and leave a
	  pointer.

	* lib/net/http/responses.rb: Add RFC numbers to base on.

Sun Jun 10 18:31:42 2012  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* configure.in (RUBY_NACL): Warns if $PATH does not contain the path
	  to NativeClient SDK. PATH variable redefinition in GNUmakefile does
	  not work for GNU make 3.81.

Sun Jun 10 17:54:36 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.h (IS_STACK_DIR_UPPER): utility macro.

	* thread_pthread.c (get_stack): seems stack size does not include
	  guard size on Mac OS X.

	* thread_pthread.c (ruby_init_stack): adjust stack size for offset of
	  addr from the bottom.

Sun Jun 10 15:49:47 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (retry_fork): call after_fork except in a child process.
	  (rb_fork_internal): restrict after_fork call condition.

Sun Jun 10 14:19:33 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: NetBSD 6 adds libexecinfo but it only works on amd64.
	 http://www.mail-archive.com/source-changes-full@netbsd.org/msg38729.html

Sun Jun 10 12:43:23 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_f_exec): call rb_exec_async_signal_safe except on
	  Mac OS X.  cf. the comment in before_exec_non_async_signal_safe.

Sun Jun 10 12:15:18 2012  Tanaka Akira  <akr@fsij.org>

	* io.c (popen_exec): don't call rb_thread_atfork_before_exec.  use
	  rb_exec_async_signal_safe instead of rb_exec_err.
	  (pipe_open): use rb_fork_async_signal_safe instead of rb_fork_err.

Sun Jun 10 11:44:57 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_fork_internal): call after_fork only unless
	  chfunc_is_async_signal_safe.

Sun Jun 10 11:33:01 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_pkey_ec.c
	  test/openssl/test_pkey_ec.rb: Add support for EC_POINT_mul.
	  Patch provided by Sambasiva Suda. Thanks!
	  [ruby-core:44408][ruby-trunk - Feature #6310]

Sun Jun 10 10:48:15 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* lib/openssl/ssl.rb: Use a simple random number to generate the
	  session id. MD5, as was used before, causes problems when
	  using a FIPS version of OpenSSL. Issue was found by Jared
	  Jennings, thank you!
	  [ruby-trunk - Bug #6137]

Sun Jun 10 10:27:34 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* NEWS: Add note about the new private key export behavior.

Sun Jun 10 10:24:51 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_async_signal_safe): exported.

	* ext/pty/extconf.rb: modify $INCFLAGS to include internal.h

	* ext/pty/pty.c: include internal.h.
	  (chfunc): don't call rb_thread_atfork_before_exec.  use
	  rb_exec_async_signal_safe instead of rb_f_exec.
	  (establishShell): set up earg.  use rb_fork_async_signal_safe
	  instead of rb_fork_err.

	* internal.h (rb_exec_async_signal_safe): declared.
	  (rb_fork_async_signal_safe): declared.

Sun Jun 10 10:21:37 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl.c
	  ext/openssl/ossl_pkey_rsa.c
	  ext/openssl/ossl_pkey_dsa.c
	  ext/openssl/ossl_pkey_ec.c: Forbid export passwords that are less
	  than four characters long, as OpenSSL itself does not allow this.
	  Issue found by Eric Hodel.
	* ext/openssl/ossl_pkey_ec.c: Add export as an alias of to_pem,
	  following the PKey interface contract.
	* test/openssl/test_pkey_dsa.rb
	  test/openssl/test_pkey_rsa.rb
	  test/openssl/test_pkey_ec.rb: Add tests that assert correct
	  behaviour when dealing with passwords that are less than four
	  characters long.
	  [ruby-core: 42281][ruby-trunk - Bug #5951]

Sun Jun 10 10:14:26 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_f_exec): use rb_exec_arg_prepare.

Sun Jun 10 06:43:51 2012  Tanaka Akira  <akr@fsij.org>

	* process.c: split after_exec into async-signal-safe part and rest.
	  (after_exec_async_signal_safe): extracted from after_exec.
	  (after_exec_non_async_signal_safe): ditto.
	  (after_exec): call them.
	  (rb_exec_async_signal_safe): call after_exec_async_signal_safe.
	  (rb_exec_err): call after_exec_non_async_signal_safe instead of
	  after_exec.

Sun Jun 10 06:21:10 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* NEWS: document new features of Ruby OpenSSL.

Sun Jun 10 03:09:41 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl.c: Fix error in example. Patch by David Albert.

	  Add/extend existing documentation. Examples now also cover RSA
	  signatures and PBKDF2.
	  [ruby-core: 45154][ruby-trunk - Bug #6475]


Sun Jun 10 01:41:45 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_ssl.c: Introduce SSLContext#renegotiation_cb and
	  remove SSLContext#disable_client_renegotiation and related
	  functionality introduced in r35797. The new callback approach
	  gives clients maximum flexibility to decide on their own what to
	  do on renegotiation attempts.
	  Add documentation for SSL module and SSLError.
	* test/openssl/test_ssl.rb: Add a test for
	  SSLContext#renegotiation_cb.

Sun Jun 10 01:37:18 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_fork_internal): initialize exc.

Sun Jun 10 00:19:25 2012  Tanaka Akira  <akr@fsij.org>

	* process.c: don't use non async-signal-safe functions in a child
	  process before exec, for invoking a command.
	  (rb_exec_atfork): call rb_exec_async_signal_safe only.
	  (retry_fork): take chfunc_is_async_signal_safe argument.  call
	  before_fork and after_fork only unless chfunc_is_async_signal_safe.
	  (send_child_error): take chfunc_is_async_signal_safe argument.
	  send an exception only unless chfunc_is_async_signal_safe.
	  (recv_child_error): take chfunc_is_async_signal_safe argument.
	  receive an exception only unless chfunc_is_async_signal_safe.
	  (rb_fork_internal): renamed from rb_fork_err and take
	  chfunc_is_async_signal_safe argument.
	  use rb_protect only unless chfunc_is_async_signal_safe.
	  (rb_fork_err): call rb_fork_internal with false as
	  chfunc_is_async_signal_safe.
	  (rb_fork_async_signal_safe): call rb_fork_internal with true as
	  chfunc_is_async_signal_safe.
	  (rb_spawn_process): call rb_fork_async_signal_safe instead of
	  rb_fork_err.

Sat Jun  9 23:57:03 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_fork_err): rewrite a complex "if" statement.

Sat Jun  9 23:44:29 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (before_exec_async_signal_safe): extracted from
	  before_exec.
	  (before_exec_non_async_signal_safe): ditto.
	  (before_exec): call before_exec_async_signal_safe and
	  before_exec_non_async_signal_safe.
	  (rb_exec_async_signal_safe): call before_exec_async_signal_safe.
	  (rb_exec_err): call before_exec_non_async_signal_safe instead of
	  before_exec.

Sat Jun  9 23:36:53 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* iseq.c (iseq_load, insn_operand_intern, rb_iseq_disasm)
	  (rb_iseq_parameters): use rb_id2str() instead of rb_id2name() to
	  keep encoding.

	* string.c (rb_str_symname_p): new function that checks if the string
	  is valid as a symbol name.  split from sym_inspect().

Sat Jun  9 22:27:05 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (retry_fork): rewrite a complex "for" statement by
	  simple statements.

Sat Jun  9 21:50:04 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (retry_fork): extracted from rb_fork_err.
	  (send_child_error): ditto.
	  (recv_child_error): ditto.

Sat Jun  9 17:21:48 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* iseq.c (iseq_load): type is a symbol, and invalid as ID in common.

Sat Jun  9 10:57:14 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_async_signal_safe): extracted from rb_exec_err.

Sat Jun  9 09:31:07 2012  Tanaka Akira  <akr@fsij.org>

	* process.c: simplified because close_others option is always
	  enabled by default.
	  (rb_f_exec): don't need to set the option.
	  (rb_exec_arg_prepare): don't need to set the option.  don't need
	  default_close_others argument.
	  (rb_spawn_internal): don't need to give default_close_others
	  argument for rb_exec_arg_prepare.  don't need default_close_others
	  argument.
	  (rb_spawn_err): don't need to give default_close_others
	  argument for rb_spawn_internal.
	  (rb_spawn): don't need to give default_close_others
	  argument for rb_spawn_internal.
	  (rb_f_system): don't need to give default_close_others argument for
	  rb_spawn_internal.
	  (rb_f_spawn): don't need to give default_close_others argument for
	  rb_exec_arg_prepare.

Sat Jun  9 09:00:58 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_proc_exec): call before_exec() here addition to
	  rb_exec_err.

Sat Jun  9 08:30:52 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread_pthread.c (ruby_init_stack): use stack info if possible.

Sat Jun  9 08:21:32 2012  Eric Hodel  <drbrain@segment7.net>

	* README.EXT (prepare extconf.rb):  Added note to see MakeMakefile for
	  documentation of extconf.rb functions.  Patch by Zachary Scott.
	  [ruby-trunk - Feature #6522]
	* README.EXT (Appendix C):  Removed in favor of MakeMakefile.
	  Patch by Zachary Scott.
	* lib/mkmf.rb:  Merged documentation from README.EXT Appendix C.  Patch
	  by Zachary Scott.

Sat Jun  9 08:16:47 2012  Eric Hodel  <drbrain@segment7.net>

	* doc/re.rdoc:  Completed wording in the description of the =~ operator.
	  [ruby-trunk - Bug #6529]

Sat Jun  9 08:09:38 2012  Eric Hodel  <drbrain@segment7.net>

	* string.c (rb_str_start_with):  Removed "p" from start_with? examples
	  to match other String method examples.  [ruby-trunk - Bug #6553]
	* string.c (rb_str_end_with):  Updated end_with? to use code markup
	  instead of italic.

Sat Jun  9 07:56:03 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/benchmark.rb:  Updated formatting of Benchmark documentation for
	  consistency.  [ruby-trunk - Bug #6533]

Sat Jun  9 07:46:26 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/delegate.rb:  Added documentation for Delegator#!.  Patch by
	  Zachary Scott.  [ruby-trunk - Feature #6534]

Sat Jun  9 07:39:50 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http/responses.rb:  Add RFC 6585 response codes.  Patch by
	  Sangil Jung.  [ruby-trunk - Feature #6480]
	* lib/net/http/response.rb:  ditto
	* lib/net/http.rb:  ditto
	* lib/webrick/httpstatus.rb:  ditto

Sat Jun  9 01:24:28 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_err): before_exec() call moved from proc_exec_cmd
	  and proc_exec_sh.
	  (rb_proc_exec): ditto.

Sat Jun  9 01:11:07 2012  Tanaka Akira  <akr@fsij.org>

	* include/ruby/intern.h (rb_exec_arg_init): declaration changed to
	  return a value.

	* process.c (rb_exec_arg_init): return a value.

Fri Jun  8 23:44:14 2012  Tanaka Akira  <akr@fsij.org>

	* process.c: don't check the availability of FD_CLOEXEC.  It should
	  be available if fork() is available.

	* io.c: ditto.

Fri Jun  8 22:39:32 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_fork_err): revert r35955.  The condition needs !chfunc
	  to close ep[0] and ep[1].  The catched exception is re-raised
	  immediately after that if status is not NULL.

Fri Jun  8 19:43:33 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_err): after_exec() call moved from proc_exec_cmd
	  and proc_exec_sh.
	  (rb_proc_exec): ditto.

Fri Jun  8 19:00:59 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (ARGV_COUNT): unused macro removed.
	  (ARGV_SIZE): ditto.
	  (ALLOC_ARGV): ditto.
	  (ALLOC_ARGV_WITH_STR): ditto.

Fri Jun  8 16:19:33 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/runner.rb (src_testdir): expand real path so that
	  TestGem#test_self_find_files does not fail by aliased load path when
	  srcdir contains a symbolic link.

	* tool/runruby.rb (srcdir): ditto.

Fri Jun  8 12:04:39 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* process.c (rb_fork_err): error state in the child process is prior
	  to exceptions in proc_syswait().

	* process.c (rb_fork_err): determine status on errors.

	* ext/pty/pty.c (establishShell): reraise exception if something
	  raised during sleep.

	* ext/pty/pty.c (establishShell): now needs status to protect from
	  exceptions in rb_fork_err().

Thu Jun  7 22:13:05 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_fork_err): Fix the condition to use rb_protect.

Thu Jun  7 20:29:12 2012  Tanaka Akira  <akr@fsij.org>

	* include/ruby/intern.h: rb_exec_arg and related stuff moved back from
	  internal.h

Thu Jun  7 15:53:03 2012  Koichi Sasada  <ko1@atdot.net>

	* .gdbinit: add function `trace_machine_instructions' to trace
	  in native machine assemble.
	  See https://bugs.ruby-lang.org/projects/ruby-trunk/wiki/MachineInstructionsTraceWithGDB
	  for more details.

Wed Jun  6 21:31:21 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (proc_exec_cmd) renamed from proc_exec_v.
	  (proc_exec_sh): renamed from rb_proc_exec_e.
	  (proc_spawn_cmd_internal): renamed from proc_spawn_v.
	  (proc_spawn_cmd): renamed from proc_spawn_n.
	  (proc_spawn_sh): renamed from proc_spawn.

Wed Jun  6 21:18:47 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* process.c (try_with_sh): please take care of the macro defined by
	  you.

Wed Jun  6 20:45:08 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (proc_exec_v): don't call dln_find_exe_r here because it
	  is not async-signal-safe and proc_exec_v is called in a child
	  process.
	  command_abspath field of rb_exec_arg.
	  (rb_exec_fillarg): call dln_find_exe_r and set command_abspath.
	  (rb_exec_err): Give the absolute path of the invoking command for
	  proc_exec_v, instead of the command name.

	* internal.h: add command_abspath field for rb_exec_arg.

Wed Jun  6 20:08:01 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (try_with_sh): take envp argument.
	  (exec_with_sh): ditto.  use it for execve.
	  (proc_exec_v): provide envp for try_with_sh.

Wed Jun  6 13:25:04 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c, include/ruby/win32.h (rb_w32_wrap_io_handle): new API.
	  this API wraps an I/O handle (HANDLE or SOCKET) and returns fd.
	  the second parameter should be combination of O_*, for example,
	  O_RDWR | O_BINARY | O_NOINHERIT.

	* win32/win32.c, include/ruby/win32.h (rb_w32_unwrap_io_handle): new
	  API.  this API unwraps an I/O handle and close the fd (not closes
	  the handle itself).

	[Feature #4906] [ruby-core:37227]

Wed Jun  6 13:18:26 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (rb_w32_close): of course, console handle is not socket.

Wed Jun  6 12:37:43 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* process.c (rb_run_exec_options_err): allocate a temporary buffer for
	  run_exec_dup2() for restoring fds on non-fork environments.

Wed Jun  6 09:45:21 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/dl/test_c_{struct_entry,union_entity}.rb: sorry, typos.

Wed Jun  6 05:27:54 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_fillarg): check use_shell field before accessing
	  a union field.

Wed Jun  6 04:58:44 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_spawn_process): prog variable is not used for Unix.

Wed Jun  6 00:20:37 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_exec_arg_init): change return type to void.

	* process.c (rb_exec_arg_init): don't return a value.
	  (rb_exec_arg_prepare): ditto.
	  (rb_spawn_process): don't take the prog argument.  extract the
	  information from earg.
	  (rb_spawn_internal): follow rb_spawn_process change.
	  (rb_f_spawn): ditto.

	* io.c (pipe_open): don't take the prog argument.  extract the
	  information from eargp.
	  (pipe_open_v): follow pipe_open change.
	  (pipe_open_s): ditto.

Tue Jun  5 23:51:33 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_exec_arg): use union to represent command invocation
	  with/without shell.

	* process.c: follow the rb_exec_arg change.

	* io.c (pipe_open): ditto.

Tue Jun  5 22:28:46 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h: rb_exec_arg and related stuff moved from intern.h

	* include/ruby/intern.h (rb_proc_exec_n): removed.

Tue Jun  5 21:57:22 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_arg_fixup): allocate a temporary buffer for
	  run_exec_dup2 here because it should be async-signal-safe.
	  (run_exec_dup2): use the temporary buffer.
	  (run_exec_dup2_tmpbuf_size): new function.

	* include/ruby/intern.h (rb_exec_arg): add dup2_tmpbuf field.

Tue Jun  5 20:13:15 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* object.c (rb_obj_init_copy): should check if trusted too.

Tue Jun  5 19:59:13 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (strtok): declaration removed because it is not used.

Tue Jun  5 19:33:51 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (proc_spawn): don't detect simple command line here
	  because rb_exec_fillarg already did.

Tue Jun  5 19:21:10 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_fillarg): bail out a loop eagerly.

Tue Jun  5 19:15:14 2012  Tanaka Akira  <akr@fsij.org>

	* process.c: add comments about async-signal-safe.

	* io.c: ditto.

Tue Jun  5 09:25:10 2012  Eric Hodel  <drbrain@segment7.net>

	* io.c:  Edited documentation for IO and File open and new and
	  Kernel#open for consistency and clarity.

Mon Jun  4 21:53:56 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/win32.c (rb_w32_sysinit): let the system not display the
	  critical-error-handler message box and the Windows Error Reporting
	  dialog.  [ruby-core:45389] [Bug #6535]

Mon Jun  4 19:36:25 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_fillarg): allocate one more element before
	  beginning in argv_str for try_with_sh.

	* internal.h (ARGVSTR2ARGC): adjust for the above change.
	  (ARGVSTR2ARGV): ditto.

Mon Jun  4 19:17:06 2012  Tanaka Akira  <akr@fsij.org>

	* internal.h (ARGVSTR2ARGC): defined.
	  (ARGVSTR2ARGV): defined.

	* process.c (proc_exec_v): use ARGVSTR2ARGV.
	  (rb_spawn_process): use ARGVSTR2ARGC and ARGVSTR2ARGV.

	* io.c (pipe_open): use ARGVSTR2ARGV.

Mon Jun  4 16:13:00 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.h: remove magical code "lfp[0] & 0x02".
	  Current VM doesn't use this bit.

	* vm_core.h (RUBY_VM_GET_BLOCK_PTR): added.

	* eval.c (rb_block_given_p): use RUBY_VM_GET_BLOCK_PTR().

	* vm_eval.c (rb_f_block_given_p): ditto.

Mon Jun  4 15:39:33 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/win32.c (constat_apply): apply VT100 functions.
	  [ruby-core:44958] [Feature #6418]

	* win32/win32.c (constat_parse): parse some VT100 escape sequence.

Mon Jun  4 14:06:12 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* process.c (rb_exec_err): should preserve errno.

Mon Jun  4 13:10:11 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/dl/test_c_{struct_entry,union_entity}.rb: broken require.

Mon Jun  4 12:01:21 2012  Koichi Sasada  <ko1@atdot.net>

	* test/ruby/test_backtrace.rb: fix test.
	  Windows path includes `:' character.

Mon Jun  4 11:42:39 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h (rb_location_t): fix type and field name.
	  (1) rename rb_location_t to rb_iseq_location_t.
	  (2) rename field names of rb_iseq_location_t to adjust
	      RubyVM::Backtrace::Location methods.
	      (2-1) filename -> path
	      (2-2) filepath -> absolute_path
	      (2-3) basename -> base_label
	      (2-4) name -> label
	  (3) rename filed name rb_iseq_location_t#line_no to
	      rb_iseq_location_t#first_lineno to clear purpose of this field.
	  (4) The field names rb_binding_t#(filename|line_no) are also renamed
	      to rb_binding_t#(path|first_lineno).

	* compile.c: apply above changes.

	* iseq.c: ditto.

	* proc.c: ditto.

	* vm*.c: ditto.

Mon Jun  4 11:40:28 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* marshal.c (r_object0): also load TYPE_USRMARSHAL, TYPE_DATA using
	  compatible loader.

Mon Jun  4 11:33:42 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* process.c (rb_run_exec_options_err): restore save_env() call for
	  non-fork environments.

	* process.c (rb_exec_err): restore environments after the failure of
	  exec to fix [ruby-core:44093] [Bug #6249] on non-fork environments

Mon Jun  4 10:42:04 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* io.c (pipe_open): follow up changes in r35889.

	* process.c (proc_spawn_n): now uses char ** instead of VALUE *.

	* process.c (rb_spawn_process): prog is now VALUE of String, not char *.

Mon Jun  4 06:12:43 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* marshal.c (r_object0): remove old warning for _alloc.

Mon Jun  4 04:24:06 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* marshal.c: experimental test aborted.
	* complex.c: ditto.
	* rational.c: ditto.
	* include/ruby/intern.h: ditto.

Mon Jun  4 00:45:18 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_spawn_process): fix for Windows.  not tested.

Mon Jun  4 00:11:51 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_proc_exec_e): don't use ISSPACE().  \f, \r and \v
	  are not word separator in Bourne shell.

Sun Jun  3 23:47:30 2012  Tanaka Akira  <akr@fsij.org>

	* include/ruby/intern.h (rb_exec_arg): remove argc and argv fields.
	  add use_shell, argv_str and argv_buf fields.

	* process.c (rb_proc_exec_e): don't split shell command line arguments
	  here to avoid memory allocation in a child process.
	  (rb_exec_fillarg): split shell command line arguments here.
	  (proc_exec_v): takes argv_str argument instead of argv.
	  (rb_proc_exec_ne): removed.
	  (rb_proc_exec_n): removed.
	  (rb_run_exec_options_err): don't initialize the removed fields.
	  (rb_exec_err): don't initialize the removed fields.
	  call proc_exec_v directly instead of rb_proc_exec_ne.
	  (rb_spawn_process): use use_shell field.

Sun Jun  3 21:53:00 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* GPL: update text of GPLv2. [ruby-core:44488] [Bug #6328]
	  http://www.gnu.org/licenses/gpl-2.0.txt

Sun Jun  3 21:22:52 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_exec_getargs): remove rb_exec_arg argument.

Sun Jun  3 21:14:26 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* marshal.c: calls directly rb_{Complex,Rational}_marshal_load().
	  But now disabled. [experimental]
	* complex.c: followed the above.
	* rational.c: ditto.
	* include/ruby/intern.h: ditto.

Sun Jun  3 21:18:17 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_check_argv): use rb_str_new_frozen instead of
	  rb_str_new4.

Sun Jun  3 20:10:52 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_proc_exec_e): extended version of rb_proc_exec() to
	  call execle().
	  (rb_proc_exec): use rb_proc_exec_e().
	  (rb_exec_err): use rb_proc_exec_e().

Sun Jun  3 19:47:18 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* thread.c (vm_living_thread_num): suppress a warning.

Sun Jun  3 17:23:52 2012  Tanaka Akira  <akr@fsij.org>

	* use execve() to preserve environment variables when exec method is
	  failed.  [ruby-core:44093] [ruby-trunk - Bug #6249]

	* include/ruby/intern.h (rb_exec_arg): add envp_str and envp_buf field
	  to store envp of execve().

	* process.c (proc_exec_v): takes envp_str as an argument and use it
	  for execve().
	  (rb_proc_exec_ne): extended version of rb_proc_exec_n().
	  (rb_proc_exec_n): use rb_proc_exec_ne().
	  (rb_proc_exec): follow proc_exec_v() change.
	  (fill_envp_buf_i): new function.
	  (rb_exec_arg_fixup): set up envp_str and envp_buf.
	  (save_env_i): removed.
	  (save_env): removed.
	  (rb_run_exec_options_err): don't modify environment variables.
	  (rb_exec_err): use rb_proc_exec_ne().

Sun Jun  3 16:33:58 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* marshal.c: revert r35879 "now marshal_{load|dump} are external."

	* complex.c (nucomp_marshal__{dump,load}): should use rb_marshal_{dump,load}.

	* rational.c (nurat_marshal__{dump,load}): ditto.

Sun Jun  3 14:13:58 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: checks whether the object is frozen or not.

Sun Jun  3 14:00:51 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* complex.c: wrote Complex#_dump and Complex::load.  But now
	  disabled (due to compatibility) [experimental].

	* rational.c: wrote Rational#_dump and Rational::load. ditto.

Sun Jun  3 10:23:32 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* complex.c (nucomp_marshal_load): [ruby-core:45394]
	* rational.c (nurat_marshal_load): ditto.

Sun Jun  3 03:15:46 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* regparse.c (onig_number_of_names): suppress a warning.

Sun Jun  3 01:36:52 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_backtrace.c: change names.
	  (1) Class name: RubyVM::FrameInfo -> RubyVM::Backtrace::Location.
	  (2) Method name: RubyVM::FrameInfo.caller ->
	      Kernel.caller_locations.
	  (3) Instance methods of
	      RubyVM::FrameInfo (RubyVM::Backtrace::Location)
	      (3-1) name -> label
	      (3-2) basename -> base_label (basename is confusing with
		    File.basename)
	      (3-3) line_no -> lineno (We have already similar name
		    File#lineno, commented by kou [ruby-dev:45686]).
	      (3-4) filename -> path.
	      (3-5) filepath -> absolute_path.
	      (3-5) iseq -> removed (we will make other APIs to access iseq
		    and other information of frame for debugging).

	* test/ruby/test_backtrace.rb: apply above changes.
	  And apply comment from kou [ruby-dev:45686].

Sun Jun  3 00:49:11 2012  Koichi Sasada  <ko1@atdot.net>

	* common.mk: fix to build vm_backtrace.c only itself (vm_backtrace.c
	  is no longer included from vm.c).  I hope this separation reduce
	  compile time of vm.c.

	* internal.h: ditto.

	* vm.c, vm_core.h, vm_dump.c, vm_eval.c: ditto.

	* vm_eval.c: some functions (callee, etc) moved to vm_backtrace.c.

Sun Jun  3 00:20:53 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_backtrace.c: added.  Separate backtrace related functions to
	  this file.

	* vm.c, common.mk: ditto.

Sat Jun  2 18:09:02 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/ipaddr.rb: Inhibit zero-filled octets in an IPv4 address in
	  all platforms. [ruby-dev:45671]

	* lib/ipaddr.rb: Allow the x:x:x:x:x:x:d.d.d.d form not limited to
	  IPv4 mapped/compatible addresses.  This change also makes it
	  possible for the parser to understand IPv4 mapped and compatible
	  IPv6 addresses in non-compressed form.

	* lib/ipaddr.rb: Stop exposing IPSocket.valid*? methods which were
	  only usable on non-IPv6-ready platforms.

Sat Jun  2 16:59:00 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* string.c (rb_enc_cr_str_buf_cat): don't reset coderange as unknown.
	  the condition 'ptr_a8 && str_cr != ENC_CODERANGE_7BIT' means not
	  unknown, str is also ASCII-8BIT because str_encindex == ptr_encindex,
	  and nont (str_cr == ENC_CODERANGE_UNKNOWN) and
	  str_cr != ENC_CODERANGE_7BIT means str_cr is valid because ASCII-8BIT
	  can't be broken. [ruby-dev:45688] [Bug #6509]

Sat Jun  2 07:04:48 2012  Eric Hodel  <drbrain@segment7.net>

	* doc/re.rdoc (Performance):  Replaced incorrect example of reducing
	  backtracking through anchoring with reduced backtracking through a
	  range.  [ruby-trunk - Bug #6525]

Sat Jun  2 06:34:15 2012  Eric Hodel  <drbrain@segment7.net>

	* doc/re.rdoc (Performance):  Removed useless sample output from final
	  performance example and switched from #match to #=~ for consistency.
	  [ruby-trunk - Bug #6524]

Fri Jun  1 09:30:53 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* object.c (class_or_module_required): extract check for class or
	  module.

Fri Jun  1 08:50:47 2012  Eric Hodel  <drbrain@segment7.net>

	* array.c:  Updated Array documentation formatting.  Patch by Zachary
	  Scott.  [ruby-trunk - Feature #6517]

Fri Jun  1 06:57:10 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/dl/lib/dl/struct.rb (DL::CStructEntity#set_ctypes):  Refactored
	  #set_ctypes using newer ruby features to simplify its implementation.
	* test/dl/test_c_struct_entry.rb (class DL):  Test to verify
	  refactoring.

Fri Jun  1 06:40:25 2012  Eric Hodel  <drbrain@segment7.net>

	* object.c (Init_Object):  Restored Kernel documentation based on
	  Pickaxe book documentation.  Patch by Zachary Scott.
	  [ruby-trunk - Feature #6521]

Fri Jun  1 06:29:42 2012  Eric Hodel  <drbrain@segment7.net>

	* object.c (rb_equal):  Let Object be a link in #=== documentation.
	  Patch by Zachary Scott.  [ruby-trunk - Feature #6518]

Thu May 31 09:27:06 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/dl/lib/dl/struct.rb (DL::CStructEntity::size):  Refactored ::size
	  to remove unused variables and simplify using newer ruby features.
	* test/dl/test_c_struct_entry.rb:  Test to validate refactoring

Thu May 31 08:40:34 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/dl/lib/dl/struct.rb (DL::CUnionEntity#set_ctypes):  Refactored
	  #set_types to reuse DL::CUnionEntity::size
	* test/dl/test_c_union_entity.rb:  Added test

Thu May 31 08:20:14 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/dl/lib/dl/struct.rb (DL::CUnionEntity::size):  Fixed ::size to
	  return the size of the union.
	* test/dl/test_c_union_entity.rb:  Test for DL::CUnionEntity::size

Thu May 31 07:45:43 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/dl:  Added documentation.  Patch by Vincent Batts.
	  [ruby-trunk - Bug #6496]

Wed May 30 16:30:00 2012  Kenta Murata  <mrkn@cookpad.com>

	* ext/bigdecimal/lib/bigdecimal/jacobian.rb,
	  ext/bigdecimal/lib/bigdecimal/newton.rb:
	  fix documentation comments.
	  Patch by alperakgun from github.com/shyouhei/ruby/pull/8

Wed May 30 16:20:00 2012  Kenta Murata  <mrkn@cookpad.com>

	* ext/bigdecimal/lib/bigdecimal/jacobian.rb (Jacobian#dfdxi):
	  fix jacobian to get stuck in an infinite loop when a solution is not
	  found due to forget to increment nRetry counter.
	  Patch by alperakgun from github.com/shyouhei/ruby/pull/8

Wed May 30 10:58:31 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* time.c (utc_offset_arg): utc offset can be precision in seconds.
	  e.g. old Europe/Lisbon (c.f. [ruby-dev:40066])

Wed May 30 06:20:29 2012  Eric Hodel  <drbrain@segment7.net>

	* error.c (exc_set_backtrace):  Updated documentation to indicate
	  set_backtrace allows a string as well as an array of strings.
	  [ruby-trunk - Bug #6501]

Tue May 29 17:28:20 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* strftime.c (rb_strftime_with_timespec): support GNU extension triple
	  colons modifier.  [EXPERIMENTAL]

	* strftime.c (rb_strftime_with_timespec): check conversion with locale
	  modifier.

	* strftime.c (rb_strftime_with_timespec): colons are valid only for
	  'z' and must come just before it.

Mon May 28 16:56:55 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Runner#_prepare_run): StatusLineOutput
	  needs job_status to be :replace.

Mon May 28 13:35:33 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* common.mk (do-install-*): fix dependencies.  based on the patch by
	  nagachika at [ruby-dev:45683].  [Bug #6506]

Mon May 28 12:03:04 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (obj_free): doesn't free a method table if it doesn't
	  exist. [ruby-dev:44436]
	* test/ruby/test_gc.rb (class TestGc): added the test case for
	  this issue.

Sun May 27 23:37:48 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/bm_vm1_lvar_init.rb: added.
	  This benchmark measures a initialize time of non-used variable.

	* benchmark/bm_vm1_lvar_set.rb: added.
	  This benchmark measures a local variables initialization time.

	* benchmark/bm_vm2_bigarray.rb: added.
	  This benchmark mesures a big array literal creation time.

	* benchmark/bm_vm2_bighash.rb: added.
	  This benchmark mesures a big hash literal creation time.

	* benchmark/bm*: change notation "i=0" to "i = 0".

Sun May 27 13:33:26 2012  Koichi Sasada  <ko1@atdot.net>

	* benchmark/driver.rb: fix to continue benchmarks when
	  an error is occurred.

Sun May 27 11:27:50 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Runner#_prepare_run): fix operator
	  precedence, so that platform and TERM should be counted.

Sun May 27 10:02:33 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_strftime.c: allows %Ok and %Ol.

Sun May 27 09:29:20 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: modified doc.

Sat May 26 19:04:34 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: added description.

Sat May 26 18:14:57 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_strftime.c: reduced the code.

Sat May 26 18:08:59 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* time.c: modified doc.
	* ext/date/date_core.c: ditto.

Sat May 26 17:05:45 2012  Koichi Sasada  <ko1@atdot.net>

	* vm.c (backtrace_*): change type of lev and n from size_t to int.
	  Also set type of rb_backtrace_t#backtrace_size to int.
	  A patch from nobu.

	* vm_eval.c: ditto.

Sat May 26 16:26:30 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* file.c (realpath_rec): UNC prefix does not end with path separator,
	  so new separator is needed after it.

Sat May 26 15:29:22 2012  Koichi Sasada  <ko1@atdot.net>

	* test/ruby/test_backtrace.rb (test_caller_lev):
	  decrease recursion size.

Sat May 26 13:50:48 2012  Koichi Sasada  <ko1@atdot.net>

	* NEWS: add Kernel#caller's second argument.

Sat May 26 13:40:29 2012  Koichi Sasada  <ko1@atdot.net>

	* vm.c (RubyVM::FrameInfo): add a class to access each frame
	  information.  You don't need to parse strings from caller().
	  FrameInfo has the following methods:
	    FrameInfo#name: method name, class name, etc with decorations.
	    FrameInfo#basename: name without decorations.
	    FrameInfo#line_no: line number.
	    FrameInfo#filename: file name.
	    FrameInfo#filepath: full filepath.
	    FrameInfo#iseq: iseq if it is iseq frame (defined by ruby script)
	    FrameInfo#to_s: return caller() method style string.
	  RubyVM::FrameInfo.caller(n, lev) returns array of FrameInfo objects.
	  The name "RubyVM::FrameInfo.caller" is long and ambiguous (it is
	  confusing with Kernel::caller() method), we need to change the name
	  before Ruby 2.0 release. Good names or comments are welcome.

	* test/ruby/test_backtrace.rb: add a test for above change.

Sat May 26 12:18:09 2012  Koichi Sasada  <ko1@atdot.net>

	* vm.c (frame_info_to_str): add `break'.

	* vm.c (backtrace_object): remove lev and n parameter.
	  backtrace_object always returns all of backtrace information.

	* vm.c (rb_backtrace_to_str_ary): fix to use backtrace_object().
	  This change improve performance of caller(lev, n).

	* benchmark/bm_vm3_backtrace.rb: added to check above improvement.
	  FYI: measurement on my laptop, 1.9.3p229 needs 5.125 sec,
	  and current trunk only needs 0.299sec.

Sat May 26 11:05:09 2012  Koichi Sasada  <ko1@atdot.net>

	* vm.c (rb_frame_info_t): keep previous ISEQ frame info for CFUNC
	  frame info.  And fix to cache a calculated line_no of ISEQ frame
	  info.

Sat May 26 09:54:53 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_ssl.c: Allow disabling client-side renegotiation.
	* test/openssl/test_ssl.rb: Simple tests for this.

	  Client-side renegotiation is still considered problematic, even
	  when used in the context of secure renegotiation (RI, RFC 5746).
	  The changes allow users to either completely disable client
	  renegotiation on the server, or to specify a maximum number of
	  handshakes allowed in total. The number of total handshakes is
	  counted in a callback set as SSL_set_info_callback. If the
	  maximum number of handshakes is exceeded an error will be raised
	  We do not support renegotiation in the OpenSSL extension, therefore
	  this feature can only be tested externally.
	  The feature is opt-in, the default setting will be to allow
	  unlimited client renegotiation, as was the case before.

Fri May 25 23:38:58 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_ssl.rb: Clarify the intention of errors to be
	  expected. Two errors are possible when connection is refused due
	  to a protocol version that was explicitly disallowed,
	  OpenSSL::SSL::SSLError or Errno::ECONNRESET, depending on the
	  OpenSSL version in use.

Fri May 25 22:19:40 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_ssl.c: Revert r35583
	* test/openssl/test_ssl.rb: Handle ECONNRESET in code instead to avoid
	  the test failing in Ruby CI [1]

	[1] http://u64.rubyci.org/~chkbuild/ruby-trunk/log/20120507T190102Z.log.html.gz#test-all

Fri May 25 19:51:36 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_eval.c (rb_f_caller): caller() method accepts second optional
	  argument `n' which specify how many frames should return.
	  For example, `caller(0, 1)' returns only one frame information
	  which calls caller() method.  If there are less than n frame
	  information, then all frame information are returned.  If n is 0,
	  then always return [].
	  This fix is part of [ruby-dev:42345] [Ruby 1.9-Feature#3917].
	  However, performance and features are not enough.
	  RDoc is also not available.

	* test/ruby/test_backtrace.rb: add a test for above.

Fri May 25 17:05:07 2012  Koichi Sasada  <ko1@atdot.net>

	* vm.c (oldbt_init, vm_backtrace_str_ary): arg->data should
	  be initialized before calling `backtrace_each()'.

Fri May 25 16:11:27 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* trunk/ext/-test-/printf/printf.c: change function names because of
	  conflict with msvcrt.  fixed build error of mswin.

Fri May 25 10:52:52 2012  Koichi Sasada  <ko1@atdot.net>

	* vm.c: refactoring backtrace related functions.
	  (1) unify similar functions (rb_backtrace_each() and
	      backtrace_object()).  backtrace_each() is a unified function.
	      variation:
	      a) backtrace_object(): create backtrace object.
	      b) vm_backtrace_str_ary(): create bt as an array of string.
	      c) vm_backtrace_print(): print backtrace to specified file.
	      d) rb_backtrace_print_as_bugreport(): print backtrace on
	                                            bugreport style.
	  (2) remove rb_backtrace_each().  Use backtrace_each() instead.
	  (3) change the type of lev parameter to size_t.
	      a) lev == 0 means current frame (exception, etc use it).
	      b) lev == 1 means upper frame (caller(0) use it).

	* vm_core.h, vm_dump.c, vm_eval.c: ditto.

	* vm.c (backtrace_object(), vm_backtrace_str_ary()): fix to return a
	  correct size of caller(lev) array.
	  Let n be a "caller(0).size" then ln as caller(lev).size should be
	  (n - lev).  However, the previous implementation returns a wrong
	  size array (ln > n - lev).  [ruby-dev:45673]

	* test/ruby/test_backtrace.rb: add tests for backtrace.

Fri May 25 08:51:39 2012  Eric Hodel  <drbrain@segment7.net>

	* enum.c (enum_count):  Enumerable#count no longer uses #size when
	  counting elements.  Patch by Nobuhiro IMAI.  [ruby-trunk - Bug #6473]

Fri May 25 01:15:39 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* sprintf.c (ruby__sfvextra): [EXPERIMENTAL] use inspect instead of
	  to_s if plus flag is given.

	* vsnprintf.c (BSD_vfprintf): pass sign flag.

Fri May 25 00:37:22 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/rubygems/test_gem_indexer.rb (setup, teardown): save @tempdir
	  to remove it properly.  [Bug #5348]

Thu May 24 23:36:51 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vsnprintf.c (BSD_vfprintf): [EXPERIMENTAL] object representation in
	  rb_enc_vsprintf(). [Feature #5896]

Thu May 24 15:33:01 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_method.c (rb_method_defined_by): removed.
	  nobu pointed out that rb_method_basic_definition_p() is enough
	  for last commit.

	* error.c, eval_error.c: change for above.

Thu May 24 14:30:13 2012  Koichi Sasada  <ko1@atdot.net>

	* vm.c: add RubyVM::Backtrace object (btobj).
	  Backtrace information contains an array consists of location
	  information for each frames by string.
	  RubyVM::Backtrace object is lightweight backtrace information,
	  which contains complete information to generate traditional style
	  backtrace (an array of strings) with faster generation.
	  If someone accesses to backtrace information via
	  Exception#backtrace, then convert a RubyVM::Backtrace object to
	  traditional style backtrace.
	  This change causes incompatibility on marshal dumped binary
	  of Exception.  If you have any trouble on it, please tell us
	  before Ruby 2.0 release.
	  Note that RubyVM::Backtrace object should not expose Ruby level.

	* error.c, eval.c, vm_eval.c: ditto.

	* internal.h: ditto.

	* eval_error.c: fix to skip "set_backtrace" method invocation in
	  creating an exception object if it call a normal set_backtrace
	  method (defined by core).

	* test/ruby/test_settracefunc.rb: fix for above change.

	* vm_method.c (rb_method_defined_by): added.  This function
	  checks that the given object responds with the given method
	  by the given cfunc.

	* benchmark/bm_vm2_raise1.rb, benchmark/bm_vm2_raise2.rb:
	  add to measure exception creation speed. raise1 create
	  exception objects from shallow stack frame.  raise2 create
	  exception objects from deep stack frame.

Thu May 24 12:07:46 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (io_strip_bom): check EOF.  [Bug #6487][ruby-core:45203]

Wed May 23 22:06:14 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/http/header.rb (Net::HTTPHeader#range): fix broken parser of
	  HTTP Range request. Old one can't parse invalid specs and multiple
	  specs correctly.

Wed May 23 10:18:54 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (finish_overlapped_socket, overlapped_socket_io):
	  replace ECONNABORTED to EPIPE in send, sendto and sendmsg to improve
	  BSD socket compatibility.  this change removes a failure on the test
	  of net/ftp.

Wed May 23 05:35:58 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http.rb:  Broke up Net::HTTP into individual files.
	  [ruby-trunk - Feature #6435]
	* lib/net/http/backward.rb:  ditto.
	* lib/net/http/response.rb:  ditto.
	* lib/net/http/exceptions.rb:  ditto.
	* lib/net/http/responses.rb:  ditto.
	* lib/net/http/generic_request.rb:  ditto.
	* lib/net/http/header.rb:  ditto.
	* lib/net/http/request.rb:  ditto.
	* lib/net/http/proxy_delta.rb:  ditto.
	* lib/net/http/requests.rb:  ditto.

Wed May 23 05:15:11 2012  Eric Hodel  <drbrain@segment7.net>

	* class.c (rb_mod_init_copy):  Clear the cached inspect string of a
	  dup'd anonymous module or class.  [ruby-trunk - Bug #6454]
	* test/ruby/test_module.rb (class TestModule):  ditto

Tue May 22 16:49:15 2012  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h: add a data type rb_location_t to store iseq location
	  information.
	  rb_location_t#filename, filepath, name and line_no was moved from
	  rb_iseq_t.  rb_location_t#basename is a new field which is
	  similar to `name' field without any decoration.
	  `name' field contains some decoration such as `block in foo'.
	  `basename' only contains `foo'.
	  rb_iseq_t contains memory object of rb_location_t.

	* iseq.c: setup rb_location_t for each rb_iseq_t memory objects.

	* compile.c, proc.c, vm.c, vm_dump.c, vm_eval.c, vm_insnhelper.c,
	  vm_method.c: support about it.

Tue May 22 00:45:05 2012  Yusuke Endoh  <mame@tsg.ne.jp>

	* struct.c (rb_struct_members): Refactoring.  As Struct#members had
	  returned an array of String, the old code was needed to convert
	  Symbols to Strings.  But it is almost unnecessary because the
	  method now returns an array of Symbols.  A patch by Masaki
	  Matsushita <glass.saga at gmail dot com>  [Feature #6218]
	  [ruby-dev:45451]

Mon May 21 19:20:25 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/ftp.rb (Net::FTP#retrbinary): close only if conn is not nil
	  because transfercmd may fail and return nil.

	* lib/net/ftp.rb (Net::FTP#retrlines): ditto.

Mon May 21 15:10:28 2012  Akinori MUSHA  <knu@iDaemons.org>

	* ext/syslog/syslog.c: Classify constants and macros into several
	  sub-modules. (Syslog::Priority, Syslog::Level, Syslog::Option
	  and Syslog::Macros)

	* ext/syslog/syslog.c (mSyslog_inspect): Use rb_sprintf().

	* ext/syslog/syslog.c (mSyslog_inspect): Make sure self is a
	  module before calling rb_class2name().

Mon May 21 12:44:11 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* .travis.yml (install): It seems tcl/tk is skipped in Travis
	  CI. Trying to fix the situation.

Mon May 21 12:11:25 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enc/depend (ENCOBJS): add dependencies.

	* enc/make_encmake.rb (target_encodings): extract dependencies.

Mon May 21 11:26:17 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/ftp.rb (Net::FTP#transfercmd): rescue shutdown.

Sun May 20 23:00:11 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/extmk.rb (extmake): reopen $stdout to NULL, since setting
	  $stdout cannot affect child processes.

Sun May 20 21:36:39 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* enc/shift_jis.c (code_to_mbclen): return
	  ONIGERR_INVALID_CODE_POINT_VALUE if the code is invalid.

	* string.c (tr_next): increment character until the code
	  is a valid character. [ruby-dev:45652] [Bug #6450]

Sun May 20 12:25:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* Makefile.in (LIBRUBY_SO): link EXTSOLIBS too.

	* ext/extmk.rb (mf.macro): use EXTSOLIBS instead of SOLIBS to get rid
	  of discard libraries needed by default.  [Bug #6462]

Sat May 19 19:04:38 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/extmk.rb (command_output): ENCOBJS is needed for all linked
	  ruby, if --disable-shared and --with-static-linked-ext.

	* ext/extmk.rb (command_output): dmyext is needed as DLDOBJS if no
	  static linked extensions.

	* Makefile.in, common.mk (PROGRAM): no extension libraries.

	* common.mk (build-ext): pass macros for libruby.so.

	* ext/extmk.rb (command_output): link extension libraries and encoding
	  libraries into libruby.so, not ruby executable.

	* ext/extmk.rb (command_output): fold long macro lines.

	* Makefile.in (LIBEXT): add macro.

	* configure.in (ENCOBJS, EXTOBJS): use LIBEXT, not hardcoded suffix.

	* Makefile.in (LIBRUBY_A): fix typo.  re-applying r35242.

Sat May 19 04:46:53 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* ext/openssl/extconf.rb: Use Logging::message instead of message.
	* ext/zlib/extconf.rb: ditto.

Fri May 18 18:13:44 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (MakeMakefile#configuration): keep space at end of
	  OUTFLAG and COUTFLAG.  [ruby-dev:45650]

Fri May 18 17:39:42 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread_pthread.c (rb_thread_create_timer_thread): Added error
	  check when failing fcntl(). [Bug #6147] [ruby-dev:45364]

Fri May 18 17:41:00 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/extmk.rb (extmake): link archives only, skip script only
	  extension libraries.

Fri May 18 17:25:33 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* cont.c: bump up fiber machine stack size when running on 64bit
	  arch. [Bug #6344] [ruby-dev:45554]

Fri May 18 15:20:56 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/uri/generic.rb (URI::Generic.build): duplicate args before adding
	  new items. (don't change arguments)

	* lib/uri/generic.rb (URI::Generic.build): use URI::Generic::COMPONENT
	  if this method is called from URI::Generic.

	* lib/uri/generic.rb (URI::Generic.build2): escape only if the item is
	  a String.

	* lib/uri/generic.rb (URI::Generic.build2): use DEFAULT_PARSER because
	  it doesn't have parser method. [Bug #6420]

Fri May 18 15:54:07 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* ext/zlib/extconf.rb: Use an exception instead of bare puts.

Fri May 18 15:53:05 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* ext/psych/extconf.rb: Use an exception instead of bare abort.

Fri May 18 15:51:32 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* ext/fiddle/extconf.rb: Use an exception instead of bare abort.

Fri May 18 15:49:35 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* ext/readline/extconf.rb: Use an exception instead of bare exit.

Fri May 18 15:38:11 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* ext/ripper/extconf.rb: Use an exception instead of bare
	  Logging.message.

Fri May 18 15:23:06 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* ext/openssl/extconf.rb: Clarify a message when hit Apple
	  OpenSSL issue.

Fri May 18 15:14:32 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* ext/extmk.rb: Show a message when extconf.rb raised an exception.
	* ext/openssl/extconf.rb: Use exception raising instead of message
	  and/or abort. We want to display error message to console _and_
	  logging into mkmf.log.

Fri May 18 06:14:07 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/syslog/lib/syslog/logger.rb:  Added Syslog::Logger which was
	  ported from the SyslogLogger gem.  [ruby-trunk - Feature #5096]
	* NEWS:  ditto.
	* test/syslog/test_syslog_logger.rb:  ditto.

Fri May 18 01:28:21 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/parser.c (transcode_string): fix encoding index names.
	  Thanks markizko for reporting.

Thu May 17 23:03:58 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in: fix function name to be checked, to initialize
	  rb_thread_cond_t properly.

	* thread_pthread.c (native_cond_initialize, native_cond_destroy):
	  fix macro name.

Thu May 17 12:53:07 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* thread.c, thread_pthread.c: Moved pthread-specific preprocessor
	  hacks to thread_pthread.c

Thu May 17 12:18:47 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* io.c: Fix a mistake on merging the patch in the previous commit.

Thu May 17 11:33:07 2012  Yuki Yugui Sonoda  <yugui@google.com>

	Imports Ruby's port to NativeClient (a.k.a NaCl).
	Patch by Google Inc. [ruby-core:45073].

	* configure.in (RUBY_NACL): New M4 func to configure variables for
	  NaCl.
	  (RUBY_NACL_CHECK_PEPPER_TYPES): New M4 func to check the old names
	  of Pepper interface types.
	  (BTESTRUBY): New variable to specify which ruby should be run on
	  "make btest". NaCl can run the built binary by sel_ldr, but it need
	  rbconfig.rb. So this variable is distinguished from $MINIRUBY.

	* thread_pthread.c: Disabled some features on NaCl.

	* io.c: ditto.

	* process.c: ditto.

	* signal.c: ditto.

	* file.c: ditto.

	* missing/flock.c: ditto.

	* nacl/pepper_main.c: An example implementation of Pepper application
	  that embeds Ruby.

	* nacl/example.html: An example of web page that uses the Pepper
	  application.

	* nacl/nacl-config.rb: Detects variants of NaCl SDK.

	* nacl/GNUmakefile.in: Makefile template for NaCl specific build
	  process.

	* nacl/package.rb: script for packaging a NaCl-Ruby embedding
	  application.

	* nacl/reate_nmf.rb: Wrapper script of create_nmf.py

	* dln.c (dln_load): Added a hack to call on NaCl.

	* util.c (ruby_getcwd): Path to the current directory is not available
	  on NaCl.

Thu May 17 10:54:58 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/tk/extconf.rb: add -l options to $libs not $LDFLAGS,
	  to be passed to EXTLIBS in exts.mk.

	* enc/encinit.c.erb: use %-lines to adjust indent in the generated file.

	* lib/mkmf.rb (MakeMakefile#have_framework): combine -framework option
	  and its argument with an equal sign not to be separated in merge_libs.

	* ext/tk/extconf.rb: ditto.

	* ext/extmk.rb: EXTLDFLAGS also needs to be passed.

Wed May 16 15:44:22 2012  Yuki Yugui Sonoda  <yugui@google.com>

	* configure.in: Fix an unbalanced quote.

Wed May 16 15:43:10 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/extmk.rb (exts.mk): use double quotes instead of single quotes
	  for commandline because it's not recognized as quotes on Windows.

Wed May 16 15:15:55 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (LD): enclose with single quotes but not double quotes
	  not to expand command substitution.

Wed May 16 14:19:51 2012  Yuki Yugui Sonoda  <yugui@google.com>

	Supports static linking of extensions and encodings again.
	Fixes --with-static-linked-ext.

	Patch by Google Inc. [ruby-core:45073].

	* Makefile.in (ENCOBJS, EXTOBJS): New variables to specify static
	  linked libraries. Also reintroduces extinit.o, introduces encinit.o
	  introduces encinit.o

	* common.mk: Builds static libraries rather than shared objects if
	  specified.

	* configure.in (LD): new substitution.

	* enc/depend: Supports static linked libraries
	  (libencs, libenc, libtrans): New target.

	* enc/encinit.c.erb: new template to generate the initialization of
	  statically linked encodings.

	* enc/make_encmake.rb (--module): new flag to specify whether static
	  or dynamic.

	* transcode_data.h (TRANS_INIT): New macro to get rid of the name
	  collision of encoding initializers and transcoder initializers.

	* ext/extmk.rb: Fixes the behavior on $extstatic is true.

	* lib/mkmf.rb (clean-static): new target to clean up static linked
	  libraries.

	* ruby.c (process_options): New initializes statically linked
	  encodings here.

Wed May 16 14:30:43 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* io.c: fixed a merge mistake of r33878, reported by nobu via IRC.

Wed May 16 06:59:41 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_strftime.c: should also be aware of flags on
	  complex specifier.

Wed May 16 05:11:29 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/to_ruby.rb: fix a bug with string
	  subclass dumping and loading.

	* test/psych/test_array.rb: pertinent tests

	* test/psych/test_string.rb: ditto

Wed May 16 01:31:21 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/to_ruby.rb: convert omap tagged maps to
	  Psych::Omap objects rather than hashes. [Bug #6425]

	* test/psych/test_omap.rb: pertinent test.

Wed May 16 01:15:45 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/yaml_tree.rb: keep a reference to
	  custom coders so that GC does not impact dumped yaml reference ids.

Tue May 15 23:59:48 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Options#setup_options): add --color option.

	* lib/test/unit.rb (Test::Unit::Runner#_prepare_run): defer color code
	  initialization to regard --color option.

Mon May 14 16:28:36 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (f_arglist): should reset lexical states after empty
	  argument list with no parenthesis as well as parenthesized list,
	  so that reserved name method definition work.  [ruby-dev:45626]
	  [Bug #6403]

Mon May 14 00:14:24 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* enumerator.c (lazy_take_func, lazy_take): multiple calls of
	  force/to_a method to Enumerator::Lazy#take should return same
	  results. [ruby-dev:45634] [Bug #6428]

	* test/ruby/test_lazy_enumerator.rb (test_take_recycle): add test for
	  above.

Sun May 13 23:38:31 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* test/ruby/test_io.rb (test_flush_in_finalizer1): don't use IO.for_fd
	  to close IO objects. it create IO object with already closed fd, and
	  cause occasional Errno::EBADF in following tests. [ruby-core:45020]
	  [Bug #6228]

Sun May 13 23:32:16 2012  CHIKANAGA Tomoyuki  <nagachika@ruby-lang.org>

	* test/ruby/test_io.rb (TestIO): revert r35631. it broke the intent of
	  test_flush_in_finalizer1.  [ruby-core:43951] [Bug #6228]

Sun May 13 22:46:36 2012  Tanaka Akira  <akr@fsij.org>

	* ext/etc/etc.c (passwd_ensure): move endpwent() call from
	  passwd_iterate to close /etc/passwd on exception.
	  (group_ensure): move endgrent() call from group_iterate to close
	  /etc/group on exception.

Sun May 13 18:10:43 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_strftime.c: removed unused code and changed the style.

Sun May 13 17:37:56 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_strftime.c: refactored.

Sun May 13 06:40:12 2012  Luis Lavena  <luislavena@gmail.com>

	* test/ruby/test_io.rb (class TestIO):  Disable GC during IO tests to
	  avoid file descriptors being GC'ed. Suggestion by Tomoyuki Chikanaga
	  [ruby-core:43951][Bug #6228]

Sat May 12 07:00:16 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/sdbm/init.c:  Added documentation.  Patch by Justin Collins,
	  cleanup by Zachary Scott.  [ruby-trunk - #6410]

Sat May 12 06:02:03 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/fileutils.rb (cp_r):  Fixed cp_r example.  Patch by TJ Koblentz
	  from pull request #114.  [ruby-trunk - Bug #6411]

Sat May 12 05:23:06 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* thread.c (rb_threadptr_execute_interrupts_common):
	  test_signal_requiring of test/ruby/test_signal.rb fail if the sub
	  process is killed on waiting IO in lex_io_gets in rb_load_file in
	  rb_load_internal in require.
	  This is because
	  (1) the process receive the killing signal in
	      rb_thread_io_blocking_region in rb_read_internal in lex_io_gets.
	  (2) set th->errinfo as INT2FIX(TAG_FATAL) at
	      rb_threadptr_execute_interrupts_common.
	  (3) escape rb_load_file in rb_load_internal and jump to EXEC_TAG()
	      without set loaded as TRUE.
	  (4) call first rb_exc_raise(GET_THREAD()->errinfo); because loaded
	      is FALSE as above. this errinfo should be an exception object
	      but this is INT2FIX(TAG_FATAL).
	  Don't call first rb_exc_raise if GET_THREAD()->errinfo is Fixnum.

Fri May 11 14:23:11 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (primary): begin/end block should be isolated from outside.
	  [ruby-dev:45631][Bug #6419]

Fri May 11 14:09:47 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/bigdecimal/bigdecimal.c (PUSH): to prevent VALUE from GC,
	  must not cast it to unsigned long, which may be shorter than
	  VALUE, and the result can be mere garbage.

Fri May 11 09:51:07 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Runner#failed): no unnecessary
	  newlines if no reports to be displayed.

Thu May 10 10:55:35 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/minitest/test_minitest_mock.rb: Correct requiring path to
	  metametameta.rb.

	* test/minitest/test_minitest_unit.rb: Correct requiring path to
	  metametameta.rb.

Thu May 10 10:18:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (lex_state_name): returns name for lex_state_e, for debug
	  use.

Wed May  9 16:36:01 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (MakeMakefile#pkg_config): check if libs resulted from
	  pkg-config works actually.

Wed May  9 16:01:38 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/imap.rb (decode_utf7, encode_utf7): refactored by
	  Nobuyoshi Nakada, to use String#encode.

Wed May  9 13:26:25 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/rubygems/test_gem_remote_fetcher.rb: skip OpenSSL dependent
	  tests if not available.

Wed May  9 08:09:38 2012  Ryan Davis  <ryand-ruby@zenspider.com>

	* lib/minitest/*: Imported minitest 3.0.0 (r7435)
	* test/minitest/*: ditto
	* test/rubygems/*: Imported fixes for buggy use of assert_match
	  and deprecated assert_block
	UNBUNCH YOUR PANTIES. THE TESTS DO NOT RUN CLEAN ON OSX.

Wed May  9 06:28:59 2012  Eric Hodel  <drbrain@segment7.net>

	* re.c (rb_reg_equal):  Removed incorrect example for Regexp#== with
	  "n" option.  [ruby-talk - Bug #6415]

Wed May  9 06:23:33 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: reverted.

Wed May  9 04:31:26 2012  Masatoshi SEKI  <m_seki@mva.biglobe.ne.jp>

	* lib/rinda/ring.rb (lookup_ring_any): fix Rinda::RingFinger.primary
	  hungs forever. [ruby-talk:395364]

Tue May  8 21:09:00 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* include/ruby/win32.h (FD_SET): change function to macro.
	  To avoid buffer overflow when smaller FD_SETSIZE is used in ext
	  libraries.

	* win32/win32.c (rb_w32_fdset): this function is not used anymore.
	  But we leave this for compatibility.

	* win32/win32.c (rb_w32_select_with_thread): fix SEGV when smaller
	  FD_SETSIZE is used in ext libraries. Dereference of fd_set pointer
	  causes SEGV.

	* test/-ext-/win32/test_fd_setsize.rb(TestFdSetSize): add tests for
	  above.
	* ext/-test-/win32/fd_setsize/depend: ditto.
	* ext/-test-/win32/fd_setsize/extconf.rb: ditto.
	* ext/-test-/win32/fd_setsize/fd_setsize.c: ditto.

	  [ruby-core:44588] [Bug #6352]

Tue May  8 20:44:46 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* io.c (io_unread): fix IO#pos with mode 'r' bug on Windows.
	  If the end of reading buffer is CR, io_unread() needs to unread one
	  more byte.
	  [ruby-core:44874] [Bug #6401]

	* test/ruby/test_io_m17n.rb (TestIO_M17N#test_pos_with_buffer_end_cr):
	  add a test for above.

Tue May  8 13:38:17 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* ext/date/date_core.c: improving introduction in Date/DateTime
	  documentation. patched by Daniel Kaufman via Github.
		https://github.com/ruby/ruby/pull/110

Tue May  8 13:36:02 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (POSTLINK): default to : command to get rid of flag
	  only command, since BSD make does not work with it.

Tue May  8 13:35:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (MiniTest#run_test): remove exact trace and get rid
	  of IndexError, which could caused by modified $@ sometimes.

Tue May  8 11:21:27 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/minitest/metametameta.rb (MetaMetaMetaTestCase#assert_report):
	  support drive letter on Windows.  yes, the original code is metameta.

Tue May  8 08:54:48 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/abbrev.rb:  Fixed typo in abbrev pattern documentation.  Based on
	  patch by Mark Rushakoff.  [ruby-trunk - #6346]

Tue May  8 07:44:18 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/openssl/ossl_ssl.c (ossl_start_ssl): remove useless rb_sys_fail
	  before ossl_raise. this cause a test failure on Linux.
	 http://u64.rubyci.org/~chkbuild/ruby-trunk/log/20120507T190102Z.log.html.gz

Tue May  8 05:35:18 2012  Eric Hodel  <drbrain@segment7.net>

	* object.c (Init_Object):  Added reference to variable.c where
	  public_constant and private_constant documentation lives.  [#6381]

Tue May  8 04:47:44 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Runner#output): prefer local output to
	  get rid of unexpected side effect in test/minitest/metametameta.rb.

	* lib/test/unit.rb (MiniTest#run_test): show the running test in $0.

	* lib/test/unit.rb (Test::Unit::StatusLineOutput): new class to output
	  in status line.

	* test/testunit/test_hideskip.rb (TestHideSkip#test_hideskip):
	  MiniTest#puke now reports Skipped messages only if verbose mode.

	* test/testunit/test_sorting.rb (TestTestUnitSorting#test_sorting):
	  ditto.

	* lib/test/unit.rb (Test::Unit::Runner#puke): modify only result and
	  drop useless reports, not override entirely.

	* bootstraptest/runner.rb (exec_test, show_progress): show rotators
	  and pass/fail counts.

	* sample/test.rb (PROGRESS): refine output.

Tue May  8 02:34:26 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/minitest/unit.rb (assert_match): refix of r35563.
	  r35563 breaks the intention of the original change.
	 https://github.com/seattlerb/minitest/commit/68858105b2eb11c85105ffac5f32b662c59397f3
	* lib/minitest/unit.rb (refute_match): ditto.

Mon May  7 21:19:17 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/json: Merge JSON 1.7.1.
	 https://github.com/flori/json/commit/e5b9a9465c1159fae533bca320d950b772bcb4ac

Mon May  7 22:54:22 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_ssl.c: add support for option flags
	  OpenSSL::SSL::OP_NO_TLSv1_1
	  OpenSSL::SSL::OP_NO_TLSv1_2
	  to allow blocking specific TLS versions. Thanks to Justin Guyett for
	  pointing this out to me.
	* test/openssl/test_ssl.rb: add tests to assert correct behavior when
	  blocking certain versions of TLS/SSL both on server and client side.
	  Also refactored tests to reduce boilerplate code a little.
	* test/openssl/utils.rb: rescue Errno::ECONNRESET for tests where
	  client rejects the connection because a forbidden protocol version
	  was used.

Mon May  7 20:14:15 2012  Tanaka Akira  <akr@fsij.org>

	* lib/securerandom.rb (random_bytes): call to_int method for the
	  argument at first.

Mon May  7 17:54:12 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/minitest/unit.rb (assert_match): replace matcher only if both
	  matcher and obj are String. fix r35541. [Bug #6405]
	  DON'T COMMIT IF YOU CAN'T RUN TEST.
	  FIX AS SOON AS POSSIBLE YOU BREAK TESTS.
	  patched by ayumin.
	  https://github.com/seattlerb/minitest/pull/124

	* lib/minitest/unit.rb (refute_match): ditto.

Mon May  7 13:41:00 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* Makefile.in (PROGRAM), configure.in (POSTLINK): sign built program
	  using RUBY_CODESIGN identity.

Mon May  7 13:03:55 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/imap.rb (body_type_attachment): parse body type
	  "ATTACHMENT". [ruby-core:44849] [Bug #6397]

Mon May  7 10:49:36 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/bigdecimal/bigdecimal.c (Init_bigdecimal): define IDs before
	  they are used. [ruby-core:44900] [Bug #6406]

Mon May  7 10:27:56 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/digest/rmd160/rmd160.c (RMD160_Update): fix for huge data.

Mon May  7 10:23:04 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/fileutils/fileasserts.rb: use assert_equal, assert_match, and so on.

	* test/ruby/enc/test_utf16.rb, test/ruby/enc/test_utf32.rb,
	  test/ruby/test_io_m17n.rb (assert_str_equal): ditto.

	* test/rubygems/test_gem_remote_fetcher.rb
	  (assert_data_from_{server,proxy}): ditto.

	* test/test_pstore.rb (test_thread_safe): ditto.

Mon May  7 10:16:30 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/rubygems/test_gem_installer.rb (TestGemInstaller#test_dir): fix
	  argument order.  expected value must come first.

Mon May  7 09:14:11 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_ssl.c: support TLSv1.1 & TLSv1.2. Add
	  SSLContext#version to inspect the version that was negotiated for
	  a given connection.
	* ext/openssl/extconf.rb: detect TLS 1.1 & 1.2 support.
	* test/openssl/test_ssl.rb: add tests for TLS 1.1 & 1.2 given they
	  are supported by the native OpenSSL being used.

Sun May  6 21:34:29 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (io_encoding_set): suppress warnings. [ruby-dev:45627]
	  this tmp1 is not required after r35538.

	* addr2line.c: suppress warnings.

Sun May  6 18:39:39 2012  Koichi Sasada  <ko1@atdot.net>

	* compile.c (iseq_compile_each): remove unused variable `size'.

Sun May  6 14:50:03 2012  Tanaka Akira  <akr@fsij.org>

	* lib/securerandom.rb: show actual read length in an error message.

Sat May  5 06:43:10 2012  Ryan Davis  <ryand-ruby@zenspider.com>

	* lib/minitest/*: Imported minitest 2.12.1 (r7323)
	* test/minitest/*: ditto

Sat May  5 01:47:33 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* test/zlib/test_zlib.rb (test_inflate): add a test for Zlib.inflate.
	  patched by headius (Charles Nutter). [ruby-core:44859] [Bug #6398]

	* test/zlib/test_zlib.rb (test_deflate): add a test for Zlib.deflate.

Sat May  5 00:53:55 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (parse_mode_enc): remove warnings 'Ignoring internal encoding'.
	  [ruby-core:44455] [Bug #6324]

	* io.c (io_encoding_set): ditto.

Fri May  4 07:19:02 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/rdoc/parser.rb (RDoc.binary?): fix wrong regexp.
	  [ruby-core:44798] [Bug #6393]

Fri May  4 01:33:20 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/rdoc/parser.rb (RDoc.alias_extension): a real file is irrelevant
	  to aliasing.  [ruby-core:44796][Bug #6392]

	* lib/rdoc/parser.rb (RDoc.zip?): non-existent file will not be a zip
	  file.

	* lib/rdoc/parser.rb (RDoc.can_parse_by_name): accept aliased
	  extension file names.

	* lib/rdoc/parser.rb (RDoc.binary?): binary read data may have
	  incomplete multibyte sequence.  [ruby-core:44798][Bug #6393]

Wed May  2 23:55:51 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::RequireFiles#non_options): expand
	  real path to get rid of loading same files via symlinks.

Wed May  2 23:26:04 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* cont.c (rb_fiber_m_transfer): improve sample code in Fiber#transfer
	  documentation. emphasize the difference between transfer and resume.

Wed May  2 23:21:20 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (parser_yylex): allow spaces between lambda arrow and
	  parenthesis.  [ruby-dev:45605][Feature #6390]

Wed May  2 19:06:30 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* cont.c (rb_fiber_m_transfer): Improved Fiber documentation.
	  patched by Anuj Dutta. [ruby-core:44540][Bug #6343]

Wed May  2 13:06:37 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* README, README.ja: reformatted using rdoc markup.  based on the
	  patches by zzak (Zachary Scott) in [Feature #6388].

	* README, README.ja: updated the author's mail address.

Wed May  2 09:46:09 2012  Kouji Takao  <kouji@takao7.net>

	* ext/readline/readline.c (Readline.special_prefixes=)
	  (Readline.special_prefixes): new function. An original patch was
	  created by nagachika. [Feature #5784]

Tue May  1 22:18:45 2012  Kouji Takao  <kouji@takao7.net>

	* ext/readline/readline.c (Readline.pre_input_hook)
	  (Readline.insert_text, Readline.redisplay): new function. An
	  original patch was created by nagachika. [Feature #5785]

Tue May  1 15:46:48 2012  Koichi Sasada  <ko1@atdot.net>

	* common.mk: "$(Q)-..." doesn't work on nmake.

Tue May  1 15:32:10 2012  Koichi Sasada  <ko1@atdot.net>

	* common.mk: replace '@' prefix to '$(Q)' to control build
	  process outputs.

Tue May  1 14:17:59 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/openssl/deprecation.rb (OpenSSL.check_func): check if header is
	  available for macro compatibility.

Tue May  1 10:53:54 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_settracefunc.rb: ignore traces from another threads
	  because Kernel.set_trace_func affects other threads.

Tue May  1 06:04:14 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/digest/sha2/sha2.c (REVERSE32): explicitly cast since unsigned
	  long may be larger than sha2_word32.

	* ext/digest/sha2/sha2.c (SHA{256,512,384}_{Final,End}): should clear
	  whole content, not pointer size.

	* ext/digest/*/extconf.rb: use pkg_config to use same library with
	  openssl.  [ruby-core:44755][Bug #6379]

	* ext/openssl/deprecation.rb: extract check for broken Apple OpenSSL.

Tue May  1 05:02:30 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (optflags): disable unsafe optimizations.
	  [ruby-core:44679][Bug #6370]

Mon Apr 30 23:36:49 2012  Tanaka Akira  <akr@fsij.org>

	* lib/fileutils.rb (copy_metadata): use File.lchown and File.lchmod to
	  update meta data of symlinks.

Mon Apr 30 23:05:53 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* test/ruby/test_continuation.rb (tracing_with_set_trace_func): don't
	  call Continuation from other threads. [ruby-dev:45596] [Bug #6382]

Mon Apr 30 20:10:04 2012  Tanaka Akira  <akr@fsij.org>

	* ext/zlib/extconf.rb: detect z_crc_t type which will be defined
	  since zlib-1.2.7.

	* ext/zlib/zlib.c (rb_zlib_crc_table): use z_crc_t if available.

Mon Apr 30 09:02:15 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* ext/openssl/lib/openssl/ssl.rb: add hostname to "hostname does not
	  match server cert." error. patched by Wes Morgan via Github.
	  https://github.com/ruby/ruby/pull/122

Mon Apr 30 04:43:53 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/json/yaml_events.rb: implicit styles should not
	  be changeable for JSON events.

Sun Apr 29 06:12:02 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (assoc, parser_yylex): add syntax to splat keyword hash.
	  [ruby-core:44591][Feature #6353]

	* compile.c (compile_array_): generate keyword splat insns.

	* vm.c (m_core_hash_merge_kwd): merge keyword hash into intermediate
	  hash.  leftward argument is prior currently.

Fri Apr 27 12:34:23 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/dl/cfunc.c (rb_dlcfunc_call): should convert a Bignum value to
	  unsigned long long on Win64.
	  [ruby-core:44636][Bug #6364] reported by raylinn@gmail.com (ray linn)

Fri Apr 27 10:58:17 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/readline/test_readline.rb (setup): avoid affected by user's
	  inputrc file.  [ruby-dev:45584][Bug #6357]

Fri Apr 27 01:45:05 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* thread.c (rb_threadptr_execute_interrupts_common):
	  handle timer_interrupt only on the first loop for the case to avoid
	  the infinite loop like following case:
	  * there is 2 Ruby threads (3 pthreads)
	  (1) main thread is waiting at gvl_yield:112 (native_cond_wait)
	  (2) sub thread works
	  (3) sub thread waits at gvl_yield:133 (native_mutex_unlock)
	  (4) main thread works
	  (5) main thread goes to gvl_acquire_common
	  (6) main thread call rb_wakeup_timer_thread
	  (7) timer thread set timer interrupt to the main thread
	  (8) main thread works
	  (9) main thread waits at gvl_acquire_common:64 (native_cond_wait)
	  (10) sub tread works
	  (11) set sub thread as the current thread
	  (12) run Ruby thread
	  (13) ...100ms
	  (14) sub thread goes to rb_threadptr_execute_interrupts_common
	  (15) sub thread call rb_thread_schedule_limits
	  (16) sub thread call gvl_release_common
	  (17) sub threads waits at gvl_yield:121 (native_cond_wait)
	  (18) main threads works
	  (19) main thread back to gvl_yield
	  (20) set main thread as the current thread
	  (21) main thread call gvl_yield
	  (22) main thread waits at gvl_yield:112 (native_cond_wait)
	  As described above, the main thread can't escape from
	  rb_threadptr_execute_interrupts_common.
	  See extended memo: http://bugs.ruby-lang.org/projects/ruby-trunk/wiki/R35480_ExtendedMemo

Fri Apr 27 07:15:07 2012  Tanaka Akira  <akr@fsij.org>

	* ext/socket/socket.c (sock_s_pack_sockaddr_un): support the longest
	  path in sockaddr_un, really.
	  reported by nagachika.
	 http://d.hatena.ne.jp/nagachika/20120426/ruby_trunk_changes_35474_35476

Thu Apr 26 12:28:06 2012  Tanaka Akira  <akr@fsij.org>

	* ext/socket/raddrinfo.c (init_unix_addrinfo): support the longest
	  path in sockaddr_un.
	  (inspect_sockaddr): ditto.
	  (addrinfo_mdump): ditto.
	  (addrinfo_mload): ditto.
	  (rsock_unixpath_str): new function.
	  (rsock_unixpath): removed.
	  (rsock_unixaddr): use rsock_unixpath_str.

	* ext/socket/socket.c (sock_s_pack_sockaddr_un): support the longest
	  path in sockaddr_un.
	  (sock_s_unpack_sockaddr_un): ditto.
	  (sock_s_gethostbyaddr): unused variable removed.

	* ext/socket/unixsocket.c (rsock_init_unixsock): support the longest
	  path in sockaddr_un.

	* ext/socket/rubysocket.h (rsock_unixpath_str): declared.
	  (rsock_unixpath): removed.

	* test/socket/test_unix.rb: comment out test_nul because abstract unix
	  sockets may contain NULs.

Thu Apr 26 01:32:33 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* test/optparse/test_summary.rb (test_summary_containing_space): add
	  test for r35467. OptionParser#to_a shouldn't split banner by spaces.

Wed Apr 25 23:02:46 2012  Tanaka Akira  <akr@fsij.org>

	* ext/socket/raddrinfo.c (init_unix_addrinfo): refine error message
	  format.
	  (addrinfo_mload): show more information on "too long AF_UNIX path"
	  error.
	  (addrinfo_unix_path): ditto for "too short AF_UNIX address" and
	  "too long AF_UNIX address" error.

Wed Apr 25 05:46:12 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/optparse.rb (OptionParser#to_a): split for each lines.
	  [ruby-dev:45568][Bug #6348]

Tue Apr 24 21:57:53 2012  Tanaka Akira  <akr@fsij.org>

	* ext/socket/raddrinfo.c (init_unix_addrinfo): show actual path length
	  when it is too long for Unix socket.

	* ext/socket/unixsocket.c (rsock_init_unixsock): ditto.

	* ext/socket/socket.c (sock_s_pack_sockaddr_un): ditto.

Tue Apr 24 21:43:58 2012  Yusuke Endoh  <mame@tsg.ne.jp>

	* lib/net/smtp.rb (check_continue): raise an error with an explanatory
	  message.  [ruby-core:35854] [Feature #4598]

Tue Apr 24 21:11:31 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/optparse.rb (OptionParser#to_a): should split by end-of-line,
	  and MUST TEST IT, MUST RUN THE TEST, MUST VERIFY BEFORE BACKPORT.
	  [ruby-dev:45568][Bug #6348]

Tue Apr 24 19:59:31 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* enc/euc_jp.c: added EUC-JP-2004 and its alias EUC-JISX0213.
	  [ruby-dev:45571] [Feature #6349]
	  Requested by Kyouhei Yanagita <yanagi@shakenbu.org>.

	* enc/trans/japanese_euc.trans: ditto.

	* enc/trans/JIS/JISX0213-[12]%UCS@{BMP,SIP}.src: JIS X 0213:2004 ->
	  Unicode mapping table from NetBSD.

	* enc/trans/JIS/UCS@{BMP,SIP}%JISX0213-[12].src: Unicode -> JIS X
	  0213:2004 mapping table from NetBSD.

	* tool/transcode-tblgen.rb: added SIP support.

	* test/ruby/test_transcode.rb: tests of above changes.

Tue Apr 24 18:12:13 2012  Koichi Sasada  <ko1@atdot.net>

	* compile.c: fix to output warning when the same literals
	  are available as a condition of same case clause.
	  And remove information ('#n') because we can find duplicated
	  condition with explicit line numbers.
	  [ruby-core:38343] [Ruby 1.9 - Bug #5068]

	* test/ruby/test_syntax.rb: add a test for above.

Tue Apr 24 17:03:51 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (waitpid): need to check the return value of
	  FindChildSlotByHandle() before passing poll_child_status().
	  this fixed a SEGV in test-all.  reported by ko1 via IRC.

Tue Apr 24 16:04:39 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (parser_yylex): EXPR_BEG by keywords is a start point of
	  commands.  [ruby-dev:45563][Bug #6347]

	* parse.y (superclass): ditto for superclass.

	* parse.y (parser_parse_string, parser_here_document): ditto for
	  string interpolation.

	* parse.y (parser_yylex): ditto for singleton class.

Tue Apr 24 15:51:41 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/optparse.rb (OptionParser#to_a): should split by end-of-line
	  [ruby-dev:45568][Bug #6348]

	* lib/optparse.rb (OptionParser#to_a): String#to_a is no longer
	  defined.  [ruby-dev:45568][Bug #6348]

Tue Apr 24 12:46:50 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* hash.c, object.c, struct.c, lib/ostruct.rb: add to_h methods.
	  [Feature #6276]

Tue Apr 24 10:54:34 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/drb/drbtest.rb ({DRbCore,DRbAry}#teardown): cannot pass SIGTERM
	  to another process on Windows, so use SIGINT instead.

Tue Apr 24 00:25:39 2012  Yusuke Endoh  <mame@tsg.ne.jp>

	* thread.c (rb_check_deadlock): refine an error message of deadlock
	  detection.  [ruby-core:44336] [Bug #6288]

Tue Apr 24 00:14:42 2012  Yusuke Endoh  <mame@tsg.ne.jp>

	* parse.y (primary): remove wrong "fixpos" that caused incorrect
	  source_location of blocks.  [ruby-core:42232] [Bug #5930]

	* test/ruby/test_proc.rb: add a test for above.

Mon Apr 23 22:56:08 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/iconv: deprecated.  [Feature #6322]

Mon Apr 23 22:07:00 2012  Tanaka Akira  <akr@fsij.org>

	* test/socket/test_unix.rb (bound_unix_socket): make temporary
	  filename shorter for less possibility of Unix socket path over
	  107 bytes when TMPDIR has long path.

Mon Apr 23 20:35:49 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (szInternalCmds, internal_match, internal_cmd_match):
	  get rid of a segmentation fault with GCC 4.7.0.
	  reported by raylinn@gmail.com (ray linn) at [ruby-core:44505]
	  [Bug #6333], and patched by mame.

	* test/ruby/test_system.rb (TestSystem#test_system): test for it.

Mon Apr 23 20:11:02 2012  Tanaka Akira  <akr@fsij.org>

	* lib/drb/ssl.rb: generate 1024 bits RSA key instead of 512 bits.
	  OpenSSL 1.0.1 rejects 512 bits RSA key for TLS1.2 with SHA512.
	 http://rt.openssl.org/Ticket/Display.html?id=2769&user=guest&pass=guest
	  reported by Bohuslav Kabrda.
	  [ruby-core:43844] [ruby-trunk - Bug #6221]

Mon Apr 23 19:54:33 2012  Tanaka Akira  <akr@fsij.org>

	* test/drb/drbtest.rb: rescue Errno::ESRCH for Process.kill.
	  reported by NARUSE, Yui.  [ruby-dev:45551]

Mon Apr 23 14:16:45 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* .gdbinit (rb_ps_vm): follow st_table's packing change.

Mon Apr 23 10:43:30 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in: disable rubygems not to load rbconfig.rb before
	  fake.rb.  [ruby-core:44492][Bug #6329]

Sun Apr 22 20:26:06 2012  Tanaka Akira  <akr@fsij.org>

	* lib/drb/extservm.rb (DRb::ExtServManager): don't use /bin/sh to
	  invoke service subprocess.  mark detach threads for clean up.

	* test/drb/drbtest.rb: clean up the service subprocess in teardown.

	* test/drb/test_drb.rb: set @service_name for teardown.

	* test/drb/test_drbunix.rb: ditto.

	* test/drb/test_drbssl.rb: ditto.

	[ruby-dev:45547]

Sun Apr 22 07:51:29 2012  Tanaka Akira  <akr@fsij.org>

	* lib/drb/ssl.rb: close accepted TCP socket if SSL accept is failed.
	  [ruby-dev:45541]

Sat Apr 21 14:36:49 2012  Masatoshi SEKI  <m_seki@mva.biglobe.ne.jp>

	* test/rinda/test_rinda.rb: fix sticks on some tests problem
	  [Bug #6272]

Fri Apr 20 12:24:04 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/ssl_certs/AddTrustExternalCARoot.pem:  Removed to avoid
	  conflict with ca-bundle.pem
	* lib/rubygems/ssl_certs/VerisignClass3PublicPrimaryCertificationAuthority-G2.pem:
	  ditto.
	* lib/rubygems/ssl_certs/Entrust_net-Secure-Server-Certification-Authority.pem:
	  ditto.

Fri Apr 20 08:07:06 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems:  Update to RubyGems 1.8.23 which contains security
	  fixes:

	  RubyGems now disallows redirection from HTTPS to HTTP.

	  RubyGems now verifies SSL connections.

	  See https://github.com/rubygems/rubygems/blob/1.8/History.txt for
	  changes since 1.8.22.
	* test/rubygems:  ditto.

Thu Apr 19 16:33:53 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* strftime.c (rb_strftime_with_timespec): fix carry-up bug and
	  overwrite '+' with '-' if negative offset less than a hour.
	  [ruby-core:44447][Bug #6323]

Thu Apr 19 09:39:57 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/-test-/win32/dln/extconf.rb: need import library for ordinal
	  entry even on mingw.  [ruby-core:44441][Bug #6320]

Thu Apr 19 09:35:15 2012  Eric Hodel  <drbrain@segment7.net>

	* random.c (random_init):  Clarify that the default seed is
	  Random.new_seed, not zero.  Based on patch by Roger Pack.
	  [ruby-trunk - Bug #6313]
	* random.c (rb_f_srand):  ditto.

Thu Apr 19 08:59:02 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/curses/curses.c (window_nodelay):  Fixed call-seq of nodelay to
	  include the '='.

	  Improved description window.nodelay=.

Thu Apr 19 08:47:54 2012  Eric Hodel  <drbrain@segment7.net>

	* io.c (io_readpartial):  Document the output buffer parameter is
	  overwritten with the read contents even when non-empty.
	  Patch by yu nobuoka.  [ruby-trunk - Bug #6285]
	* io.c (io_read_nonblock):  ditto.
	* io.c (io_read):  ditto.
	* io.c (rb_io_sysread):  ditto.
	* io.c (argf_read):  ditto.
	* io.c (argf_readpartial):  ditto.
	* ext/stringio/stringio.c (strio_read):  ditto.
	* test/ruby/test_argf.rb (class TestArgf):  Add test for existing
	  behavior of read outbuf.
	* test/ruby/test_io.rb (class TestIO):  ditto.
	* test/stringio/test_stringio.rb (class TestStringIO):  ditto.

Wed Apr 18 22:58:55 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (DOT, DOXYGEN): use AC_CHECK_PROGS instead of
	  AC_CHECK_PROG which needs the third argument.  [ruby-core:44433]
	  [Bug #6316]

	* configure.in (PKG_CONFIG): fix condition to skip older version
	  of pkg-config.  continue in backticks does not affect outside.

Wed Apr 18 13:59:40 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/file.c (INVALID_FILE_ATTRIBUTES): define for old SDK.

Wed Apr 18 10:22:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* strftime.c (rb_strftime_with_timespec): add an interim digit for
	  the timezone offset which is less than an hour.

Wed Apr 18 09:58:29 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/version.rb:  Fixed init_with warning by calling into
	  yaml_initialize (for syck) from psych's init_with

Wed Apr 18 09:03:43 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems:  Update to RubyGems 1.8.22 plus r33517 and r35337 which
	  were ported to the rubygems git repository.

	  See https://github.com/rubygems/rubygems/blob/1.8/History.txt for
	  changes since 1.8.11.

	* test/rubygems:  ditto.

Tue Apr 17 22:18:48 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* strftime.c (rb_strftime_with_timespec): fix padding of time zone
	  offset.  [ruby-dev:43287][Bug #4458]

Tue Apr 17 13:11:14 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* dln.c (rb_w32_check_imported): skip ordinal entries.  based on a
	  patch by phasis68 (Heesob Park) at [ruby-core:44381].
	  [ruby-core:44371][Bug #6303]

Mon Apr 16 18:22:14 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* spec/default.mspec: expand relative path for ruby_exe which uses
	  them with Dir.chdir; it breaks relative paths, for example
	  core/kernel/exec_spec.rb.

Mon Apr 16 16:22:40 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/win32.c (gmtime_r, localtime_r): POSIX compliant reentrant
	  versions.

	* configure.in (RUBY_MSVCRT_VERSION): define on mingw too.

	* win32/Makefile.sub (config.h): prefix RT_VER with RUBY and make
	  more descriptive to get rid of potential conflict.

Mon Apr 16 15:19:39 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (NO_RUBY_VENDOR_LIB): fix missing comma.

Mon Apr 16 12:17:12 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/matrix.rb (hermitian?): Bug fix, patch by George Koehler
	  [Bug #6290] [rubyspec:4b9573d7613]

Mon Apr 16 09:42:50 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* lib/rubygems/remote_fetcher.rb (Gem::RemoteFetcher#download): should
	  use File.identical? to check the identity of the files.
	  this fixed an error of a test on Windows.

Sat Apr 14 12:55:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (UNREACHABLE): gcc 4.4 eliminates unreachable code
	  if -O3 is given.

	* win32/win32.c (child_result): dropped colon.

Sat Apr 14 10:45:18 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/webrick/server.rb (WEBrick::GenericServer#start):
	  partially revert r35315.

	* test/webrick/test_server.rb (test_start_exception):
	  received signal is delivered to the main thread, so it is needed to
	  emulate it. patched by Eric Hodel. [ruby-core:44348] [Feature #6236]

Sat Apr 14 09:35:45 2012  Eric Hodel  <drbrain@segment7.net>

	* variable.c (trace_ev):  Removed "not reached" comment as this line is
	  reached.
	* variable.c (rb_obj_remove_instance_variable):  Replaced "not reached"
	  comment with the UNREACHABLE macro.
	* variable.c (rb_mod_const_missing):  ditto.
	* variable.c (rb_mod_remove_cvar):  ditto.
	* enum.c (first_i):  ditto.
	* string.c (rb_str_aref):  ditto.
	* string.c (str_byte_aref):  ditto.
	* string.c (rb_to_id):  ditto.
	* io.c (rb_io_fmode_modestr):  ditto.
	* io.c (rb_io_oflags_modestr):  ditto.
	* pack.c (num2i32):  ditto.
	* vm_eval.c (rb_method_missing):  ditto.
	* vm_eval.c (rb_f_throw):  ditto.
	* dir.c (dir_read):  ditto.
	* win32/win32.c (child_result):  ditto.
	* struct.c (rb_struct_getmember):  ditto.
	* struct.c (rb_struct_set):  ditto.
	* struct.c (rb_struct_aref_id):  ditto.
	* eval.c (rb_f_raise):  ditto.
	* process.c (rb_f_exit_bang):  ditto.
	* process.c (rb_f_exit):  ditto.
	* process.c (rb_f_abort):  ditto.
	* ext/-test-/iter/break.c (iter_break_value):  ditto.
	* ext/pty/pty.c (pty_check):  ditto.
	* ext/openssl/ossl_pkey.c (ossl_pkey_new):  ditto.
	* ext/readline/readline.c (rb_remove_history):  ditto.
	* ext/stringio/stringio.c (strio_unimpl):  ditto.
	* numeric.c (num_sadded):  ditto.
	* numeric.c (num_init_copy):  ditto.
	* numeric.c (rb_num2ll):  ditto.
	* numeric.c (rb_num2ull):  ditto.
	* vm_insnhelper.c (call_cfunc):  ditto.
	* ruby.c (opt_W_getter):  ditto.
	* bignum.c (rb_big_coerce):  ditto.
	* file.c (rb_f_test):  ditto.

Sat Apr 14 08:38:20 2012  Eric Hodel  <drbrain@segment7.net>

	* encoding.c (rb_enc_codepoint_len):  Use UNREACHABLE to avoid "control
	  reaches end of non-void function" warnings.  [ruby-trunk - Bug #6066]
	* re.c (name_to_backref_number):  ditto.
	* object.c (rb_Float):  ditto.
	* io.c (io_readpartial):  ditto.
	* io.c (io_read_nonblock):  ditto.
	* pack.c (rb_uv_to_utf8):  ditto.
	* proc.c (rb_method_entry_arity):  ditto.
	* vm_method.c (rb_f_notimplement):  ditto.
	* struct.c (rb_struct_aset_id):  ditto.
	* class.c (rb_scan_args):  ditto.
	* process.c (rlimit_resource_type):  ditto.
	* process.c (rlimit_resource_value):  ditto.
	* process.c (p_uid_switch):  ditto.
	* process.c (p_gid_switch):  ditto.
	* ext/digest/digest.c (rb_digest_instance_update):  ditto.
	* ext/digest/digest.c (rb_digest_instance_finish):  ditto.
	* ext/digest/digest.c (rb_digest_instance_reset):  ditto.
	* ext/digest/digest.c (rb_digest_instance_block_length):  ditto.
	* ext/bigdecimal/bigdecimal.c (BigDecimalCmp):  ditto.
	* ext/dl/handle.c (rb_dlhandle_close):  ditto.
	* ext/tk/tcltklib.c (pending_exception_check0):  ditto.
	* ext/tk/tcltklib.c (pending_exception_check1):  ditto.
	* ext/tk/tcltklib.c (ip_cancel_eval_core):  ditto.
	* ext/tk/tcltklib.c (lib_get_reltype_name):  ditto.
	* ext/tk/tcltklib.c (create_dummy_encoding_for_tk_core):  ditto.
	* ext/tk/tkutil/tkutil.c (tk_hash_kv):  ditto.
	* ext/openssl/ossl_ssl.c (ossl_ssl_session_reused):  ditto.
	* ext/openssl/ossl_pkey_ec.c (ossl_ec_key_dsa_verify_asn1):  ditto.
	* ext/openssl/ossl_pkey_ec.c (ossl_ec_point_is_at_infinit):  ditto.
	* ext/openssl/ossl_pkey_ec.c (ossl_ec_point_is_on_curve):  ditto.
	* ext/fiddle/conversions.c (generic_to_value):  ditto.
	* ext/socket/raddrinfo.c (rsock_io_socket_addrinfo):  ditto.
	* ext/socket/socket.c (sock_s_getnameinfo):  ditto.
	* ext/ripper/eventids2.c (ripper_token2eventid):  ditto.
	* cont.c (return_fiber):  ditto.
	* dmydln.c (dln_load):  ditto.
	* vm_insnhelper.c (vm_search_normal_superclass):  ditto.
	* bignum.c (big_fdiv):  ditto.
	* marshal.c (r_symlink):  ditto.
	* marshal.c (r_symbol):  ditto.

Fri Apr 13 17:12:09 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* hash.c (inspect_i): keep string's coderange.

Fri Apr 13 15:26:51 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* hash.c (rb_hash_aset, rb_hash_update, rb_hash_update_by): use
	  st_update() to reduce evaluation of hash values.

Fri Apr 13 15:17:36 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/webrick/server.rb (WEBrick::GenericServer#stop): fix r35303;
	  this method is to deny new connections, not shutdown yet.

	* lib/webrick/server.rb (WEBrick::GenericServer#start):
	  re-raise exception only when the exception is Interrupt (^C).

Thu Apr 12 19:51:45 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: added some notes.

Wed Apr 11 17:16:49 2012  Koichi Sasada  <ko1@atdot.net>

	* compile.c (compile_array, compile_array_):
	  Divide big array (or hash) literals into several blocks and
	  concatenate them.  There was a problem that a big array (hash)
	  literal causes SystemStackError exception (stack overflow)
	  because VM push all contents of the literal onto VM stack to
	  make an array (or hash).  To solve this issue, we make several
	  arrays (hashes) and concatenate them to make a big array (hash)
	  object.  [ruby-dev:37701] [Bug #982]

	* compile.c (iseq_compile_each, setup_args): use modified
	  compile_array.

	* vm.c (m_core_hash_from_ary, m_core_hash_merge_ary,
	  m_core_hash_merge_ptr): added for above change.

	* id.c (Init_id), parse.y: add core method ids.

	* bootstraptest/test_literal.rb: add simple tests.

	* bootstraptest/test_eval.rb: remove rescue clause to catch
	  SystemStackError exception.

	* test/ruby/test_literal.rb: add tests to check no stack overflow.

Thu Apr 12 07:10:37 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/uri/generic.rb (module URI):  URI now downcases the scheme to
	  follow RFC 2396 section 3.1.  [ruby-trunk - Feature #4551]
	* test/uri/test_generic.rb (class URI):  Test for above

Thu Apr 12 06:15:44 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/net/protocol.rb (module Net):  Added ReadTimeout to match
	  OpenTimeout.  ReadTimeout is now raised by rbuf_fill instead of
	  Timeout::Error to help users distinguish what type of timeout
	  occurred.  [ruby-trunk - Feature #6088]
	* lib/net/pop.rb (module Net):  Updated documentation for ReadTimeout
	  and OpenTimeout.
	* lib/net/http.rb (module Net):  ditto
	* lib/net/smtp.rb (module Net):  ditto
	* lib/net/telnet.rb (module Net):  Net::ReadTimeout is now raised in
	  waitfor to match Net::Protocol.
	* test/net/http/test_http.rb:  Updated Timeout::Error expectation to
	  Net::ReadTimeout.
	* test/net/ftp/test_ftp.rb:  ditto

Thu Apr 12 05:27:01 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/webrick/server.rb (module WEBrick::GenericServer):  A server
	  will now continue only when a StandardError subclass is raised.  For
	  other exception types the error will be logged at the fatal level and
	  the server will safely stop.  Based on a patch by Alex Young.
	  [ruby-trunk - Feature #6236]
	* test/webrick/test_server.rb:  Test for new exception handling
	  behavior.  Join the server thread instead of busy-waiting for it to
	  shut down to remove race conditions.

Thu Apr 12 03:50:44 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit:Runner::Worker#_run_suites):
	  call GC.start before running the test suites.

Wed Apr 11 22:31:19 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (rb_check_id_cstr): new function to check if ID is
	  registered with NUL-terminated C string.

	* sprintf.c (rb_str_format): avoid inadvertent symbol creation.

Wed Apr 11 20:28:36 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* io.c (rb_io_eof): use eof() instead of io_fillbuf(). It's because
	  io_unread() doesn't work properly when reading CRLF with read(length)
	  and mode 'r'.
	  [ruby-core:44189][Bug #6271]

	* test/ruby/test_io_m17n.rb (TestIO_M17N#test_read_crlf_and_eof):
	  test for above.

Wed Apr 11 07:38:33 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/digest/sha2/lib/sha2.rb (Digest#block_length):  Fixed method name
	  in documentation examples.  Patch by naleski via
	  https://github.com/ruby/ruby/pull/115

Wed Apr 11 07:33:13 2012  Eric Hodel  <drbrain@segment7.net>

	* pack.c (pack_pack):  Warn when an invalid character is found in the
	  format string when $VERBOSE is true.  [ruby-trunk - Feature #5219]
	* pack.c (pack_unpack):  ditto
	* test/ruby/test_pack.rb (class TestPack):  Test for warnings on
	  invalid format characters.

Wed Apr 11 06:11:10 2012  Eric Hodel  <drbrain@segment7.net>

	* string.c (rb_str_tr):  Documented use of \ to escape characters.
	  [ruby-trunk - Bug #6161]
	* string.c (rb_str_count):  ditto

Wed Apr 11 05:14:51 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/abbrev.rb:  Clarified that Abbrev.abbrev returns a Hash instead
	  of an Array.  Patch by Andrei Bocan.  [ruby-trunk - Bug #6107]

Wed Apr 11 03:02:24 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* ext/ripper/lib/ripper/sexp.rb: fix spelling. patched by
	  Jonathan Hinkle via https://github.com/ruby/ruby/pull/116

Tue Apr 10 19:07:04 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (rb_enc_raise): new function to raise an exception with
	  the message in the given encoding.  patched by now (Nikolai
	  Weibull) at [ruby-core:41160].  [Feature #5650]

Tue Apr 10 18:19:32 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/http.rb (Net::HTTP#send_request_with_body_stream):
	  use IO.copy_stream for requests using body_stream.
	  patched by Eric Wong. [ruby-core:40898] [Feature #5605]

Tue Apr 10 16:53:21 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread_pthread.c: add prototype declarations for older Mac OS X.
	  [ruby-core:43376][Bug #6170]

Tue Apr 10 15:35:21 2012  Koichi Sasada  <ko1@atdot.net>

	* compile.c (iseq_set_sequence): show a hint if there are duplicated
	  "when" clauses.  [ruby-core:41502] [ruby-trunk - Feature #5716]

Tue Apr 10 09:57:00 2012  Eric Hodel  <drbrain@segment7.net>

	* string.c (rb_str_split_m):  Documented behavior of split on the empty
	  string.  [ruby-trunk - Feature #3575]

Tue Apr 10 09:48:31 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/zlib/zlib.c (rb_deflate_s_deflate):  Fixed ruby example replacing
	  NO_FLUSH with FINISH.  [ruby-trunk - Bug #6273]

Mon Apr  9 23:10:26 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/win32.c (isUNCRoot, winnt_stat): support long UNC.
	  [ruby-core:30623][Feature #3399]

Mon Apr  9 15:16:01 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (string_content, parser_yylex): count brace nesting to
	  dispatch embexpr_end.  [ruby-core:43775][Bug #6211]

Mon Apr  9 13:06:58 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* hash.c (rb_hash_set_default_proc): Accept nil, patch by Run Paint
	  [Feature #4234]

	* test/ruby/test_hash.rb: test for above.

Mon Apr  9 08:01:15 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_strftime.c: gets the value with range() consistently.
	* ext/date/date_strftime.c (range): now just replaces the given item.

Mon Apr  9 06:58:01 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* complex.c (nucomp_expt): [ruby-core:44170].

Mon Apr  9 02:52:03 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* complex.c (nucomp_expt): the result of f_complex_new2 may be a fixnum
	  with mathn. [ruby-core:44170] [Bug #6267]

Sun Apr  8 22:46:01 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/json/generator/generator.c (generate_json_bignum):
	  add RB_GC_GUARD.
	 http://fb.rubyci.org/~chkbuild/ruby-trunk/log/20120407T210301Z.diff.html.gz

Sun Apr  8 07:26:40 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/webrick/utils.rb (WEBrick::Utils::TimeoutHandler): get keys
	  and fetch values from it to prevent @timeout_info's error
	  "can't add a new key into hash during iteration".

Sun Apr  8 06:51:57 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (io_unread): cast as long the value for extra_max.
	  [ruby-core:44137] [Bug #6257]

Sun Apr  8 06:46:48 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/webrick/httpresponse.rb (WEBrick::HTTPResponse#send_body_io):
	  use readpartial to get data even if the response is streaming data and
	  each data is smaller than @buffer_size.
	  patched by yu nobuoka. [ruby-dev:45471] [Bug #6230]

Sat Apr  7 22:35:36 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* include/ruby/win32.h (rb_w32_aspawn_flags): add the declaration of
	  new function.

	* process.c (enum): add EXEC_OPTION_PGROUP and move the position
	  above for the usage in proc_spawn_n().

	* process.c (proc_spawn_n): add an argument to pass new option
	  `new_pgroup`. The option specifies CREATE_NEW_PROCESS_GROUP flag to
	  CreateProcessW(). This flag is necessary for the usage of
	  Process.kill on the subprocess on Windows.

	* process.c (rb_exec_arg_addopt): ditto.

	* process.c (rb_spawn_process): ditto.

	* process.c (documentation for rb_f_spawn): add documentation for new
	  option `new_pgroup` of spawn.

	* test/ruby/test_process.rb (TestProcess#test_execopts_new_pgroup):
	  add tests for option `new_pgroup`.

	* test/ruby/test_thread.rb
	  (TestThreadGroup#test_thread_timer_and_interrupt):
	  add option `new_pgroup: true` to spawn on Windows. It's needed for
	  Process.kill on a subprocess.

	* win32/win32.c (CreateChild): add an argument to pass
	  dwCreationFlags of CreateProcessW().

	* win32/win32.c (rb_w32_spawn): ditto.

	* win32/win32.c (rb_w32_aspawn_flags): add new function to pass
	  dwCreationFlags.

	* win32/win32.c (rb_w32_aspawn): refactor to move the content to
	  rb_w32_aspawn_flags().
	  [ruby-core:43245][Bug #6131]

Sat Apr  7 22:32:00 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/ruby/test_thread.rb
	  (TestThreadGroup#test_thread_timer_and_interrupt): skip on Windows.
	  Process.kill cannot kill a subprocess if CREATE_NEW_PROCESS_GROUP
	  flag is not specified in a call to CreateProcessW().

	* win32/win32.c (CreateChild): revert the usage of
	  CREATE_NEW_PROCESS_GROUP flag for compatibility.
	  [ruby-core:43245][Bug #6131]

Sat Apr  7 10:28:40 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb: bumping up psych version to match release.
	* ext/psych/psych.gemspec: ditto

Sat Apr  7 02:07:00 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/parser.c: fall back to any encoding if the external
	  encoding is wrong.  [ruby-core:44163]
	* test/psych/test_encoding.rb: fix test

Fri Apr  6 16:24:24 2012  Martin Duerst  <duerst@it.aoyama.ac.jp>

	* struct.c (documentation for rb_struct_members_m):
	  fix 'array of strings' to 'array of symbols'
	  [ruby-core:44152][Bug #6264]

Fri Apr  6 14:27:04 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* Makefile.in ($(LIBRUBY_A)): fix typo.

Thu Apr  5 13:26:15 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* missing/alloca.c (xmalloc, xfree): use ruby version, not
	  depending on RUBY_LIB_PREFIX.  [ruby-dev:45492][Bug #6255]

Wed Apr  4 13:06:39 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/ftp/ftp.rb (Net::FTP#close): restore original read_timeout.

Wed Apr  4 10:33:31 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/ftp/ftp.rb (Net::FTP#close): ignore exceptions from shutdown and
	  read on closing.

Wed Apr  4 01:48:35 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/ftp/ftp.rb (Net::FTP#close): close socket more gracefully.

	* lib/ftp/ftp.rb (Net::BufferedSocket#shutdown): added.

	* test/net/ftp/test_ftp.rb (FTPTest#create_ftp_server): wait socket
	  with shutdown and read.

Tue Apr  3 19:00:52 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/net/ftp/test_ftp.rb (FTPTest#create_ftp_server): should wait
	  a little before closing socket because if the client call
	  Net::FTP#getmultiline the socket is suddenly closed by the server in
	  the getline loop.

Tue Apr  3 18:33:38 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* process.c (setreuid, setregid): suppress warnings.
	  [ruby-core:43374][Bug #6169]

Tue Apr  3 10:18:27 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enumerator.c (inspect_enumerator): suppress uninitialized
	  instance variable warnings.  [ruby-dev:45449][Bug #6214]
	  patched by no6v (Nobuhiro IMAI).

Mon Apr  2 13:25:08 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/optparse/ac.rb: autoconf-like options.

Mon Apr  2 10:34:00 2012  eregon  <eregontp@gmail.com>

	* string.c (rb_str_start_with, rb_str_end_with): raise an error if
	  an argument is not convertible to a String.
	  [ruby-core:40623][Bug #5536]

Mon Apr  2 03:35:25 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/webrick/server.rb (WEBrick::GenericServer): close socket only if
	  the socket is not closed yet.

Sun Apr  1 23:03:18 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/ftp.rb (Net::BufferedSocket): should delegate send() to @io
	  for Net::FTP#abort and Net::FTP#status.

Sun Apr  1 00:41:56 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/ftp.rb: fixed the domain name in examples.

Sat Mar 31 21:39:45 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/webrick/utils.rb (WEBrick::Utils::TimeoutHandler): dup to prevent
	  @timeout_info's "can't add a new key into hash during iteration".

Sat Mar 31 14:22:59 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* hash.c (hash_default_value): extract from rb_hash_aref(), to be
	  shared with rb_hash_shift(), so that overriding Hash#default
	  will be respected.

Sat Mar 31 14:16:02 2012  Sokolov Yura (funny-falcon)  <funny.falcon@gmail.com>

	* hash.c: do not allocate st_table when it is not necessary.

Sat Mar 31 13:42:39 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/ftp.rb (read_timeout=, open_timeout=): supported timeout.

Sat Mar 31 13:20:40 2012  Sokolov Yura (funny-falcon)  <funny.falcon@gmail.com>

	* hash.c: remove unnecessary checks for Qundef in hash iterations.
	  since hash use st_foreach_check for iterations, such checks are
	  needless.

Sat Mar 31 12:05:01 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_x509cert.c: Fix doc typo.

Sat Mar 31 10:13:24 2012  Sokolov Yura (funny-falcon)  <funny.falcon@gmail.com>

	* st.c (st_foreach_check, st_foreach): remove ancient check.  This
	  check are from initial ordered hash commit when first entry were
	  created with entry->fore = entry->back = entry.

	* st.c (st_delete): use real_entries in st_delete for packed tables

Sat Mar 31 07:53:23 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* st.c (st_foreach_check): remove the entry by replacing with never
	  when ST_DELETE.

	* hash.c (st_foreach_safe): since table is not for VALUE, Qundef is
	  not special value, so use 0 instead.  therefore this function can be
	  applied to only st_table which 0 is invalid as keys, e.g., IDs.

	* hash.c: Qundef cannot be passed from st_foreach_check().

	* hash.c, marshal.c, object.c, variable.c: fix callback argument types
	  of iterators.

Thu Mar 29 23:50:15 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* st.c (st_update): pass pointer to key to the callback function.

Thu Mar 29 16:36:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* st.c (st_update): add existing parameter to the callback function.

Thu Mar 29 16:35:32 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (terminal_width, del_status_line, put_status):
	  extract as methods.

Thu Mar 29 10:20:18 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_pkcs7.c: fix crash when parsing garbage data.
	* test/openssl/test_pkcs7.rb: assert correct behavior for it.
	  Thanks to Matt Venables for reporting the issue.
	  [ruby-core:43250][Bug #6134]

Thu Mar 29 10:16:05 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* thread_win32.c (TIME_QUANTUM_USEC): 10ms(= old setting) [experimental]
	  cf. [Bug #6098]

Thu Mar 29 10:12:12 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* thread.c (rb_threadptr_execute_interrupts_common): use defined
	  TIME_QUANTUM_USEC instead of a magic number.  there is no meanings
	  to use different values for checking interval of interruption and
	  thread switching limits.
	  cf. [Bug #6098]

Thu Mar 29 09:26:17 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_x509cert.rb: exclude test that fails when issuing
	  a certificate with RSA signature and DSS1 digest for earlier
	  OpenSSL versions when used in conjunction with OpenSSL 1.0.1.
	  Thanks, Vit Ondruch, for reporting the issue.
	  [ruby-core:42949][Bug #6089]

Thu Mar 29 08:25:35 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* NEWS: add note about unified behavior of encoding nil values in
	  instances of OpenSSL::ASN1::ASN1Data.

Thu Mar 29 07:45:36 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_asn1.c: raise TypeError when trying to encode nil
	  values for Primitive instances.
	* test/openssl/test_asn1.rb: Assert consistent behavior when
	  encoding nil values: Primitives raise TypeError, Constructives
	  raise NoMethodError.
	  Fixes [ruby-core:43009][Bug #6102]

Wed Mar 28 16:39:59 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* process.c (obj2uid, obj2gid): allow strings as input user/group id.
	  [ruby-core:40923][Feature #5610]

Wed Mar 28 15:06:18 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* marshal.c (r_symreal): default to ASCII-8BIT for non-ascii symbols,
	  otherwise it should be converted to US-ASCII in rb_intern_str() if
	  possible.  [ruby-core:43762][Bug #6209]

Wed Mar 28 08:44:24 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb: updating version to match gem
	* ext/psych/psych.gemspec: ditto
	* ext/psych/lib/psych/visitors/to_ruby.rb: fixing deprecation warning

Tue Mar 27 23:44:11 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* io.c (io_unread): fixed memory leak.  report by nagachika via IRC.

Tue Mar 27 22:44:23 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (verconf.h): separate load path specific stuff from
	  config.h.

Tue Mar 27 22:43:40 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/Makefile.sub: fix config.h path to include.

Tue Mar 27 17:08:08 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* win32/win32.c (check_if_dir): fix memory leak.

Tue Mar 27 13:13:51 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* string.c (str_new_empty): should copy also the encoding as an
	  empty substring.  [ruby-dev:45441][Bug #6206]

Mon Mar 26 23:43:04 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/ftp.rb (parse227, parse228, parse229): don't use $~.

Mon Mar 26 23:34:40 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/ftp.rb (parse227, parse228, parse229): don't use local
	  variables defined by named capture for other Ruby implementations
	  such as Rubinius.

Mon Mar 26 23:19:03 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/ftp.rb (parse_pasv_port): refactored.

Mon Mar 26 19:49:49 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* test/net/ftp/test_ftp.rb: add the test, which was forgotten in the
	  previous commit.

Mon Mar 26 19:37:27 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/ftp.rb (parse227, parse228, parse229): refactored.

Mon Mar 26 11:46:23 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (inspect_enumerator): show method arguments of
	  lazy enumerators correctly.

Mon Mar 26 13:51:23 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/win32.c (check_if_dir, check_if_wdir): fix for Visual C++
	  not to use S_ISDIR().  [Feature #2408][ruby-core:26925]

	* ruby.c (load_file_internal): ditto.

Mon Mar 26 11:46:01 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ruby.c (load_file_internal): bail out if the script is a directory.
	  [Feature #2408][ruby-core:26925]

	* win32/win32.c (rb_w32_open, rb_w32_wopen): check if the file is a
	  directory when access denied, to set errno to EISDIR.

Sun Mar 25 18:13:14 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* string.c (tr_setup_table): fix multiple non latin argument for
	  non latin (over 256 characters) tr-like methods.
	  [ruby-core:43371] [Bug #6167]

Sun Mar 25 00:46:06 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator (lazy_initialize): set the instance variable "receiver"
	  to include the receiver to the return value of inspect on a lazy
	  enumerator directly created by Enumerator::Lazy.new.

	* enumerator (RETURN_LAZY): don't set the instance variable "receiver".

Sat Mar 24 23:59:00 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator (enumerator_inspect): include the original receiver and
	  method name of Enumerator::Lazy in the result of inspect.
	  [ruby-core:43345] [Bug #6159]

	* enumerator (InitVM_Enumerator): don't use rb_define_alias for
	  some methods such as collect in order to make rb_frame_this_func()
	  return the correct method names.

Sat Mar 24 22:22:18 2012  Sambasiva Rao Suda  <sambasivarao@gmail.org>

	* time.c (time_init_1): Time.new will accept seconds as string or
	  int.  [ruby-core:43569][Bug #6193]

Fri Mar 23 15:12:12 2012  Martin Duerst  <duerst@it.aoyama.ac.jp>

	* transcode.c (documentation for str_encode): Explain
	  that transcoding to the same encoding is a no-op
	  (i.e. no exceptions, no replacements,...).
	  [ruby-core:43557][Bug #6190]

Fri Mar 23 13:19:20 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* bignum.c (rb_str_to_inum): must be ASCII compatible encoding as
	  well as String#hex and String#oct.  [ruby-core:43566][Bug #6192]

	* string.c (rb_must_asciicompat): check if ASCII compatible.

Thu Mar 22 23:14:36 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* transcode.c (str_encode_bang, encoded_dup): if nothing was
	  transcoded, just set encoding but leave coderange unchanged as
	  force_encoding.  [ruby-core:43557][Bug #6190]

Thu Mar 22 22:30:44 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* io.c (static int io_fflush): add the definition.
	  Use it in set_binary_mode_with_seek_cur().

	* io.c (set_binary_mode_with_seek_cur): refactoring to split the
	  content into io_unread(). Fix the possibility of buffer overflow.

	* io.c (io_unread): add new implementation for Windows. Previous one
	  caused invalid cursor position using IO#pos with OS text mode. New
	  one fixes the bug.

	* test/ruby/test_io_m17n.rb
	  (TestIO_M17N#test_pos_dont_move_cursor_position): add a test for
	  above bug.
	  [ruby-core:43497] [Bug #6179]

Thu Mar 22 19:55:08 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/win32.c (rb_w32_fstat, rb_w32_fstati64): convert FILETIME
	  to time_t directly, not to be affected by TZ unnecessarily.

	* win32/win32.c (unixtime_to_filetime): convert time_t to FILETIME
	  simply.

Thu Mar 22 13:43:31 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/openssl/ossl_pkey_rsa.c (rsa_generate): fix argument type.
	  [Bug #6094]

Thu Mar 22 11:14:10 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_io.rb (TestIO#test_pos_with_getc): updated.
	  see [ruby-core:43550]

Wed Mar 21 17:57:57 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* regcomp.c: Merge Onigmo 3d855b30d574536d3ae600260208c6624ae4791c.
	  [Bug#6143] [Bug#6144] [Bug#6145]

Wed Mar 21 17:01:55 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_io.rb (TestIO#test_pos_with_getc): added.
	  see [Bug #6179][ruby-core:43518]

Mon Mar 19 17:18:51 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (lazy_flat_map_func): convert the block value to
	  Array if it doesn't respond to each.  [ruby-core:43334]
	  [Bug #6155]

Mon Mar 19 16:34:14 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enum.c (zip_i): variadic argument needs explicit cast on the
	  platforms where VALUE is longer than int.

Mon Mar 19 15:36:41 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (enumerable_lazy): add an example of take and first
	  to the documentation.  [ruby-core:43344] [Bug #6158]
	  add the description of the behavior when a block is given to zip
	  or cycle.

Mon Mar 19 15:20:53 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* compile.c (iseq_specialized_instruction): DRY and replace chain
	  of if-else with switch for special instructions.  based on a
	  patch by Vasfed.  https://github.com/ruby/ruby/pull/105

Mon Mar 19 15:05:54 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* test/test_pty.rb: same as r29280, skip tests when PTY allocation
	  failed (that's not our fault).

Sun Mar 18 23:21:17 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c (aligned_free): fix condition for free.  memalign() and
	  posix_memalign() are not defined together normally.

Sun Mar 18 18:31:45 2012  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* gc.c (aligned_malloc, aligned_free): added fallback implementations
	  for platforms like OSX Leopard.

Sun Mar 18 17:17:48 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* bignum.c (rb_big_pow): estimate result bit size more precisely.
	  [ruby-core:30735][Feature #3429]

Sun Mar 18 17:17:36 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c (free_method_entry_i): method entry may be in
	  unlinked_method_entry_list.  [ruby-core:43383][Bug #6171]

Sun Mar 18 15:27:31 2012  Tanaka Akira  <akr@fsij.org>

	* compile.c: typo fix by Run Paint Run Run.
	  [ruby-core:28368] [Bug #2824]

Sun Mar 18 10:01:02 2012  Kazuki Tsujimoto  <kazuki@callcc.net>

	* lib/profiler.rb: support calling singleton methods of
	  an instance of BasicObject.

Sat Mar 17 06:56:58 2012  Eric Hodel  <drbrain@segment7.net>

	* object.c:  Fix indentation of Class#inherited example.

Sat Mar 17 01:46:05 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* string.c (trnext): fix bug with string ending with '\\'.
	  [ruby-dev:45374][Bug #6160]

	* test/ruby/test_string.rb (TestString#test_delete): test for
	  above.

Fri Mar 16 20:06:24 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* string.c (trnext): should advance char-wise.
	  [ruby-core:43335][Bug #6156]

Fri Mar 16 17:42:05 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (block_append_gen): fix unreachable warning line number.
	  should warn at the code, not jump.

Fri Mar 16 17:33:08 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enum.c (enum_take): allocate buffer array before iteration, as well
	  as enum_first did.

	* enum.c (enum_first): remove duplication.

Fri Mar 16 14:43:18 2012  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* load.c (ruby_init_ext): don't free the given pointer itself.
	  It is not guaranteed even that the pointer is on heap.

Fri Mar 16 14:37:57 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_eval.c (rb_mod_module_eval): fix the documentation of
	  class_eval to mention class variable lookup.  [ruby-core:40649]
	  [Bug #5544]

Fri Mar 16 14:27:11 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* vm_eval.c (rb_mod_module_eval): fix the documentation of
	  class_eval to mention constant lookup.  [ruby-core:41718]
	  [Bug #5777]

Fri Mar 16 14:10:45 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/imap.rb (initialize): raise Net::IMAP::Error when the
	  connection is closed without a greeting response.
	  [ruby-core:40938] [Bug #5616]

Fri Mar 16 13:50:12 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/imap.rb (rfc822_text): ignore [] after RFC822.
	  [ruby-core:40945] [Bug #5620]

Fri Mar 16 12:00:42 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_insnhelper.c (argument_error): use line number at the beginning
	  of lambda, not the first code of its body.
	  [ruby-core:43314][Bug #6151]

	* iseq.c (rb_iseq_first_lineno): constified.

Fri Mar 16 11:20:07 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (lazy_take): don't enumerate an extra value.
	  [ruby-dev:45370] [Bug #6152]

Fri Mar 16 06:30:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enumerator.c (lazy_zip_func): variadic argument needs explicit cast
	  on the platforms where VALUE is longer than int.

	* enumerator.c (lazy_init_iterator): no need to check overflow twice.

Fri Mar 16 05:47:09 2012  Eric Hodel  <drbrain@segment7.net>

	* enumerator.c (lazy_init_iterator):  Fix type error (int vs long).

Thu Mar 15 23:13:36 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enum.c (rb_enum_values_pack): rename from enum_values_pack, and
	  remove static.

	* enumerator.c (lazy_init_iterator, lazy_init_yielder,
	  lazy_select_func, lazy_reject_func, lazy_grep_func): handle
	  multiple values correctly.

	* enumerator.c (lazy_grep): change the behavior when a block is
	  given, to be consistent with Enumerable#grep.

Thu Mar 15 19:12:31 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (lazy_zip): rescue StopIteration returned by
	  Enumerator#next.

Thu Mar 15 18:19:53 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (lazy_zip, lazy_cycle): Enumerator::Lazy#{zip,cycle}
	  should be eager when a block is given, to be consistent with
	  Enumerable#{zip,cycle}.

Thu Mar 15 17:45:27 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (InitVM_Enumerator): renamed Enumerable::Lazy to
	  Enumerator::Lazy.

Thu Mar 15 16:37:38 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (enumerable_lazy): added cycle to the documentation.

Thu Mar 15 15:37:42 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (parser_yylex): fix warning line number.

Thu Mar 15 15:19:38 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enumerator.c (lazy_cycle): check argument number overflow before
	  creating temporary array.

Thu Mar 15 15:04:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* util.c (ruby_strtod): no need to check same digit for hexdigit
	  twice.  [ruby-dev:45363][Bug #6146]

	* parse.y (sym_check_asciionly): check ascii compatibility before
	  scanning for code range.

	* parse.y (intern_str): set to us-ascii if ascii only.
	  [ruby-dev:45363][Bug #6146]

	* file.c (ruby_enc_find_basename): allow NULL as alllen.
	  [ruby-dev:45363][Bug #6146]

Thu Mar 15 14:49:31 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* string.c (rb_str_conv_enc_opts): default to original encoding.

Thu Mar 15 13:47:17 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* hash.c (env_str_new, rb_f_getenv, env_fetch): use rb_str_conv_enc()
	  instead of rb_str_encode() to simplify the code.

Thu Mar 15 12:44:50 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c, include/ruby/win32.h (rb_w32_ugetenv): new API to
	  accept and to return UTF-8 strings.

	* win32/win32.c (rb_w32_getenv): follow above change.

	* win32/win32.c (rb_w32_get_environ): returns UTF-8 environment area.

	* hash.c (env_str_new, rb_f_getenv, env_fetch): follow above changes.
	  [Bug #5570] [ruby-core:40737]

Thu Mar 15 10:57:27 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (lazy_cycle): add Enumerable::Lazy#cycle.

Thu Mar 15 10:31:40 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/test_arity.rb (TestArity#err_mess): use assert_raise.

Thu Mar 15 07:03:52 2012  Eric Hodel  <drbrain@segment7.net>

	* vm_eval.c (check_funcall):  Raise ArgumentError if respond_to?
	  requires more than three arguments. [Bug #6000]

	* test/ruby/test_object.rb (class TestObject):  Test for respond_to?
	  requiring more than three arguments.

Thu Mar 15 06:08:06 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* include/ruby/intern.h: Add rb_check_arity, rb_error_arity [#6085]

	* array.c: Use rb_check_arity / rb_error_arity

	* class.c: ditto

	* enumerator.c: ditto

	* eval.c: ditto

	* file.c: ditto

	* hash.c: ditto

	* numeric.c: ditto

	* proc.c: ditto

	* process.c: ditto

	* random.c: ditto

	* re.c: ditto

	* signal.c: ditto

	* string.c: ditto

	* struct.c: ditto

	* transcode.c: ditto

	* vm_eval.c: ditto

	* vm_insnhelper.c: ditto & implementation of rb_error_arity

	* test/ruby/test_arity.rb: tests for above

Thu Mar 15 06:08:05 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* vm_insnhelper.c: improve number of arguments error in case of
	  optional parameters (issue #6085)

	* include/ruby/intern.h: define UNLIMITED_ARGUMENTS

	* test/ruby/test_arity.rb:  test for above

Thu Mar 15 00:58:04 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (enumerable_lazy): fix the documentation of
	  Enumerable#lazy.

Wed Mar 14 22:01:06 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (lazy_init_iterator): break when Qundef is returned
	  to make obj.drop(3).take(2) work properly.

	* enumerator.c (lazy_take_while): add Enumerable::Lazy#take_while.

	* enumerator.c (lazy_drop): add Enumerable::Lazy#drop.

	* enumerator.c (lazy_drop_while): add Enumerable::Lazy#drop_while.

	* enumerator.c (InitVM_Enumerator): add Enumerable::Lazy#force as an
	  alias of to_a.

Wed Mar 14 19:28:40 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (lazy_take): add Enumerable::Lazy#take.

Wed Mar 14 18:40:36 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c: use long for array indices.

Wed Mar 14 18:25:18 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c: moved the comment of StopIteration.

Wed Mar 14 17:55:29 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* numeric.c (flodivmod): must go through the same pass if HAVE_FMOD or
	  not.  this is a bugfix of r35013.

Wed Mar 14 16:41:55 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/test_tmpdir.rb (TestTmpdir#test_world_writable): skip on Windows.

Wed Mar 14 15:09:23 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* numeric.c: fix flodivmod for cornercases [Bug #6044]
	  add ruby_float_mod

	* insns.def (opt_mod): use ruby_float_mod

	* internal.h: declare ruby_float_mod

	* test/ruby/test_float.rb: tests for above

	* test/ruby/envutil.rb: create helper assert_is_minus_zero

Wed Mar 14 10:44:35 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enumerator.c (lazy_grep_func): should use === instead of =~, as
	  well as Enumerable#grep

Wed Mar 14 08:15:54 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (lazy_flat_map_func): use each for non-Array objects.

Wed Mar 14 08:06:35 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (lazy_zip): add Enumerable::Lazy#zip.

	* enumerator.c (lazy_lazy): just returns self.

Wed Mar 14 07:48:36 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c (datetime_s_now): [ruby-core:43256].

Tue Mar 13 22:00:14 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* compile.c (iseq_set_arguments): keyword rest arg without keyword args.

	* node.c (dump_node): dump kw_rest_arg too.

	* parse.y (block_param, f_arg): more kwrest patterns.
	  [ruby-core:42455][Bug #5989]

	* parse.y (new_args_gen): no extra kw_rest_arg if no keyword rest arg.

Tue Mar 13 15:17:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (block_param, f_args): add rules for the case arguments
	  begin with kwrest.  [ruby-core:42455][Bug #5989]

Tue Mar 13 12:37:53 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (io_encoding_set): always warn if external encoding and internal
	  encoding are identical. [ruby-core:40727] [Bug #5568]

Tue Mar 13 12:37:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c: add ObjectSpace::WeakMap.  [ruby-dev:44565][Bug #5350]

	* lib/weakref.rb: use WeakMap instead of _id2ref.

Tue Mar 13 10:59:48 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* tool/rbinstall.rb (prepare): skip if basedir is not defined.
	  [ruby-core:39135][Bug #5238]

	* tool/rbinstall.rb (CONFIG.[]): check for mandatory
	  configurations.

Tue Mar 13 00:09:18 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (enumerable_lazy): added documentation.

Mon Mar 12 20:19:25 2012  Tanaka Akira  <akr@fsij.org>

	* lib/tmpdir.rb (Dir::tmpdir): test the current directory suitable for
	  temporary directory.

Mon Mar 12 20:08:16 2012  Tanaka Akira  <akr@fsij.org>

	* lib/fileutils.rb (fu_have_symlink?): specify TypeError for rescue
	  clause.

Mon Mar 12 19:23:13 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* encoding.c (rb_find_encoding): new function find encoding from
	  arbitrary object as a pointer to rb_encoding, and return NULL if
	  not found.

	* io.c (io_encoding_set): just warn unsupported encodings, but not
	  exception.  [ruby-core:40726] [Bug #5567]

Mon Mar 12 19:03:32 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_method.c (Init_eval_method): respond_to? and
	  respond_to_missing? are public.

Mon Mar 12 14:56:52 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* node.h (NEW_YIELD), parse.y (new_yield_gen): array-values flags
	  has been already obsolete.  patch by Thomas Enebo.
	  [ruby-core:41929][Bug #5847]

Mon Mar 12 12:44:33 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_method.c (Init_eval_method): copy basic methods to Exception.
	  [ruby-core:40287][Bug #5473]

Mon Mar 12 10:13:36 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* eval_jump.c (rb_exec_end_proc): remember the latest exit status.
	  [ruby-core:43173][Bug #5218]

Mon Mar 12 07:33:12 2012  Tanaka Akira  <akr@fsij.org>

	* lib/tmpdir.rb: update document for changing
	  FileUtils.remove_entry_secure to FileUtils.remove_entry.

	* NEWS: add incompatibility note for lib/tmpdir.rb.

Mon Mar 12 07:19:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/tmpdir.rb (Dir.tmpdir): should not use world-writable but
	  non-sticky directory.

	* lib/tmpdir.rb (Dir.mktmpdir): check the parent directory.

Mon Mar 12 07:04:11 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* random.c (Init_Random): removed rb_Random_DEFAULT and register as
	  mark-object instead of global variable.

Mon Mar 12 07:03:32 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* random.c (random_s_rand): ensure default PRNG is re-initialized
	  after fork.  patched by Eric Wong.  [ruby-core:41209][Bug #5661]

Sun Mar 11 23:57:29 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* pack.c (pack_unpack): when unpack('M') occurs an illegal byte
	  sequence, output the "=" character and the following character in
	  the decoded data without any transformation.
	  [ruby-dev:44875] [Bug #5635]

Sun Mar 11 22:32:43 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/json: Merge 164a75c8bd2007d32c4d7665d53140d8fc126dcd.
	  [ruby-core:41917] [Bug #5846]

Sun Mar 11 17:10:04 2012  Shota Fukumori  <sorah@tubusu.net>

	* lib/test/unit.rb: Put error message into STDERR if failed to launch
	  worker (job) process. [ruby-dev:44802] [Bug #5577]

	* lib/test/unit/parallel.rb: If failed to increment_io, exit with code
	  2. [ruby-dev:44802] [Bug #5577]

Sun Mar 11 15:46:45 2012  Shota Fukumori  <sorah@tubusu.net>

	* io.c: fix rdoc of `IO.binwrite` to show same as `IO.write` except
	  it opens file with mode "wb:ASCII-8BIT". [Bug #5782] [ruby-core:42592]

Sat Mar 10 23:52:28 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* st.c: pack tables also generic keys.  patched by Sokolov Yura at
	  https://github.com/ruby/ruby/pull/84

	* st.c: add st_foreach_check for fixing iteration over packed table
	  and st_delete_safe.  patched by Sokolov Yura at
	  https://github.com/ruby/ruby/pull/84

	* st.c: fix packed num_entries on delete_safe.  patched by Sokolov
	  Yura at https://github.com/ruby/ruby/pull/84

Fri Mar  9 14:29:32 2012  Shugo Maeda  <shugo@ruby-lang.org>

	* enumerator.c (lazy_flat_map): add Enumerable::Lazy#flat_map.

Fri Mar  9 06:29:22 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb (load, parse): stop parsing or loading after
	  the first document has been parsed.

	* test/psych/test_stream.rb: pertinent tests.

Fri Mar  9 06:17:05 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb (parse_stream, load_stream): if a block is
	  given, documents will be yielded to the block as they are parsed.
	  [ruby-core:42404] [Bug #5978]

	* ext/psych/lib/psych/handlers/document_stream.rb: add a handler that
	  yields documents as they are parsed

	* test/psych/test_stream.rb: corresponding tests.

Fri Mar  9 00:35:03 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enumerator.c (lazy_initialize, enumerable_lazy): no additional
	  arguments.

Fri Mar  9 00:30:23 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enumerator.c: add Enumerable#lazy. based on the patch by
	  Innokenty Mikhailov at <https://github.com/ruby/ruby/pull/101>
	  [ruby-core:37164] [Feature #4890]

Fri Mar  9 00:25:59 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enumerator.c (enumerator_each, generator_each): pass arguments to
	  the block with yielder.

Fri Mar  9 00:25:02 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* array.c (rb_ary_cat): new function to concat objects into array.

Thu Mar  8 16:44:02 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* .gdbinit (rb_numtable_entry): update for recent refactoring of
	  st_table.

Wed Mar  7 22:41:50 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* lib/xmlrpc/client.rb (module XMLRPC): fix typo.

	* test/xmlrpc/test_client.rb (test_async_call): add test for
	  XMLRPC::Client#call_async to check above fix.

Wed Mar  7 16:30:24 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (rb_load_fail): should honor encoding.

	* load.c (load_failed): ditto.

Wed Mar  7 12:26:25 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (rb_load_fail): use path as a string, not char*.

	* internal.h: (rb_load_fail): moved from ruby/intern.h.

	* ruby.c (load_file_internal): fname cannot be NULL.

Wed Mar  7 08:32:43 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* error.c (rb_loaderror_with_path): Adding the missing file as an
	  instance variable to the LoadError exception.
	  [ruby-core:39079]

	* load.c: call rb_loaderror_with_path so that the missing path is
	  added to the exception.

	* ruby.c: call rb_loaderror rather than raising our own LoadError
	  exception.

	* include/ruby/intern.h: add declaration for rb_loaderror_with_path.

	* test/ruby/test_require.rb: add supporting test for LoadError#path
	  method.

Wed Mar  7 08:28:00 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* lib/xmlrpc/parser.rb: support i8 types. Thanks Stas Kelvich!
	  [ruby-core:29246] [Feature #3090]

	* test/xmlrpc/test_client.rb: supporting test

Wed Mar  7 07:43:29 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* lib/xmlrpc/client.rb: assume servers that do not send a Content-Type
	  header are sending 'text/xml'. Thanks Nathan Leavitt!
	  [ruby-core:41204] [Bug #5660]

	* test/xmlrpc/test_client.rb: supporting test

Wed Mar  7 07:39:28 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* test/xmlrpc/test_client.rb: adding a test for performing an XMLRPC
	  call.
	* test/xmlrpc/data/blog.xml: supporting XML document for the response.

Tue Mar  6 16:24:01 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (parser_tokadd_string): escape simple regexp meta
	  character terminators.

Tue Mar  6 10:11:43 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/io/console/console.c (set_rawmode): clear ECHOE and ECHOK
	  bits too.

	* ext/io/console/console.c (echo_p): ignore ECHOE and ECHOK bits.
	  [ruby-dev:45309] [Bug #6116]

	* ext/io/console/console.c (console_raw): fix rdoc.

	* ext/io/console/console.c (console_set_echo): mentioned about
	  platform dependency.

Tue Mar  6 07:18:10 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* lib/xmlrpc/client.rb: switch net/http post2 calls to modern
	  `request_post` methods.

Tue Mar  6 02:31:20 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/core_ext.rb: only extend Kernel if IRB is loaded
	  in order to stop method pollution.

Tue Mar  6 01:34:19 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (block_call): rules for block_call after block_call.
	  based on a patch by pasberth https://github.com/ruby/ruby/pull/102
	  [ruby-dev:45308][Bug #6115]

Tue Mar  6 01:24:13 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (block_command, block_call): simplified rules.

Mon Mar  5 18:28:35 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* test/ruby/test_regexp.rb (TestRegexp#test_source): fix typo.
	* test/ruby/test_regexp.rb (TestRegexp#test_equal): ditto.

Mon Mar  5 17:11:44 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/syck/lib/syck/rubytypes.rb (Exception.yaml_new): fix bug
	  that causes YAML serialization problem for Exception.
	  Exception#initialize doesn't use visible instance variable for
	  the exception message, so call the method with the message.
	  patched by Jingwen Owen Ou <jingweno AT gmail.com>.
	  http://github.com/ruby/ruby/pull/41

Mon Mar  5 16:50:22 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_sleep.rb (TestSleep#test_sleep_5sec): syntax error.

	* test/ruby/test_sleep.rb (TestSleep#test_sleep_5sec): call uname
	  only on linux because it's a workaround for linux only.

Mon Mar  5 12:44:12 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* st.c (unpack_entries): chain entries directly.  based on a patch
	  by Sokolov Yura <funny.falcon AT gmail.com>.

	* st.c (unpack_entries): use union instead of casted pointer.
	  patched by Sokolov Yura <funny.falcon AT gmail.com>.

	* st.c: use PACKED_ENT and FIND_ENTRY.  patched by Sokolov
	  Yura <funny.falcon AT gmail.com>.

	* st.c (unpack_entries): reallocate bins if packed array size
	  is not same as initial bins size.  based on a patch by
	  Sokolov Yura <funny.falcon AT gmail.com>.

Mon Mar  5 11:51:48 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/bigdecimal/lib/bigdecimal/math.rb: remove description about
	  BigMath#log. patched by Sho Hashimoto [ruby-dev:45307] [Bug #6112]

	* string.c (str_byteslice): fix typo.

Sun Mar  4 23:21:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (parser_tokadd_string): regexp engine doesn't need
	  terminators to be escaped.  [ruby-core:40364][Bug #5484]

Sat Mar  3 22:51:46 2012  Tanaka Akira  <akr@fsij.org>

	* process.c (rb_run_exec_options_err): chdir at last to interpret
	  relative pathnames from the current directory of the parent process.

Sat Mar  3 12:20:44 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_strftime.c: reassigned some variables.

Sat Mar  3 12:12:16 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_{parse,strptime}.c: [ruby-dev:45303].

Sat Mar  3 10:09:21 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* lib/xmlrpc/client.rb (initialize): net/http defaults to 1_2 in 1.8+,
	  so we can safely remove the call to enable it.

Sat Mar  3 08:42:25 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* lib/xmlrpc/client.rb (new2): use URI for uri parsing.
	* test/xmlrpc/test_client.rb: test that query params are passed to the
	  client constructor.

Sat Mar  3 08:20:10 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* lib/xmlrpc/client.rb (new2): raises an ArgumentError on bad
	  arguments.
	* test/xmlrpc/test_client.rb: tests for bad uris

Sat Mar  3 08:08:11 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* lib/xmlrpc/client.rb (new2): fix custom port specification when an
	  SSL uri is used.
	* test/xmlrpc/test_client.rb: tests for XMLRPC::Client.new2

Sat Mar  3 08:03:29 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/syck/rubyext.c (mktime_do): use ISDIGIT().
	  [ruby-core:43060] [Bug #6108]

	* ext/syck/token.c (sycklex_yaml_utf8): cast as unsigned char.
	  [ruby-core:43060] [Bug #6108]

Sat Mar  3 06:57:14 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (ruby_pc): make configurable.  [Bug #6051]

Fri Mar  2 17:49:03 2012  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* .travis.yml (branches): Enable TravisCI for ruby_1_9_3.

Fri Mar  2 17:13:33 2012  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* test/ruby/test_array.rb (test_combination2): Make the test case for
	  [ruby-core:29240] more descriptive.
	  cf. http://bugs.jruby.org/6518

Fri Mar  2 16:37:11 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* file.c (file_expand_path): use wcscasecmp().

Fri Mar  2 16:36:31 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread_pthread.c (native_cond_timeout): cast explicitly to suppress
	  a warning.

Fri Mar  2 16:35:56 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (pipe_open): cmd is no longer used if fork is available.

Thu Mar  1 16:13:18 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* internal.h (rb_file_const, rb_file_load_ok): moved functions for
	  internal use only.

Thu Mar  1 15:40:05 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/makedirs.bat: new command to make intermediate
	  directories, and not to report any errors if the directory
	  already exists.

	* win32/Makefile.sub (MAKEDIRS): enable command extensions.

Thu Mar  1 01:25:43 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* regparse.c (is_onechar_cclass): optimize character class
	  Merge Onigmo 27278c12e6674043cc8affca6507e20e119a86ee.

	* regparse.c (is_onechar_cclass): [bug] unexpected match occurs when a
	  char class contains no char

	* enc/unicode.c (init_case_fold_table): define the sizes of case
	  folding tables in casefold.h

Wed Feb 29 16:11:34 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/Makefile.sub (MAKEDIRS): use mkdir of cmd.exe instead of ruby.
	  [Bug #6103] [ruby-core:43012]

	* win32/README.win32: added a notice about command extension of cmd.exe.

Wed Feb 29 15:39:39 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_io.rb (TestIO#test_readpartial_locktmp): skip on
	  windows because of the platform restriction.

Wed Feb 29 15:38:50 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/memory_status.rb (Memory): syntax error.

Wed Feb 29 13:06:42 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/memory_status.rb: use /proc/self/status if it is in
	  the expected format.

Wed Feb 29 06:14:51 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: reverted r34825.

Tue Feb 28 23:20:01 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* Makefile.in (PLATFORM_DIR): add a variable for `win32` directory.
	* Makefile.in (clean-platform): add new target.
	  It cleans `win32` directory.

	* common.mk (clean): add a dependency for `win32` directory.
	* common.mk (distclean): ditto.
	* common.mk (distclean-platform): add new target.
	  It cleans `win32` directory.
	* common.mk ($(PLATFORM_D)): add new target to make `win32` directory.
	* common.mk (win32/win32.$(OBJEXT)): move win32.o into `win32`
	  directory.
	* common.mk (win32/file.$(OBJEXT)): add new target for win32/file.c.

	* configure.in: move win32.o into `win32` directory and add
	  win32/file.o to MISSING.

	* file.c (file_load_ok, rb_file_load_ok): replace static
	  file_load_ok() with public rb_file_load_ok().
	  It's to link Windows implementation in win32/file.c.
	* file.c (rb_find_file_ext_safe): ditto.
	* file.c (rb_find_file_safe): ditto.

	* win32/file.c (rb_file_load_ok): new file. Add Windows specific
	  optimized implementation of rb_file_load_ok(). We created a
	  separated file to avoid too many #ifdef macro which is unreadable.

	* win32/Makefile.sub (PLATFORM_DIR): add a variable for `win32`
	  directory.
	* win32/Makefile.sub (MISSING): move win32.obj into `win32`
	  directory and add win32/file.obj to MISSING.
	* win32/Makefile.sub (MAKEDIRS): replace MINIRUBY with BASERUBY.
	  It's because miniruby doesn't exist when making `win32` directory.
	* win32/Makefile.sub (clean-platform): add new target to clean `win32`
	  directory.
	* win32/Makefile.sub ({$(srcdir)}.c{}.obj): make it not match
	  win32/file.c to build properly.
	* win32/Makefile.sub (win32/win32.$(OBJEXT)): move win32.obj into
	 `win32` directory.

	  Patch created with Luis Lavena.
	  [ruby-core:42480] [Feature #5999]

Tue Feb 28 20:27:25 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: [ruby-core:42998]

Tue Feb 28 18:47:44 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (io_binwrite, rb_io_syswrite): use shared frozen source
	  strings.

	* io.c (io_fread, io_getpartial, rb_io_sysread): set buffer size
	  after check if readable, which can cause thread switch.
	  [ruby-dev:45297][Bug #6099]

Tue Feb 28 17:16:01 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/time.rb (Time#xmlschema): use strftime specifiers instead of
	  fractional exponential calculation which yields undesirable
	  result.  [ruby-core:42997][Bug #6100]

Tue Feb 28 14:15:29 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/net/protocol.rb: Add OpenTimeout subclass of Timeout::Error
	* lib/net/pop.rb:  Modernize Timeout usage.  Patch by Eric Wong.
	  Use Net::OpenTimeout instead of Timeout::Error.  [Bug #5765]
	* lib/net/http.rb:  ditto
	* lib/net/smtp.rb:  ditto
	* lib/net/telnet.rb:  ditto

Tue Feb 28 13:51:12 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http.rb:  Retry HTTP requests for additional network errors.
	  Introduce OpenTimeout subclass of Timeout::Error.  [Bug #6001]
	* test/net/http/test_http.rb:  Reduce timeout to 0.01s for faster test
	* test/net/http/test_https.rb:  ditto

Tue Feb 28 11:44:49 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (debugflags): check if -ggdb is accepted.
	  [ruby-core:42875][Bug #6080]

Tue Feb 28 10:28:51 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb: default open YAML files with utf8 external
	  encoding. [ruby-core:42967]
	* test/psych/test_tainted.rb: ditto

Mon Feb 27 23:46:09 2012  Yukihiro Matsumoto  <matz@ruby-lang.org>

	* parse.y (opt_bv_decl): allow newline at the end.  [ruby-dev:45292]

Mon Feb 27 20:43:05 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* io.c (rb_io_set_pos): add rdoc about textmode.

	* test/ruby/test_io.rb (TestIO#test_setpos): use binmode.

Mon Feb 27 17:00:15 2012  Akinori MUSHA  <knu@iDaemons.org>

	* string.c (rb_str_crypt): Update rdoc and state that this
	  function is system dependent.  Reviewed by nobu, thanks to
	  @takai.

Mon Feb 27 17:03:20 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/bigdecimal/bigdecimal.c (GetVpValueWithPrec): since methods
	  can be overridden, so should not make an assumption on the type
	  of results.  [ruby-core:42969][Bug #6093]

Mon Feb 27 10:54:20 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (try_cppflags, try_cflags, try_ldflags): replace the
	  target flags if the given flag is accepted.

Mon Feb 27 10:53:44 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/rubygems/test_gem_specification.rb (test_self_from_yaml_syck_default_key_bug):
	  ignore the test for too old versions.

Mon Feb 27 10:53:12 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit.rb (Test::Unit::Runner#puke): skips with no
	  messages should be trivial.

Mon Feb 27 10:50:23 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c, process.c, time.c, ext: use rb_sys_fail_str instead of
	  rb_sys_fail.

Mon Feb 27 10:48:49 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/openssl/extconf.rb: suppress useless deprecation warnings
	  from OpenSSL added by Apple.

Sun Feb 26 23:29:49 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* regparse.c (add_code_range_to_buf0): wrong condition of duplicated
	  warnings.

Sun Feb 26 11:26:44 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* compile.c (iseq_compile_each): call on special object instead of
	  self.  since stabby lambda is a syntax, so it should not be
	  affected by the context.  [ruby-core:42349][Bug #5966]

	* insns.def (send): no special deal for FCALL.  self should be put
	  on TOS instead.

Sun Feb 26 05:35:43 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* error.c (report_bug): use buf and snprintf to avoid consuming stack.
	  [ruby-dev:45272] [Bug #6058]

Sat Feb 25 17:41:19 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb (headers): try ambiguous headers at last.

Sat Feb 25 17:07:15 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/fileutils.rb: use chomp(?/) instead of sub to optimize and avoid
	  to regexping invalid string.

Sat Feb 25 16:18:24 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* complex.c (nucomp_marshal_load): raise error on invalid data.
	  reported by John Firebaugh [ruby-core:42860] [Bug #6076]

Sat Feb 25 14:46:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/dl/dl.c (Init_dl): support intrinsic types, size_t, ptrdiff_t
	  and intptr_t.  [ruby-core:42460][Feature #5992]

	* ext/fiddle/fiddle.c (Init_fiddle): ditto.

	* ext/dl/lib/dl/cparser.rb (DL::CParser#parse_ctype): ditto.

Sat Feb 25 11:08:28 2012  Tanaka Akira  <akr@fsij.org>

	* ext/curses/curses.c (Init_curses): use rb_define_const once for
	  Curses::VERSION.

	* ext/dbm/dbm.c (Init_dbm): ditto for DBM::VERSION.

Sat Feb 25 10:34:22 2012  Tanaka Akira  <akr@fsij.org>

	* ext/curses/curses.c (Init_curses): make Curses::VERSION
	  understandable without context.

	* ext/dbm/dbm.c (Init_dbm): ditto for DBM::VERSION.

Sat Feb 25 07:53:58 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (parser_tokadd_string): insert a backslash only if
	  quoted by single quotes.  [ruby-dev:45281] [Bug #6069]

Sat Feb 25 07:53:49 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* dir.c (dir_inspect), io.c (rb_io_inspect): keep encoding of path.
	  [Bug #6072]

Sat Feb 25 07:53:40 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* dir.c (dir_initialize): keep path in original encoding.

	* error.c (syserr_initialize): prefer the encoding of message over
	  locale.  [ruby-dev:45279][Bug #6071]

Sat Feb 25 06:55:29 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* file.c (utime_internal): fix a variable missed to replace.
	  [ruby-core:42864] [Bug #6077]

Fri Feb 24 18:21:55 2012  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* test/zlib/test_zlib.rb (TestZlibGzipReader#test_encoding): Add
	  encoding testcases for GzipReader#read.  read() emits
	  Encoding.default_external in contrast to read(size) emits BINARY.
	  See also: http://bugs.jruby.org/6208

Fri Feb 24 17:56:39 2012  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* test/ruby/test_literal.rb (TestRubyLiteral#test_special_const):
	  test for https://bugs.php.net/bug.php?id=61095

Fri Feb 24 16:48:29 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* dir.c, file.c, io.c (rb_sys_fail_path): use rb_sys_fail_str.

	* error.c: new functions to deal exceptions with string instances.

	* dir.c, file.c, io.c: use rb_sys_fail_path.

Fri Feb 24 15:49:07 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (__builtin_unreachable): check for clang.
	  [ruby-core:42849]

	* include/ruby/ruby.h (UNREACHABLE): fallback definition.

Fri Feb 24 13:54:33 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/parser.c: prevent a memory leak by protecting calls to
	  handler callbacks.
	* test/psych/test_parser.rb: test to demonstrate leak.

Fri Feb 24 12:07:34 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* lib/net/http.rb: Fix documentation. Patched from Florian Mhun
	  via http://github.com/ruby/ruby/pull/96

Fri Feb 24 11:48:07 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* string.c (rb_str_prepend): Fix documentation for String#prepend.
	  Patched from Franck Verrot via http://github.com/ruby/ruby/pull/98
	  and Andrew Horsman via http://github.com/ruby/ruby/pull/55

Fri Feb 24 10:08:33 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http.rb (Net::HTTP#transport_request):  Fix infinite loop
	  upon EOFError or Errno::ECONNRESET where count is reset to 0.
	* test/net/http/test_http.rb (class TestNetHTTPKeepAlive):  Test for
	  above.

Fri Feb 24 09:05:40 2012  Eric Hodel  <drbrain@segment7.net>

	* complex.c (Init_Complex):  Document Complex::I.  Patch by Sylvain
	  Daubert.  [Feature #5623]

Fri Feb 24 08:52:09 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (parser_tokadd_string, parser_yylex): insert a backslash
	  if the next character is non-ascii.  [ruby-dev:45278] [Bug #6069]

Fri Feb 24 08:13:20 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/profiler.rb:  Add Profiler documentation by Gonzalo Rodriguez.
	  [Bug #5816]

Fri Feb 24 08:08:38 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/parser.c: set parser encoding based on the YAML input
	  rather than user configuration.
	* test/psych/test_encoding.rb: corresponding tests.
	* test/psych/test_parser.rb: ditto
	* test/psych/test_tainted.rb: ditto

Fri Feb 24 08:02:52 2012  Eric Hodel  <drbrain@segment7.net>

	* hash.c (Init_Hash):  Add section on how objects are used as Hash keys
	  and how to use custom classes as Hash keys.

Fri Feb 24 07:36:11 2012  Eric Hodel  <drbrain@segment7.net>

	* object.c (rb_obj_eql):  Improve equality documentation by adding an
	  example of equal? vs == and recommending eql? be aliased to == when
	  overridden.

Fri Feb 24 07:21:15 2012  Eric Hodel  <drbrain@segment7.net>

	* object.c (rb_obj_hash):  Added note that the hash value is not
	  deterministic on Marc-Andre's suggestion.  Expanded description of
	  the purpose of the hash method.  [Bug #6068]

Thu Feb 23 23:01:21 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: unused macro removed.

Thu Feb 23 22:26:53 2012  Tanaka Akira  <akr@fsij.org>

	* test/test_curses.rb: new file.

Thu Feb 23 19:57:56 2012  Tanaka Akira  <akr@fsij.org>

	* ext/curses/rain.rb: trap SIGHUP, SIGINT, SIGQUIT and SIGTERM only.

Thu Feb 23 19:56:48 2012  Tanaka Akira  <akr@fsij.org>

	* signal.c (sig_trap): show signal name on error.

Thu Feb 23 12:21:48 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: use DBM_SUFFIX only to detect header of
	  Berkeley DB.

Thu Feb 23 10:00:18 2012  Eric Hodel  <drbrain@segment7.net>

	* io.c (rb_io_f_sync):  Fix double-negative typo.  [ruby-trunk - #5837]

Thu Feb 23 09:57:21 2012  Eric Hodel  <drbrain@segment7.net>

	* load.c (rb_f_require):  Add note to require for scope of items in the
	  loaded file.  [ruby-trunk - #5910]

Thu Feb 23 03:58:08 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/ostruct.rb (delete_field): Bug fix so previous value is
	  returned. Patch by Nick Recobra [Bug #6063]

Thu Feb 23 02:33:00 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_io_extract_modeenc): fail only if conflicting
	  text/binary modes given explicitly.  [ruby-dev:45268][Bug #6055]

Wed Feb 22 23:27:08 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/iconv/test_option.rb: enabled.  [ruby-core:42802][Bug #6061]

Wed Feb 22 21:45:56 2012  Tanaka Akira  <akr@fsij.org>

	* ext/curses/curses.c: use defined() to suppress a warning.

Wed Feb 22 21:44:29 2012  Tanaka Akira  <akr@fsij.org>

	* ext/curses/extconf.rb: refactored.

Wed Feb 22 20:42:28 2012  Tanaka Akira  <akr@fsij.org>

	* ext/curses/extconf.rb: try to distinguish curses_version is a
	  function or variable.

	* ext/curses/curses.c (Init_curses): refine Curses::VERSION.

Wed Feb 22 19:47:03 2012  Tanaka Akira  <akr@fsij.org>

	* ext/curses/extconf.rb: show the chosen header and library.

Wed Feb 22 19:22:31 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* reverted 34739 for test/date.

Wed Feb 22 19:08:55 2012  Tanaka Akira  <akr@fsij.org>

	* ext/curses/extconf.rb: refactored.

Wed Feb 22 18:44:41 2012  Shota Fukumori  <sorah@tubusu.net>

	* lib/test/unit.rb (setup_options): add option "--retry" as opposite
	  for "--no-retry"

Wed Feb 22 18:34:02 2012  Shota Fukumori  <sorah@tubusu.net>

	* lib/test/unit.rb (setup_options): add option "--show-skip" to
	  cancel "--hide-skip" (-q)

Wed Feb 22 17:36:22 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_io_s_foreach): argument check before making Enumerator.
	  [ruby-dev:31525]

Wed Feb 22 17:07:35 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_io_s_foreach): return enumerator including keyword
	  arguments.  [ruby-dev:45267][Bug #6054]

Wed Feb 22 12:15:16 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: allow llvm-gcc because it work fine with r34278.

Wed Feb 22 10:57:08 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* regparse.c (fetch_token): don't use // comment.

Wed Feb 22 10:32:11 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/mkmf/test_framework.rb: try CoreFoundation framework, than
	  Cocoa which is dependent on QuickTime SDK which has separated
	  since Xcode 4.3.

Wed Feb 22 10:18:05 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* common.mk (test-all, test-ruby): more dependencies.

Wed Feb 22 06:48:55 2012  Eric Hodel  <drbrain@segment7.net>

	* file.c (rb_f_test):  Fix formatting of Kernel#test rdoc.

Wed Feb 22 06:12:15 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: check DBM_SUFFIX for Mac OS X.
	  Its ndbm.h doesn't include db.h.

Wed Feb 22 06:02:42 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/dbm.c (fdbm_initialize): disable Berkeley DB error messages.

	* ext/dbm/extconf.rb: check DBC type for above.

	[ruby-dev:45269]

Tue Feb 21 20:23:47 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* hash.c (rb_any_hash): treat Qundef like as other special constants.

	* hash.c (hash_foreach_iter): fix signature.

Tue Feb 21 19:39:34 2012  Tanaka Akira  <akr@fsij.org>

	* ext/curses/curses.c (Init_curses): use curses_version() for
	  Curses::VERSION.

Tue Feb 21 18:21:25 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c : remove gc_clear_mark_on_sweep_slots() and use
	  rest_sweep() instead of it, because some dead objects might be
	  marked in next the mark phase by false pointers.
	  [ruby-core:42672]

Tue Feb 21 16:08:17 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* proc.c (rb_hash_proc): get wrapped pointer properly.  [Bug #6048]

Tue Feb 21 14:41:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* template/ruby.pc.in: added rubylibprefix, {rubylib,vendor,site}dir
	  and {ruby,vendor,site}archdir.  [ruby-core:42766][Feature #6052]

Tue Feb 21 09:13:25 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* proc.c (method_hash, proc_hash): Fix {Unbound}Method#hash
	  [Bug #6048]. Isolate hash computation for proc

	* internal.h: Declaration for above

	* vm_method.c (rb_method_definition_hash): Computation for
	  hash part of a method definition

	* method.h: Declaration for above

	* test/ruby/test_method.rb: Test for above

Tue Feb 21 02:56:15 2012  Yukihiro Matsumoto  <matz@ruby-lang.org>

	* enumerator.c (enumerator_rewind): update the documentation.
	  fixed: #6053

Mon Feb 20 23:38:35 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* enc/depend: ignore mktable.c because it's not encoding library.
	  [ruby-core:42760] [Bug #6049]

Mon Feb 20 21:40:53 2012  Tanaka Akira  <akr@fsij.org>

	* ext/curses/extconf.rb: fold too long lines.

Mon Feb 20 21:16:48 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* lib/fileutils.rb: revert a line modified accidentally at r34669.
	  This fixes mingw test errors in TestDir_M17N.
	  [ruby-core:42728] [Feature #4970]

Mon Feb 20 21:09:27 2012  Tanaka Akira  <akr@fsij.org>

	* ext/curses/curses.c (Init_curses): define Curses::VERSION.

Mon Feb 20 21:08:00 2012  Tanaka Akira  <akr@fsij.org>

	* ext/curses/extconf.rb: restore $libs and $defs for each
	  header/library choice.

Mon Feb 20 19:57:26 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: weaken header/library consistency check if db is
	  "ndbm".  It seems several (possibly historical) distributions
	  provide libndbm.  However the content of libndbm vary: Berkeley DB,
	  GDBM or even 4.3BSD NDBM.  (Mandriva, Tru64 UNIX, OpenSuSE,
	  SCO OpenServer, ...)
	  "ndbm" is not searched automatically now (dblib doesn't contain it)
	  but configure --with-dbm-type=ndbm choose libndbm and ndbm.h.

Mon Feb 20 19:15:57 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: refine variable names.

Mon Feb 20 15:50:33 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in: check if -fstack-protector is really available.

Sun Feb 19 23:43:38 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: show header and library found.

Sun Feb 19 23:01:01 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/dbm.c (Init_dbm): refine DBM::VERSION definition.

	* ext/dbm/extconf.rb: provide RUBYDBM_GDBM_HEADER macro.

Sun Feb 19 17:07:27 2012  Tanaka Akira  <akr@fsij.org>

	* test/dbm/test_dbm.rb (test_dbmfile_suffix): check pag and dir is
	  empty for 4.3BSD ndbm.

Sun Feb 19 03:00:30 2012  Tanaka Akira  <akr@fsij.org>

	* test/dbm/test_dbm.rb (test_dbmfile_suffix): check magic numbers.

Sun Feb 19 01:05:41 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: detect GDBM's ndbm.h by testing dbm_clearerr is
	  an empty macro.

Sun Feb 19 00:25:55 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: don't choose 'dbm' if _GDB_H_ is defined which
	  is available since GDBM 1.9 because 'gdbm_compat' is appropriate
	  choice since GDBM 1.8.1.

Sat Feb 18 23:27:00 2012  Kenta Murata  <mrkn@mrkn.jp>

	* random.c: remove a duplicated comment.

Sat Feb 18 18:43:13 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb (dblib): prefer recent GDBM over older GDBM.
	  (have_declared_libvar): new function to check a declared variable
	  exists in a library.
	  (have_undeclared_libvar): renamed from renamed from have_libvar.
	  (headers.db_check2): check that GDBM version variable if GDBM header
	  is chosen.

	* ext/dbm/dbm.c (Init_dbm): use HAVE_DECLARED_LIBVAR_GDBM_VERSION and
	  HAVE_UNDECLARED_LIBVAR_GDBM_VERSION macro.

Sat Feb 18 13:53:01 2012  Tanaka Akira  <akr@fsij.org>

	* test/dbm/test_dbm.rb (test_dbmfile_suffix): DBM::VERSION should
	  be Berkeley DB if foo.db is created by DBM.open.

Sat Feb 18 13:40:37 2012  Tanaka Akira  <akr@fsij.org>

	* test/dbm/test_dbm.rb (test_dbmfile_suffix): test dbm file suffix.

Sat Feb 18 12:50:59 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/dbm.c (DBM::VERSION): define it by detecting _GDBM_H_ or
	  _DBM_IOERR.

Sat Feb 18 07:52:45 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* tool/enc-unicode.rb: don't use 1.9 feature on tools.

Sat Feb 18 02:48:39 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* lib/fileutils.rb: refactored FileUtil methods to use the
	  `define_command` API.  Patch from 7rans <transfire@gmail.com>
	* test/fileutils/test_dryrun.rb: corresponding test refactoring
	* test/fileutils/test_nowrite.rb: ditto
	* test/fileutils/test_verbose.rb: ditto

Fri Feb 17 21:39:36 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: remove dbm.

Fri Feb 17 21:18:39 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: refine header/library mismatch detection.
	  check only for ndbm.h except libc.  check _GDBM_H_ for gdbm.
	  check _DBM_IOERR for the original ndbm.

Fri Feb 17 20:30:44 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: don't check libdbm.  It is not a ndbm
	  implementation.  (libdbm in Version 7 Unix is database library
	  for single database per process.)

Fri Feb 17 15:38:53 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* Merge Onigmo-5.13.1. [ruby-dev:45057] [Feature #5820]
	  https://github.com/k-takata/Onigmo
	  cp reg{comp,enc,error,exec,parse,syntax}.c reg{enc,int,parse}.h
	  cp oniguruma.h
	  cp tool/enc-unicode.rb
	  cp -r enc/

Fri Feb 17 15:20:30 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enum.c (enum_each_slice): arrays to be yielded can be newly
	  created in the block.

	* enum.c: move work variables to objects not to let called blocks
	  access stack area out of scope.  [Bug #5801]

Fri Feb 17 12:35:55 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* tool/merger.rb: remove borders from the commit message which is used
	  when the commit doesn't change ChangeLog.

Fri Feb 17 11:50:11 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* common.mk (btest, btest-ruby, test-sample test-knownbugs)
	  (test-all, test-ruby): depend on prog.

Fri Feb 17 09:56:22 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (create_header): log the content of header.

Fri Feb 17 09:44:55 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* tool/transcode-tblgen.rb (import_ucm): don't use \h because the
	  script should work with ruby 1.8.

	* tool/enc-unicode.rb: ditto.

Fri Feb 17 07:33:29 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* enum.c (id_lshift): use constant ID.

Fri Feb 17 07:30:53 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: refactored to split too long conditions.

Fri Feb 17 00:23:25 2012  Tanaka Akira  <akr@fsij.org>

	* test/dbm/test_dbm.rb: fix skip condition for libgdbm 1.8.0 or prior.
	  reported by Bohuslav Kabrda.
	  [ruby-core:42685] [ruby-trunk - Bug #6036]

Fri Feb 17 00:04:21 2012  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: check _DB_H_ macro unavailable except
	  Berkeley DB library.

Thu Feb 16 05:41:35 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* insns.def (splatarray): make new array if flag is set.

	* compile.c (iseq_compile_each): make new array with
	  splat. [ruby-core:21901][Feature #1125]

Thu Feb 16 00:14:04 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* lib/abbrev.rb (Array#abbrev): add missing '"' in documentation.

Wed Feb 15 22:20:19 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* cont.c (rb_fiber_reset_root_local_storage): add a new function to
	  restore rb_thread_t::local_storage.

	* cont.c (rb_obj_is_fiber): add a new function to tell finalizer to
	  prevent fibers from destroy.

	* gc.c (rb_objspace_call_finalizer): don't sweep fibers at finalizing
	  objspace.

	* internal.h (rb_fiber_reset_root_local_storage, rb_obj_is_fiber):
	  add prototypes.

	* vm.c (ruby_vm_destruct): reset main thread's local_storage before
	  free main thread. rb_thread_t::local_storage is replaced by fiber's
	  local storage when forked from fiber, and it should be already freed
	  when the fiber was destroyed. [ruby-core:41456] [Bug #5700]

	* test/ruby/test_fiber.rb (test_fork_from_fiber): add test for fork
	  from fiber.

Wed Feb 15 19:57:02 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/fiddle/closure.c (callback): deal with unsigned integers.
	  [ruby-core:42458][Bug #5991][Bug #6022]

	* ext/fiddle/conversions.c (value_to_generic, generic_to_value):
	  ditto.

	* ext/fiddle/closure.c (callback): same as r34506.

Wed Feb 15 17:41:31 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (io_strsetbuf): call rb_str_modify to make str independent
	  before calling rb_str_set_len for r34580.

Wed Feb 15 12:30:10 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/zlib/zlib.c (Init_zlib):  Added Zlib::TEXT and note that
	  Zlib::ASCII is deprecated in zlib 1.2.3 and newer.

Wed Feb 15 12:24:40 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/zlib/zlib.c:  Move constant descriptions to constants.  Remove
	  extra comment block at the top of Init_zlib().

Wed Feb 15 12:30:46 2012  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/ostruct.rb: Create getters and setters after dup.
	  [Bug #6028] [rubyspecs:0380bcc]

Wed Feb 15 10:59:52 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (HEAP_BITMAP_LIMIT): HEAP_BITMAP_LIMIT is computed on the
	  basis of HEAP_SIZE because it must covers a whole heap block.
	  [ruby-trunk - Bug #6006]

Wed Feb 15 09:27:45 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/zlib/zlib.c (Init_zlib):  Added Zlib::FIXED and Zlib::RLE
	  strategies.
	* NEWS:  Add note about the new Zlib constants.

Wed Feb 15 09:11:36 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/zlib/zlib.c:  Improve documentation.  [ruby-trunk - Bug #5948]

Wed Feb 15 07:28:54 2012  Eric Hodel  <drbrain@segment7.net>

	* encoding.c (Init_Encoding):  Add IO example of internal and external
	  encoding.  Fixed a typo in the force_encoding example.  [#5949]

Wed Feb 15 06:58:21 2012  Eric Hodel  <drbrain@segment7.net>

	* encoding.c (Init_Encoding):  Add Encoding documentation.
	  [ruby-trunk - Bug #5949]
	* encoding.c (rb_set_default_external):  Fix typo in documentation.

Tue Feb 14 20:22:11 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (CEILDIV): rename to a appropriate name.

Tue Feb 14 18:07:20 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (assign_heap_slot): SEGV happens cause on 64-bit platform
	  sometime there should be `objs-=2` instead of `objs--`.
	  [Bug #6006]
	  patched by Sokolov Yura. https://github.com/ruby/ruby/pull/92

Tue Feb 14 16:00:30 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (io_setstrbuf): cut down the buffer if longer.

Tue Feb 14 15:06:37 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit/assertions.rb (build_message): skip escaped
	  question marks.

Tue Feb 14 12:10:04 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* variable.c (autoload_const_set, autoload_require): fix
	  signatures.

Tue Feb 14 05:23:40 2012  Eric Hodel  <drbrain@segment7.net>

	* process.c (proc_wait):  Change typo "SystemError" to
	  "SystemCallError".  [ruby-trunk - Bug #5962]
	* process.c (proc_wait2):  ditto

Tue Feb 14 05:18:24 2012  Eric Hodel  <drbrain@segment7.net>

	* enumerator.c:  Document use of Enumerator.new for creating a lazy
	  enumeration for filtering/chaining.  [ruby-trunk - Feature #707]

Mon Feb 13 23:01:50 2012  Akinori MUSHA  <knu@iDaemons.org>

	* vm_method.c (rb_method_boundp):
	  obj.respond_to?(:a_protected_method) should return false because
	  calling a protected method may cause NoMethodError if called
	  from outside the class inheritance tree.  Kernel#respond_to? is
	  mostly used to test if it is safe to call a method, so the false
	  positive should be avoided. [ruby-dev:40461] [ruby-dev:41739]
	  [ruby-dev:41837]

Mon Feb 13 21:52:06 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (HEAP_OBJ_LIMIT, HEAP_BITMAP_LIMIT): HEAP_OBJ_LIMIT used
	  `sizeof(struct heaps_slot)` while heap is currently allocated
	  with `struct heaps_header`.
	  HEAP_BITMAP_LIMIT were calculated from
	  `HEAP_OBJ_LIMIT/sizeof(uintptr_t)` - one Byte for each object,
	  not one Bit. [Bug #6006]
	  patched by Sokolov Yura. https://github.com/ruby/ruby/pull/92

Mon Feb 13 18:30:32 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (io_setstrbuf): defer resizing buffer string until data is
	  read actually.

Mon Feb 13 10:24:39 2012  Loren Segal  <lsegal@soen.ca>

	* io.c (Init_IO): use directive hack to make ARGF documentable
	  in other tools.  [ruby-core:42515][Bug #6007]

Sun Feb 12 20:43:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/ruby.h (rb_event_hook_func_t): add argument names.

Sun Feb 12 16:30:23 2012  Akinori MUSHA  <knu@iDaemons.org>

	* tool/merger.rb (#default_merge_branch): Add support for
	  Subversion 1.7 which adopted a whole new working directory
	  structure.

Sun Feb 12 15:14:41 2012  Kazuki Tsujimoto  <kazuki@callcc.net>

	* benchmark/driver.rb: suppress unused/shadowing variable warnings.

Sun Feb 12 03:14:40 2012  Eric Hodel  <drbrain@segment7.net>

	* vm_eval.c (check_funcall):  Call respond_to? with matching arity for
	  legacy single-argument implementations.  [ruby-trunk - Bug #6000]

Sat Feb 11 12:04:05 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* compile.c (defined_expr): guard the whole expression.
	  [ruby-dev:45021][Bug#5786]

Sat Feb 11 08:34:42 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/zlib/zlib.c (rb_inflate_add_dictionary):  Added
	  Zlib::Inflate#add_dictionary to allow users to pre-specify
	  for using during #inflate.  [ruby-trunk - Feature #5937]

Sat Feb 11 08:23:02 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/zlib/zlib.c (do_inflate):  Inflate more data if buffered data
	  exists.  Allows Zlib::Inflate#set_dictionary to work.
	  [ruby-trunk - Bug #5929]

Sat Feb 11 06:00:48 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* dir.c (fnmatch): The * needs to be escaped to avoid formatting in
	  fnmatch comment.
	  patched by @dalton. https://github.com/ruby/ruby/pull/91

Fri Feb 10 03:41:31 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/parser.c: removed external encoding setter, allow parser
	  to be reused.
	* ext/psych/lib/psych/parser.rb: added external encoding setter.
	* test/psych/test_parser.rb: test parser reuse

Fri Feb 10 01:30:41 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/dl/dl.h (ALIGN_OF): use offsetof().

	* ext/dl/dl.h (DLALIGN): round up at once and get rid of overflow.

Fri Feb 10 00:47:07 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/envutil.rb (assert_no_memory_leak): new assertion to
	  check memory leak by invoking child ruby process and watch its
	  memory size.

Thu Feb  9 23:41:44 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* test/pathname/test_pathname.rb (test_binread): add assertion to
	  check encoding.

Thu Feb  9 16:48:19 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/dl/dl.c (Init_dl): fix mangled document.

Thu Feb  9 16:10:34 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/memory_status.rb (Memory::Win32): 64bit support.

Thu Feb  9 16:08:55 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/dl/lib/value.rb (DL::ValueUtil.{unsigned_value,signed_value}):
	  currently pack/unpack does not accept "q!" and "Q!".

Thu Feb  9 16:01:29 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/fiddle/conversions.c (value_to_generic): src is not guaranteed as
	  a Bignum if the type is LONG_LONG.  it may be a Fixnum if the value
	  is small.

Thu Feb  9 11:32:36 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/dl/lib/types.rb: Win64 support.

Thu Feb  9 04:12:29 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* test/pathname/test_pathname.rb: not read but binread.
	  patched by Benoit Daloze, [ruby-core:42440] [Bug #5984]

Wed Feb  8 22:29:59 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* string.c (rb_str_modify_expand): fix memory leak.

Wed Feb  8 14:06:59 2012  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* ext/openssl/ossl_ssl.c: Add SSL constants and allow to unset SSL
	  option to prevent BEAST attack. See [Bug #5353].

	  In OpenSSL, OP_DONT_INSERT_EMPTY_FRAGMENTS is used to prevent
	  TLS-CBC-IV vulnerability described at
	  http://www.openssl.org/~bodo/tls-cbc.txt
	  It's known issue of TLSv1/SSLv3 but it attracts lots of attention
	  these days as BEAST attack. (CVE-2011-3389)

	  Until now ossl sets OP_ALL at SSLContext allocation and call
	  SSL_CTX_set_options at connection.  SSL_CTX_set_options updates the
	  value by using |= so bits set by OP_ALL cannot be unset afterwards.

	  This commit changes to call SSL_CTX_set_options only 1 time for each
	  SSLContext. It sets the specified value if SSLContext#options= are
	  called and sets OP_ALL if not.

	  To help users to unset bits in OP_ALL, this commit also adds several
	  constant to SSL such as
	  OpenSSL::SSL::OP_DONT_INSERT_EMPTY_FRAGMENTS.  These constants were
	  not exposed in Ruby because there's no way to unset bits in OP_ALL
	  before.

	  Following is an example to enable 0/n split for BEAST prevention.

	    ctx.options = OP_ALL & ~OP_DONT_INSERT_EMPTY_FRAGMENTS

	* test/openssl/test_ssl.rb: Test above option exists.

Wed Feb 8 13:12:02 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_x509name.c: Use the numerical representation of
	  unrecognized OIDs instead of the sn "UNDEF".

	* test/openssl/test_x509name.rb: Add tests for the fixed behavior.

	  Patch provided by Paul Kehrer, thank you!
	  [ruby-core:41769] [Feature #5787]

Wed Feb  8 09:49:58 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* tool/merger.rb: don't abort, update first.

Wed Feb 8 09:47:33 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_asn1.c: Call INT2NUM only once for GeneralString.
	  Thanks to Mantas Mikulenas for noticing and providing a patch!
	  [ruby-core:42358] [Bug #5972]

Wed Feb 8 09:19:00 2012  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_cipher.c: Add warning about key as IV.

Tue Feb  7 20:08:12 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* error.c (exc_inspect): Fix typo. patch from Trent Ogren
	  via https://github.com/ruby/ruby/pull/90

Tue Feb  7 19:37:35 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* st.c: refactor packed entries using structs.

Tue Feb  7 14:52:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* st.c (st_update): table can be unpacked in the callback.

	* st.c (st_foreach): should not yield same pair when checking
	  after unpacking.

Mon Feb  6 21:55:13 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* tool/merger.rb: abort if the working directory is dirty.

	* tool/merger.rb: update the working directory after commit.

Mon Feb  6 00:16:27 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* encoding.c (rb_enc_compatible): return ASCII-8BIT even if 2nd string
	  is ascii only string. [ruby-core:42354] [Bug #5968]

Fri Feb  3 07:16:47 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/webrick.rb:  Moved proxy rewriting to WEBrick::HTTPProxy.
	* lib/webrick/httpproxy.rb:  Add examples of creating a proxy server
	  and response rewriting using HTTPProxy.

Fri Feb  3 06:53:22 2012  Eric Hodel  <drbrain@segment7.net>

	* ext/openssl/ossl_x509store.c:  Add class documentation for
	  OpenSSL::X509::Store

Thu Feb  2 22:28:13 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* test/net/http/test_https_proxy.rb
	  (HTTPSProxyTest#test_https_proxy_authentication):
	  add workaround to avoid to hang up without openssl.
	  see [ruby-dev:45021][Bug #5786]

	* test/resolv/test_dns.rb (TestResolvDNS#test_query_ipv4_address):
	  ditto.

Thu Feb  2 21:48:18 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/parsers/baseparser.rb: use meaningful names.

Thu Feb  2 21:38:52 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/parsers/baseparser.rb, test/rexml/test_namespace.rb:
	  fix the default xml namespace URI validation.
	  [ruby-dev:45169] [Bug #5956]
	  Reported by Miho Hiramatsu. Thanks!!!

Thu Feb  2 17:51:02 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (argf_next_argv): reset ARGF.next_p on ARGV.replace.
	  r34409 breaks replacing ARGV.
	  [ruby-dev:45160] [Bug #5952]

Thu Feb  2 16:21:01 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/net/http/test_http.rb (TestNetHTTPKeepAlive#*): remove debug
	  output.

Thu Feb  2 01:24:34 2012  Yusuke Endoh  <mame@tsg.ne.jp>

	* parse.y (debug_lines, coverage): set file path encoding for coverage
	  result.  [ruby-dev:44950]

Wed Feb  1 14:38:31 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/tempfile.rb (Tempfile#unlink, Tempfile::Remover#call): Just
	  call File.unlink and ignore ENOENT because existence check
	  before unlinking does not help in terms of race condition.

	* lib/tempfile.rb (Tempfile#unlink, Tempfile::Remover#call): My
	  comment about thread safeness is obsolete.

Wed Feb  1 09:50:10 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* doc/re.rdoc (Repetition): fix typo.  reported by Ori Avtalion
	  and patched by Zachary Scott.  [Bug #5947]

Wed Feb  1 06:38:54 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (argf_close): skip stdin, which should be readable again.
	  [ruby-dev:45160] [Bug #5952]

	* io.c (argf_readlines): reinitialize after all read to be
	  readable again.

Tue Jan 31 21:27:43 2012  Narihiro Nakamura  <authornari@gmail.com>

	* configure.in (HEAP_ALIGN_LOG): HEAP_ALIGN_LOG should be page
	  size in OpenBSD. [ruby-core:42158][Bug #5901]

	* gc.c : avoid to redefine.

Tue Jan 31 14:27:22 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/envutil.rb (EnvUtil.invoke_ruby): yield also child pid
	  in block form.

Mon Jan 30 19:08:19 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_eval.c (vm_call0): should pass block to enumerators.  patched
	  by Kazuki Tsujimoto.  [ruby-dev:44961][Bug #5731]

	* vm_eval.c (method_missing), vm_insnhelper.c (vm_call_method):
	  ditto.  patched by satoshi shiba.

Mon Jan 30 12:31:05 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* file.c (append_fspath): need to set the encoding to result always.

Mon Jan 30 10:38:37 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/irb/test_completion.rb: skip if cannot load irb/completion
	  (maybe readline does not exist).

Sun Jan 29 22:47:19 2012  Yutaka Kanemoto  <kanemoto@ruby-lang.org>

	* tool/config.{guess,sub}: updated to automake-1.11.2.

Sun Jan 29 12:17:56 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/readline/readline.c (readline_attempted_completion_function):
	  respect encodings.  [Bug #5941]

Sat Jan 28 09:33:33 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* win32/win32.c (rb_w32_read): fix an issue that $stdin.read doesn't
	  terminate by CTRL-C on Windows.
	  [ruby-dev:45149] [Bug #5812]

Sat Jan 28 08:18:11 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/ruby/test_thread.rb
	  (TestThreadGroup#test_thread_timer_and_interrupt): skip exit status
	  assertion because we cannot get signal status on Windows.

	* win32/win32.c (CreateChild): create process group to receive the
	  signal by GenerateConsoleCtrlEvent().

	* win32/win32.c (kill): use CTRL_BREAK_EVENT instead of CTRL_C_EVENT
	  if a process group is specified. CTRL_C_EVENT signal cannot be
	  generated for process groups for the specification.
	  [ruby-dev:45149] [Bug #5812]

Sat Jan 28 07:46:03 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* thread_win32.c (rb_w32_wait_events_blocking): use
	  ruby_thread_from_native() instead of GET_THREAD() because
	  GET_THREAD() doesn't always return the current thread and
	  WaitForMultipleObjects() at rb_w32_read() doesn't return by
	  Thread#kill. This fixes TestQueue#test_thr_kill failure on
	  Windows.

	* thread_win32.c (rb_w32_wait_events): use ruby_thread_from_native()
	  instead of GET_THREAD() for consistency with the above change.

	* thread_win32.c (rb_w32_sleep): ditto.

	* thread_win32.c (rb_w32_Sleep): ditto.
	  [ruby-dev:45149] [Bug #5812]

Sat Jan 28 07:28:48 2012  Hiroshi Shirosaki  <h.shirosaki@gmail.com>

	* test/zlib/test_zlib.rb (TestZlibGzipReader#test_reader_wrap): set
	  binmode explicitly for fixing test error on Windows. This is consistent
	  with r34243.
	  [ruby-dev:45149] [Bug #5812]

Sat Jan 28 05:53:34 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/irb/completion.rb (IRB::InputCompletor::CompletionProc):
	  ignore non-string name modules.  [ruby-core:42244][Bug #5938]

Fri Jan 27 16:31:45 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c (HEAP_ALIGN, HEAP_ALIGN_MASK): DRY, let compiler calculate
	  from HEAP_ALIGN_LOG.

Thu Jan 26 11:03:37 2012  Eric Hodel  <drbrain@segment7.net>

	* lib/matrix.rb:  Clean up extra whitespace in output documentation.

Thu Jan 26 03:24:02 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/io/console/console.c (io_getch): default delegating method
	  for StringIO.  https://github.com/nobu/io-console/issues/4

	* ext/stringio/stringio.c: moved some methods to hidden modules.

Wed Jan 25 13:27:42 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* file.c (rb_file_s_basename): ignore non-ascii extension in
	  different encoding, which cannot match.

	* file.c (rmext): no extension to strip if empty string.

	* file.c (rb_enc_path_next, rb_enc_path_skip_prefix)
	  (rb_enc_path_last_separator, rb_enc_path_end)
	  (ruby_enc_find_basename, ruby_enc_find_extname): encoding-aware
	  path handling functions.

	* file.c (rb_home_dir, file_expand_path, rb_realpath_internal)
	  (rb_file_s_basename, rb_file_dirname, rb_file_s_extname)
	  (rb_file_join): should respect the encodings of arguments than
	  file system encoding.  [ruby-dev:45145] [Bug #5919]

	* dir.c (check_dirname, ruby_glob0): ditto.

	* ext/pathname/pathname.c (path_sub_ext): ditto.

Tue Jan 24 14:20:42 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm.c (rb_iter_break_value): new function to break a block with
	  the value.  [ruby-dev:45132] [Feature #5895]

Tue Jan 24 12:58:41 2012  Yukihiro Matsumoto  <matz@ruby-lang.org>

	* object.c (rb_Hash): add Kernel#Hash conversion method like
	  Array() or Float().  a patch from Run Paint Run Run.  Fix #3131

Tue Jan 24 11:38:05 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/uri/common.rb (URI.encode_www_form_component): initialize on
	  requiring to support JRuby, which runs parallel multithreads.
	  [ruby-core:42222] [Bug #5925]

	* lib/uri/common.rb (URI.decode_www_form_component): initialize on

Mon Jan 23 20:33:11 2012  Jason Kay  <geniture@me.com>

	* lib/net/http.rb (Net::HTTP#connect): Writing entire packet at
	  once to avoid incomplete transmission.  Current code using
	  writeline was causing sub-optimal conversing with a proxy due to
	  the connect tunnel request headers being split over multiple
	  packets. The modification I made allows the connect request to
	  be written as one packet, avoiding problems and optimizing the
	  conversation.

	  https://github.com/ruby/ruby/pull/72
	  [Feature #5460]

Mon Jan 23 17:06:17 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/uri/mailto.rb (URI::MailTo.build): follow Array#to_s change of
	  Ruby 1.9; use Array#join. [Bug #5840]

Mon Jan 23 16:42:28 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (extract_binmode): raise an exception if binmode/textmode
	  is specified with both vmode and opthash.
	  [ruby-core:42199] [Bug #5918]

Mon Jan 23 16:35:27 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (rb_io_extract_modeenc): set ASCII-8BIT if binmode is specified
	  with opthash. [ruby-core:42197] [Bug #5917]

Mon Jan 23 10:08:00 2012  Kenta Murata  <mrkn@cookpad.com>

	* test/cgi/test_cgi_util.rb (test_cgi_escape_preserve_encoding):
	  add a test for CGI::escape to preserve encoding.

	* test/cgi/test_cgi_util.rb (test_cgi_unescape_preserve_encoding):
	  add a test for CGI::unescape to preserve encoding.

Mon Jan 23 00:45:34 2012  Akinori MUSHA  <knu@iDaemons.org>

	* misc/rdoc-mode.el (rdoc-imenu-create-index): Add imenu support
	  to rdoc-mode.

	* misc/rdoc-mode.el (rdoc-mode): Fix regexp patterns containing
	  "\s " where CR/LF is not supposed to match.

Sun Jan 22 15:41:26 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (rb_intern3): split to registration check and new
	  registration.

	* parse.y (rb_intern_str): make interned string shared with the
	  given string.

	* parse.y (rb_intern3, rb_intern_str): check the coderange first.

Sat Jan 21 22:21:07 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/ruby.h (FIXNUM_P): simple flag should be int.

Sat Jan 21 21:51:19 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* encoding.c (rb_enc_compatible): fix segv on symbols.
	  [ruby-core:42204] [Bug #5921]

Sat Jan 21 11:43:45 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* dir.c (dir_chdir, check_dirname): get rid of optimization-out.

Fri Jan 20 20:47:37 2012  Kenta Murata  <mrkn@cookpad.com>

	* lib/cgi/util.rb (CGI.escape): support a string with invalid byte
	  sequence.  [Bug #5913]

	* test/cgi/test_cgi_util.rb
	  (test_cgi_escape_with_invalid_byte_sequence): test for the above
	  change.

Fri Jan 20 17:37:37 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* vm.c (vm_exec): remove workaround for LLVM because r34278 fixes it.

	* vm_insnhelper.c (vm_call_cfunc): ditto.

Fri Jan 20 14:31:43 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/http.rb (Net::HTTP#transport_request): retry a idempotent
	  request automatically. [ruby-dev:45030] [Bug #5790]
	  [ruby-core:41821] [Bug #5813]

	* lib/net/http.rb (Net::HTTP#keep_alive_timeout=): added to specify
	  the second to reconnect the TCP connection on Keep-Alive.
	  The default value is 2 second because current servers uses 2 sec.
	  http://ftp-admin.blogspot.com/2009/09/keepalivetimeout2.html

	* lib/net/http.rb (Net::HTTP#begin_transport): reconnect TCP
	  connection on keep-alive timeout.

Thu Jan 19 07:53:09 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_strptime.c: moved detector of leftover.

Thu Jan 19 07:10:47 2012  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_parse.c: [ruby-core:42173].

Wed Jan 18 18:11:02 2012  Akinori MUSHA  <knu@iDaemons.org>

	* misc/rdoc-mode.el (rdoc-mode): Add provide so that requiring
	  this library succeeds.

Wed Jan 18 18:06:45 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/curses/curses.c (cWindow, cMouseEvent): made typed data.

Wed Jan 18 12:49:15 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/to_ruby.rb: Added support for loading
	  subclasses of String with ivars
	* ext/psych/lib/psych/visitors/yaml_tree.rb: Added support for dumping
	  subclasses of String with ivars
	* test/psych/test_string.rb: corresponding tests

Wed Jan 18 10:39:47 2012  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/to_ruby.rb: Added ability to load array
	  subclasses with ivars.
	* ext/psych/lib/psych/visitors/yaml_tree.rb: Added ability to dump
	  array subclasses with ivars.
	* test/psych/test_array.rb: corresponding tests

Tue Jan 17 17:18:41 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (SPT_TYPE): enable as SPT_REUSEARGV on Darwin.

	* missing/setproctitle.c (ruby_init_setproctitle): changed prefix.

Tue Jan 17 12:32:46 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c (aligned_malloc, aligned_free): covered missing defined
	  operators and fixes for cygwin.

Tue Jan 17 10:54:46 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* st.c (do_hash): it's the time to remove cast to unsigned int.

Tue Jan 17 07:30:12 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* st.c (unpack_entries): Fix r34310: on unpacking, the position of
	  a hash must be do_hash-ed value.

	* st.c (add_packed_direct): ditto.

Mon Jan 16 16:41:53 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/optparse.rb (Regexp): fix incorrect options when casting to
	  a Regexp, and suppress encoding option warnings.
	  https://github.com/ruby/ruby/pull/82

Mon Jan 16 11:22:38 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/win32.c (rb_chsize): no need to get the current file size.

Mon Jan 16 00:41:33 2012  Sokolov Yura  <funny.falcon@gmail.com>

	* st.c: st use function instead of macro.  In my current
	  environment (Ubuntu 11.04 32bit gcc-4.5.2) it gives 4%
	  performance improvement.

	  https://github.com/ruby/ruby/pull/77

Sun Jan 15 14:09:48 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* object.c (rb_inspect): raise the result is not compatible with
	  the default external encoding. [ruby-core:42095] [Bug #5848]
	  If the default external encoding is ASCII compatible, the encoding of
	  inspected result must be compatible with it.
	  If the default external encoding is ASCII incompatible,
	  the result must be ASCII only.

Sun Jan 15 13:21:50 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/json/parser/parser.rl (json_string_unescape): workaround fix
	  for over optimization of GCC 4.7. [ruby-core:42085] [Bug #5888]
	  http://gcc.gnu.org/bugzilla/show_bug.cgi?id=51862

Sat Jan 14 22:24:09 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/dl/callback/mkcallback.rb (gencallback): suppress unused
	  variables.

Sat Jan 14 21:56:43 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* iseq.c (iseq_data_to_ary): check line info table boundary.  line
	  number 0 means no line number info is needed.  [ruby-dev:45130]
	  [Bug #5894]

Sat Jan 14 18:24:13 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* error.c (exc_equal): clear rb_thread_t::errinfo when ignore
	  an exception under rb_protect(). [ruby-core:41979] [Bug #5865]

Sat Jan 14 12:02:55 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* sprintf.c (rb_enc_vsprintf): relaxed the restriction.  since the
	  implementation deeply depends on plain char, so wchar_t based
	  encodings are not supported.

Sat Jan 14 12:00:20 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (exc_equal): ignore exceptions during implicit
	  conversion.  [ruby-core:41979] [Bug #5865]

Sat Jan 14 05:58:54 2012  Eric Hodel  <drbrain@segment7.net>

	* io.c (rb_io_s_read):  Fix formatting of open_args comment.  Reported
	  by Adam Prescott.

Fri Jan 13 18:41:19 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* sprintf.c (rb_enc_vsprintf): can be used for ASCII compatible
	  encodings only.

Fri Jan 13 18:29:06 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread.c (rb_mutex_unlock_th): simplified.

	* thread.c (rb_barrier_waiting): fix potential overflows.

Fri Jan 13 17:23:38 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* load.c (load_unlock): update loading table at once.

Fri Jan 13 16:44:45 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (exc_equal): try implicit conversion for delegator.
	  [ruby-core:41979] [Bug #5865]

Fri Jan 13 03:46:53 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/shellwords.rb (Shellwords#shellescape): shellescape() now
	  stringifies the given object using to_s.

	* lib/shellwords.rb (Shellwords#shelljoin): shelljoin() accepts
	  non-string objects in the given array, each of which is
	  stringified using to_s.

	* lib/shellwords.rb: Fix rdoc markups.

Fri Jan 13 03:38:36 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/shellwords.rb (Shellwords#shellsplit): Fix a bug where
	  consecutive backslashes in double quotes are all removed except
	  the one at the tail.

Fri Jan 13 03:28:00 2012  Luis Lavena  <luislavena@gmail.com>

	* ext/socket/extconf.rb (if ipv6): only define _WIN32_WINNT if was not
	  previously defined. This solve warnings with multiple defines in
	  command line with GCC 4.6.1

Thu Jan 12 18:44:31 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb: fix r33904 and revert r33905.  initialize global
	  variables with init_mkmf before initializing constants.
	  [ruby-dev:45124] [Bug #5879]

Thu Jan 12 13:51:00 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* cont.c (cont_restore_0): prevent optimizing out `sp'. sp is used for
	  reserving a memory space with ALLOCA_N for restoring machine stack
	  stored in cont->machine_stack, but clang optimized out it (and
	  maybe #5851 is also caused by this).
	  This affected TestContinuation#test_check_localvars.

	* cont.c (cont_restore_1): revert workaround introduced in r32201.

Thu Jan 12 02:14:43 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* object.c: Added examples for Object#is_a? and
	  Object#instance_of? patched from Manoj Kumar.
	  [Bug #5880] [ruby-core:42057]

Thu Jan 12 00:57:48 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* lib/mkmf.rb: verbose-mode can use by RM, RMDIRS, etc.
	  (e.g. make V=1 realclean)

Wed Jan 11 23:40:21 2012  Naohisa Goto  <ngoto@gen-info.osaka-u.ac.jp>

	* string.c (rb_str_concat): set array element after definition
	  to fix compile error with Fujitsu C Compiler 5.6 on Solaris 10
	  on Sparc.  [Bug #5878] [ruby-dev:45123]

Wed Jan 11 22:52:51 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* gc.c (ruby_mimmalloc): don't set allocated size to header.
	  ruby_mimmalloc() doesn't increment allocated_size/allocations and
	  decrement them in ruby_xfree() cause inconsistency.

	* gc.c (ruby_xfree): don't decrement allocated_size/allocations if
	  allocated size record is 0.

Wed Jan 11 22:36:43 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* test/readline/test_readline.rb (test_completion_proc_empty_result):
	  ensure clearance of Readline's line_buffer after the test.

Tue Jan 10 21:57:38 2012  Hiroshi Shirosaki <h.shirosaki@gmail.com>

	* ext/dbm/dbm.c (Init_dbm): fix a build error on mswin32.
	  use `extern __declspec(dllimport)` for dll link with VC.
	  [ruby-core:41996] [Bug #5869]

Tue Jan 10 15:31:55 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* vm.c (vm_exec): refix r34162; suppress warning and add description.

Tue Jan 10 15:13:58 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/readline/readline.c (readline_attempted_completion_function):
	  use rb_memerror().

Tue Jan 10 12:49:42 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* gc.c: in fact, i686-linux doesn't need to define _XOPEN_SOURCE 600.

Tue Jan 10 12:44:11 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* gc.c (ruby_mimmalloc): defined for objects need not rb_objspace,
	  but should return pointer suitable for ruby_xfree;
	  main vm and main thread.
	  patched by Sokolov Yura. https://github.com/ruby/ruby/pull/79

	* internal.h: ditto.

	* vm.c (Init_BareVM): use ruby_mimmalloc.

	* ext/dl/cfunc.c: #include <ruby/util.h>.

	* ext/syslog/syslog.c: use xfree because it is allocated by
	  ruby_strdup.

Tue Jan 10 12:13:56 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* ext/readline/readline.c (readline_attempted_completion_function):
	  fix compile error.

Tue Jan 10 10:41:11 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/readline/readline.c (readline_attempted_completion_function):
	  empty completion result does not mean memory error.

Tue Jan 10 02:19:22 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* test/ruby/test_io.rb (test_autoclose_true_closed_by_finalizer,
	  test_autoclose_true_closed_by_finalizer): skip if IO objects are
	  not recycled yet. [ruby-dev:45098] [Bug #5850]

Tue Jan 10 00:41:28 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* lib/tempfile.rb (Tempfile#_close): clear @tempfile and @data[1] even
	  when exception is raised at @tempfile.close. [ruby-dev:45113]

	* lib/tempfile.rb (Tempfile#unlink): fix a typo.

Tue Jan 10 00:32:17 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* gc.c (run_finalizer): clear rb_thread_t::errinfo when ignore
	  an exception under rb_protect(). [ruby-dev:45113]

Mon Jan  9 23:37:43 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* ext/readline/readline.c (readline_attempted_completion_function):
	  fix typos.

Mon Jan  9 20:55:34 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c : don't embed struct heaps_slot to a heap block because it
	  can causes copy-on-write of memory page on heap block when its
	  free_next is rewritten.

Mon Jan  9 20:26:33 2012  Tanaka Akira  <akr@fsij.org>

	* ext/pathname/pathname.c (path_entries): add document suggested by
	  the thread [ruby-core:41959] [Bug #5859].

Mon Jan  9 20:14:13 2012  Tanaka Akira  <akr@fsij.org>

	* ext/socket/lib/socket.rb (family_addrinfo): don't require protocol
	  equality.  For example, protocol 0 and IPPROTO_TCP is not problem
	  for TCP.

Mon Jan  9 20:08:52 2012  Tanaka Akira  <akr@fsij.org>

	* ext/socket/lib/socket.rb (family_addrinfo): return the given
	  addrinfo object.
	  Patch by Ippei Obayashi.  [ruby-dev:45095] [Bug #5845]

Mon Jan  9 19:40:20 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/zlib/test_zlib.rb (TestZlibGzipWriter#test_writer_wrap): set
	  binmode explicitly.

Mon Jan  9 14:42:41 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c: free_slots is changed Singly linked list. clear
	  free_slots before sweep.

Mon Jan  9 07:46:17 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* gc.c: i686-linux needs to define _XOPEN_SOURCE 600 for posix_memalign.

Mon Jan  9 04:24:59 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* gc.c (rb_objspace_free): global_List is allocated with xmalloc.
	  patched by Sokolov Yura.  https://github.com/ruby/ruby/pull/78

	* dln_find.c: remove useless replacement of free.

	* ext/readline/readline.c (readline_attempted_completion_function):
	  strings for readline must allocated with malloc.

	* process.c (run_exec_dup2): use free; see also r20950.

	* re.c (onig_new_with_source): use malloc for oniguruma.

	* vm.c (ruby_vm_destruct): use free for VMs.

	* vm.c (thread_free): use free for threads.

Mon Jan  9 04:24:59 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* dln_find.c: remove useless replacement of free.

	* ext/readline/readline.c (filename_completion_proc_call):
	  matches should use xfree.

	* ext/readline/readline.c (username_completion_proc_call): ditto.

Mon Jan  9 01:12:35 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* numeric.c (rb_enc_uint_char): raise RangeError when added codepoint
	  is invalid. [Feature #5855] [Bug #5863] [Bug #5864]

	* string.c (rb_str_concat): ditto.

	* string.c (rb_str_concat): set encoding as ASCII-8BIT when the string
	  is US-ASCII and the argument is an integer greater than 127.

	* regenc.c (onigenc_mb2_code_to_mbclen): rearrange error code.

	* enc/euc_jp.c (code_to_mbclen): ditto.

	* enc/shift_jis.c (code_to_mbclen): ditto.

Sun Jan  8 20:31:45 2012  Narihiro Nakamura  <narihiro@netlab.jp>

	* gc.c : consider header bytes which are used by malloc.

Sun Jan  8 11:54:43 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (aligned_free): support MinGW. Patch by Hiroshi Shirosaki.

Sun Jan  8 11:43:05 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (slot_sweep): add a assertion instead of a debug print.

Sun Jan  8 01:18:19 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* test/-ext-/old_thread_select/test_old_thread_select.rb:
	  avoid platform bug. [Bug #5858] [ruby-dev:45108]

Sun Jan  8 00:46:34 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* gc.c: get rid of implicit narrowing conversion.

Sun Jan  8 00:10:10 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in: check posix_memalign(3) and memalign(3).

	* gc.c (aligned_malloc): use configure's result instead of
	  _POSIX_C_SOURCE and _XOPEN_SOURCE because they can't be used
	  to check availability at least on FreeBSD.

Sat Jan  7 22:25:50 2012  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c: use Bitmap Marking algorithm to avoid copy-on-write of
	  memory pages. See [ruby-dev:45085] [Feature #5839]
	  [ruby-core:41916].

	* include/ruby/ruby.h : FL_MARK rename to FL_RESERVED1.

	* node.h : ditto.

	* debug.c : ditto.

	* object.c (rb_obj_clone): FL_MARK move to a bitmap.

	* class.c (rb_singleton_class_clone): ditto.

Sat Jan  7 00:47:07 2012  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* configure.in: always define CANONICALIZATION_FOR_MATHN.
	  [ruby-dev:45100] [Bug #5852]

Fri Jan  6 23:11:20 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* include/ruby/version.h: RUBY_API_VERSION 2.0.0

Fri Jan  6 12:24:11 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* object.c (rb_inspect): raises Encoding::CompatibilityError if the
	  result is incompatible with the default external encoding.
	  [ruby-core:41931] [Bug #5848]

Thu Jan  5 15:26:15 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (check_valid_dir): strict checking of root.
	  GetDriveType() succeeds with non root directory as the argument,
	  even if MSDN says that the API needs the root directory.
	  this patch fixes a failure of test/ruby/test_file_exhaustive.rb.

Thu Jan  5 12:15:55 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* file.c (rb_file_join): separator is appended by array length - 1
	  times. patched by Benoit Daloze [ruby-core:41901] [Bug #5841]

Thu Jan  5 11:47:54 2012  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/uri/common.rb (URI::Parser#initialize_regexp):
	  use \A \z instead of ^ $. [Bug #5843]

Wed Jan  4 17:55:53 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* array.c (rb_ary_sample): add example for Array#sample
	  based on patch from https://github.com/ruby/ruby/pull/74

Wed Jan  4 14:24:33 2012  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* string.c (str_nth_len): count ascii-only run at the end.  this
	  bug appears only when single-byte-optimization is disabled due
	  to unknown coderange.  [ruby-core:41896] [Bug #5836]

Wed Jan  4 11:32:07 2012  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (check_valid_dir): special case for a root directory.
	  Reported by Masateru OKAMOTO at [Bug #5819].

Wed Jan  4 00:19:54 2012  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/parsers/baseparser.rb: use private instead of _xxx
	  method name. This is Ruby code not Python code.
	  refs #5696

Tue Jan  3 23:57:37 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* lib/rexml/parsers/baseparser.rb: rexml BaseParser uses
	  instance_eval unnecessarily on listener add.
	  patch from Charles Nutter. [Bug #5696] [ruby-core:41437]

Tue Jan  3 20:44:13 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* README: add comment for Git user. patch from Arun Agrawal.
	* README.ja: ditto.

Tue Jan  3 15:58:22 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* thread.c: changed documentation for "thread-local" variables.
	  patch from Julien Ammous.

Tue Jan  3 15:50:12 2012  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* process.c: Fix typo. patch from Aviv Ben-Yosef.

Tue Jan  3 13:43:37 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* tool/merger.rb: allow r0123 style revision number.

Tue Jan  3 11:17:55 2012  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* tool/merger.rb (#version_up): version.h date should be Japanese
	  locale date.

Mon Jan  2 22:08:00 2012  Akinori MUSHA  <knu@iDaemons.org>

	* tool/file2lastrev.rb (VCS::detect): Add support for Subversion
	  1.7 which adopted a whole new working directory structure.

	* tool/file2lastrev.rb (VCS::detect): Simply use .each instead of
	  .sort.reverse_each which looks too arbitrary.  If you want SVN
	  to be tried first, then you just have to register it first as it
	  is right now.

Mon Jan  2 20:53:36 2012  Tanaka Akira  <akr@fsij.org>

	* lib/securerandom.rb (random_bytes): use IO#read instead of
	  IO#readpartial to make the intent more clear.

Mon Jan  2 15:26:39 2012  Kazuki Tsujimoto  <kazuki@callcc.net>

	* test/ruby/test_object.rb (test_send_with_block): add a normal case.

Mon Jan  2 15:18:54 2012  Kazuki Tsujimoto  <kazuki@callcc.net>

	* test/ruby/test_object.rb (test_send_with_block): moved from
	  bootstraptest/test_flow.rb.

Mon Jan  2 15:10:11 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* lib/test/unit/parallel.rb: use pack("m0") instead of
	  pack("m").gsub("\n","").
	* lib/test/unit.rb (Test::Unit::Runner::Worker#run): ditto.

Mon Jan  2 15:05:09 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* lib/test/unit.rb (Test::Unit::Runner::Worker#run): use
	  File.basename with suffix instead of gsub.

Mon Jan  2 14:55:28 2012  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* lib/test/unit.rb (Test::Unit::Runner#_run_parallel): find may
	  return nil and nil can not dup.

Sun Jan  1 12:23:10 2012  Akinori MUSHA  <knu@iDaemons.org>

	* lib/shellwords.rb (Shellwords#shellescape): Drop the //n flag
	  that only causes warnings with no real effect.  [Bug #5637]

Sat Dec 31 06:28:37 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* thread.c (rb_barrier_waiting): save the number of waiting threads
	  in RBASIC()->flags. [ruby-dev:45002] [Bug #5768]

	* thread.c (rb_barrier_wait): increment and decrement around
	  rb_mutex_lock, and use rb_barrier_waiting().

	* thread.c (rb_barrier_release): use rb_barrier_waiting().

	* thread.c (rb_barrier_destroy): ditto.

Mon Dec 26 17:20:10 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* vm.c (vm_exec): add guard to prevent optimization for LLVM clang.

Fri Dec 30 17:01:12 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* vm_eval.c (rb_f_send): fix obj.send() documentation issue.
	 [Bug #5125] [ruby-core:38633]

Thu Dec 29 22:36:16 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* lib/test/unit.rb (Test::Unit::Runner::Worker#_run_parallels): fix
	  premature exit when all workers' status are :ready or :prepare.
	  [ruby-dev:45061] [Bug #5822]

Thu Dec 29 01:51:13 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* include/ruby/ruby.h: fix #error pragma. LLP64 platform is supported.

	* include/ruby/st.h: ditto.

Wed Dec 28 11:22:45 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/fileutils.rb (FileUtils::Entry_#entries): use utility method
	  instead of typoed regexp.  [ruby-core:41829] [Bug #5817]

Wed Dec 28 02:08:04 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* vm_insnhelper.c (unknown_keyword_error): add GC guard to prevent
	  intermediate object from GC.

Tue Dec 27 22:34:54 2011  Shota Fukumori  <sorah@tubusu.net>

	* lib/test/unit.rb (Worker#close): "closing IO if IO is closed"
	  should be "closing IO if IO isn't closed"

Tue Dec 27 22:04:27 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* st.c (st_update): new function to lookup the given key and
	  update the value.  [ruby-dev:44998]

Tue Dec 27 21:17:33 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* node.h (rb_args_info): change pre_args_num and post_args_num as
	  int, to match with rb_iseq_t.

	* parse.y (new_args_gen): check overflow.

Mon Dec 26 22:38:35 2011  Yusuke Endoh  <mame@tsg.ne.jp>

	* vm_insnhelper.c (unknown_keyword_error): make it kind a error
	  message when unknown keyword is given.  It require more work.
	  See [ruby-core:40518] and [ruby-core:40541] in detail.

Mon Dec 26 22:31:07 2011  Yusuke Endoh  <mame@tsg.ne.jp>

	* vm_core.h (struct rb_iseq_struct), compile.c (iseq_set_arguments),
	  iseq.c (rb_iseq_parameters), vm_insnhelper.c
	  (vm_callee_setup_arg_complex): support Method#parameters for keyword
	  arguments.  The provisional spec is what Benoit Daloze proposed.
	  [ruby-core:40541]

	* test/ruby/test_keyword.rb: add a test for above.

Mon Dec 26 22:15:27 2011  Yusuke Endoh  <mame@tsg.ne.jp>

	* vm_core.h (struct rb_iseq_struct), compile.c (iseq_set_arguments,
	  iseq_compile_each), vm_insnhelper.c (vm_callee_setup_arg_complex):
	  implement keyword arguments.  See [ruby-core:40290]
	  The feature is promised to be included in 2.0, but the detail spec
	  is still under discussion; this commit is a springboard for further
	  discussion.  Please try it and give us feedback.
	  This commit includes fixes for some problems reported by Benoit
	  Daloze <eregontp AT gmail.com> [ruby-core:40518] and Marc-Andre
	  Lafortune <ruby-core-mailing-list AT marc-andre.ca>
	  [ruby-core:41772].

	* iseq.c (iseq_free, prepare_iseq_build): bookkeeping.

	* test/ruby/test_keyword.rb: add tests for keyword arguments.

	* test/ripper/dummyparser.rb (class DummyParser): temporal fix for
	  ripper test.

Mon Dec 26 22:00:17 2011  Yusuke Endoh  <mame@tsg.ne.jp>

	* node.h, node.c, parse.y: implement a parser part for keyword
	  arguments.
	  This is a preparation for keyword argument (see [ruby-core:40290]).

	* gc.c (gc_mark_children): bookkeeping.

Mon Dec 26 21:03:18 2011  Yusuke Endoh  <mame@tsg.ne.jp>

	* node.h, parse.y (new_args_gen), compile.c (iseq_set_arguments): use
	  struct rb_args_info instead of NODEs.
	  This is a preparation for keyword argument (see [ruby-core:40290]).

	* node.c (dump_node), gc.c (gc_mark_children, obj_free): bookkeeping.

Mon Dec 26 20:59:51 2011  Yusuke Endoh  <mame@tsg.ne.jp>

	* node.h, parse.y (lambda, f_larglist): remove NEW_LAMBDA hack.
	  This is a preparation for keyword argument (see [ruby-core:40290]).

Mon Dec 26 22:01:19 2011  Hiroshi Shirosaki <h.shirosaki@gmail.com>

	* io.c (rb_sys_fail_path): move the definition.
	  Move above for using it in set_binary_mode_with_seek_cur().

	* io.c (set_binary_mode_with_seek_cur): fix improper seek cursor.
	  Seeking file cursor with setting binary mode has possibility to
	  cause infinite loop. Fixed the bug and refined error handling.
	  Introduced at r34043.

	  And cleanups as below.
	  Remove unnecessary parentheses of `fptr`.
	  Use return value of setmode().

	* test/ruby/test_io_m17n.rb
	  (TestIO_M17N#test_seek_with_setting_binmode): add a test for above.
	  [ruby-core:41671] [Bug #5714]

Mon Dec 26 17:01:14 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* common.mk (LIBRUBY_A): depends on main.o since r33774.
	  [ruby-core:41786] [Bug #5796]

Mon Dec 26 13:07:08 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_io.rb (TestIO#test_autoclose): Tempfile.new doesn't
	  accept the block argument.

Mon Dec 26 13:06:52 2011  Shota Fukumori  <sorah@tubusu.net>

	* lib/test/unit.rb: Avoid zombie processes on "--separate" option
	  added at r34121.

Mon Dec 26 04:01:23 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_cipher.c: Update and complete documentation.

Sun Dec 25 23:16:11 2011  Shota Fukumori  <sorah@tubusu.net>

	* test/testunit/test_parallel.rb (test_separate): Test for "--separate"
	  option (r34121)

Sun Dec 25 22:39:49 2011  Shota Fukumori  <sorah@tubusu.net>

	* lib/test/unit.rb (_run_parallel):
	  New option "--separate" for test/unit; when running tests with this
	  option, a job process will be restarted after one test file has done.
	  This means all test files will run with separated process.

	* lib/test/unit/parallel.rb: Fix for above. Now parallel.rb puts
	  "ready!" for first ready, "ready" for afters.

Sun Dec 25 00:02:15 2011  Luis Lavena  <luislavena@gmail.com>

	* configure.in: change --with-ntver to --with-winnt-ver to be more
	  descriptive in the context. [ruby-core:41794]

Sat Dec 24 23:25:15 2011  Luis Lavena  <luislavena@gmail.com>

	* configure.in: add --with-ntver option to match win32/configure.bat
	  functionality. Set 0x0501 as default. [ruby-core:35010]
	  [ruby-core:35035]

Sat Dec 24 12:38:53 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* proc.c (proc_call): get rid of optimization-out by clang.

	* proc.c (rb_proc_call, rb_proc_call_with_block): ditto.

Sat Dec 24 10:56:32 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/readline/readline.c (readline_readline): check if outstream
	  is closed to get rid of a bug of readline 6.  [ruby-dev:45043]
	  [Bug #5803]

Sat Dec 24 06:59:49 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/readline/test_readline.rb (test_line_buffer__point): use
	  lambda not to exit entire method by "return".  or "next" for
	  proc.  [ruby-dev:45042] [Bug #5802]

Sat Dec 24 01:20:39 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm_eval.c (send_internal): PASS_PASSED_BLOCK_TH must be placed
	  just before calling rb_call0.

	* bootstraptest/test_flow.rb: add a test for above.

Sat Dec 24 00:55:16 2011  Tanaka Akira  <akr@fsij.org>

	* lib/tempfile.rb (Tempfile#initialize): warn if a block is given.

Fri Dec 23 16:14:30 2011  TAKAO Kouji  <kouji@takao7.net>

	* ext/readline/readline.c (readline_attempted_completion_function):
	  in Readline module with GNU Readline 6 case, Readline module
	  resets completion_append_character to " ", after it executes
	  completion. So, Readline module stores
	  completion_append_character, and Readline module always sets it
	  after Readline module executes completion. [ruby-dev:43456]
	  [Feature #4635]

Fri Dec 23 15:59:05 2011  TAKAO Kouji  <kouji@takao7.net>

	* ext/readline/readline.c (Init_readline): libedit check
	  rl_getc_function only when rl_initialize() is called, and
	  using_history() call rl_initialize(). This assignment should be
	  placed before using_history(). [ruby-core:40641] [Bug #5539]

Fri Dec 23 10:14:47 2011  Tanaka Akira  <akr@fsij.org>

	* test/thread/test_queue.rb (test_thr_kill): show the number of loop
	  run when the test failed.

Fri Dec 23 09:23:48 2011  Tanaka Akira  <akr@fsij.org>

	* test/test_pty.rb (test_pty_check_default): call PTY.check until
	  "cat" command is finished.

Fri Dec 23 06:03:00 2011  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* common.mk: add "check succeeded" message.

	* README, README.ja: follow above change.

Fri Dec 23 06:00:39 2011  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* ext/bigdecimal/bigdecimal.h: add satisfy cc-mode comment.
	* util.c: ditto.

Fri Dec 23 00:08:25 2011  Tanaka Akira  <akr@fsij.org>

	* test/test_pty.rb (test_pty_check_default): "cat" may not terminated
	  in the 0.1 second.

Thu Dec 22 23:37:25 2011  Tanaka Akira  <akr@fsij.org>

	* test/ruby/test_thread.rb (test_condvar_timed_wait): don't test the
	  maximum sleep time.  Ruby is not a real-time system.

Thu Dec 22 22:37:45 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* thread_pthread.c (ping_signal_thread_list): remove return value.
	* thread_pthread.c (check_signal_thread_list): add a new function to
	  check if signal thread list is empty.
	* thread_pthread.c (thread_timer): check signal thread list after
	  timer_thread_function(). main thread might be added into signal thread
	  list during timer_thread_function().

Thu Dec 22 00:40:24 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* ext/bigdecimal/bigdecimal.c (VpMult, VpCtoV, VpSqrt): remove assigned
	  but unused variables.

Wed Dec 21 18:28:22 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* common.mk (newline.c, miniprelude.c): revert r33949 because the change
	  broke mswin build, and the changer said no reason about the change.
	  [ruby-dev:45016] [Bug #5783]

Wed Dec 21 12:35:24 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/bigdecimal/bigdecimal.c (BigDecimal_s_allocate): follow
	  Allocation Framework.  [Bug #5775]

Wed Dec 21 02:25:36 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/emitter.c: fixing clang warnings. Thanks Joey!

Wed Dec 21 01:06:00 2011  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* ext/bigdecimal/README: Update redmine.ruby-lang.org to bugs.ruby-lang.org
	* ext/socket/ancdata.c: ditto
	* test/-ext-/wait_for_single_fd/test_wait_for_single_fd.rb: ditto
	* test/syck/test_yaml.rb: ditto
	* doc/ChangeLog-1.9.3: ditto

Tue Dec 20 23:50:12 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* PStore content update perf optimization. Patch by Masaki Matsushita.
	  See #5248.

	* lib/pstore.rb (save_data):

	  * Delete inadequate Marshal check.

	  * Deferred file truncation: when writing the new content, truncate
	    the saved file to the data size after writing the data, instead of
	    truncating whole bytes before writing data.

	  * Deferred MD5 calculation: when comparing MD5 hash to check the
	    content modification, calculate MD5 hash of new data iif the
	    content length is differ from the old one.

	  * Compare content size with String#bytesize instead of String#size.

Tue Dec 20 21:00:30 2011  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: uses to_integer instead.
	* test/date/test_switch_hitter.rb: added a test.

Tue Dec 20 15:04:18 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* Make sure to clear $! when ignoring an exception

	* ext/openssl/ossl.c (ossl_pem_passwd_cb0, ossl_verify_cb):
	  pem_passwd_cb and verify_cb ignores the exception raised in a
	  callback proc so it should clear $! for subsequent execution.

	  That's said, both subsequent processes for pem_passwd_cb and
	  verify_cb raises another exception before leaking $! to Ruby world.
	  We cannot test this fix in Ruby land.

	* test/openssl/test_pkey_rsa.rb
	  (test_read_private_key_pem_pw_exception): Test for pem_passwd_cb +
	  exception.

Tue Dec 20 11:49:13 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/date/test_date_base.rb (test_jd): tests for
	  [ruby-dev:45008].

Tue Dec 20 10:20:48 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/date/date_core.c (wholenum): fix the type of the return value.

Tue Dec 20 05:03:24 2011  Eric Hodel  <drbrain@segment7.net>

	* README.ja:  Update redmine.ruby-lang.org to bugs.ruby-lang.org
	* README:  ditto
	* common.mk:  ditto
	* man/erb.1:  ditto
	* man/irb.1:  ditto
	* man/ri.1:  ditto
	* man/ruby.1:  ditto
	* sparc.c:  ditto
	* tool/install-sh:  ditto

Tue Dec 20 02:15:18 2011  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c:  [ruby-dev:45008].

Sun Dec 18 18:52:37 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* vm.c (vm_define_method): improve guard of iseq from GC.  Fix
	  failure or segmentation fault in test_singleton_method(TestGc)
	  on sparc Solaris10 compiled with Oracle Solaris Studio 12.2.
	  [Bug #5762] [ruby-dev:45000] [Bug #4178]

Sun Dec 18 14:34:31 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/bigdecimal/bigdecimal.c (Init_bigdecimal): does not follow
	  allocation framework right now.  [ruby-core:41710] [Bug #5773]

Sun Dec 18 12:42:48 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/to_ruby.rb: BigDecimals can be restored
	  from YAML.
	* ext/psych/lib/psych/visitors/yaml_tree.rb: BigDecimals can be dumped
	  to YAML.
	* test/psych/test_numeric.rb: tests for BigDecimal serialization

Sun Dec 18 12:03:13 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/scalar_scanner.rb: Strings that look like dates
	  should be treated as strings and not dates.

	* test/psych/test_scalar_scanner.rb: corresponding tests.

Sun Dec 18 09:43:21 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* test/thread/test_queue.rb (test_thr_kill): extend timeout.
	  this test takes a long time at slow machine.

Sun Dec 18 09:36:51 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* test/ruby/envutil.rb (invoke_ruby): remove :timeout option before
	  pass it to Kernel#spawn.

Fri Dec 16 17:18:38 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* README, README.ja: 'make check' is preferable to 'make test'.

Thu Dec 15 23:16:13 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* error.c (builtin_type_name): don't return pointer to the buffer of
	  temporary String object.

Thu Dec 15 17:56:58 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (argf_type): make typed data.

Thu Dec 15 17:40:28 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (rb_check_type): fix typo.

Thu Dec 15 14:48:35 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/strscan/strscan.c: use typed data with
	  onig_region_memsize().

Thu Dec 15 14:33:33 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (rb_check_typeddata): refine error message with
	  including expected struct name.

Thu Dec 15 13:15:51 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* regcomp.c (onig_region_memsize): implemented for memsize_of().

	* ext/objspace/objspace.c (memsize_of): use it.

Thu Dec 15 10:44:54 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* array.c (rb_ary_reject_bang, rb_ary_delete_if): update rdoc.
	  documentation from Thomas Leitner <t_leitner AT gmx.at> in
	  [ruby-core:41616].  [Bug #5752]

Thu Dec 15 10:10:43 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/test_require.rb (test_race_exception): get rid of
	  not-guaranteed timing issue.  [ruby-core:41655] [Bug #5754]

Wed Dec 14 21:58:42 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_io_m17n.rb
	  (TestIO_M17N#test_{read_with_binmode_and_get[cs]}): only for Windows.

Wed Dec 14 19:57:23 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* common.mk,Makefile.in,win32/Makefile.sub (ECHO1): move platform
	  specific hack from common.mk to Makefile.in (and win32/Makefile.sub).
	  [Bug #5711]

	* lib/mkmf.rb: we can generate Makefile as we like.

Wed Dec 14 19:22:33 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c, include/ruby/win32.h (rb_w32_fd_is_text): new function.

	* win32/win32.c (init_stdhandle): set default mode of stdin as binmode.

	* io.c (set_binary_mode_with_seek_cur): new function to replace
	  SET_BINARY_MODE_WITH_SEEK_CUR macro.  now returns previous mode of the
	  fd and take care of LF in rbuf.

	* io.c (do_writeconv): set text mode when needed.

	* io.c (io_read): need to change the mode of the IO to binmode
	  temporally when the length for IO#read, because IO#read with length
	  must behave so.

	* test/ruby/test_io_m17n.rb (TestIO_M17N#test_{read_with_length,
	  read_with_length_binmode,get[cs]_and_read_with_binmode,
	  read_with_binmode_and_get[cs],read_write_with_binmode}): tests for
	  above changes.

	all patches are written by Hiroshi Shirosaki. [ruby-core:41496]
	[Feature #5714]

Wed Dec 14 15:28:31 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* transcode.c (str_encode): about the extension of :fallback
	  option since 1.9.3.

Wed Dec 14 12:19:59 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* load.c (load_unlock): release loading barrier and then remove it
	  from loading_table if it is not in-use.  [Bug #5754]

	* thread.c (rb_barrier_release, rb_barrier_destroy): return
	  whether any other threads are waiting on it.

Wed Dec 14 11:23:45 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* thread_pthread.c (ubf_select): call rb_thread_wakeup_timer_thread()
	  only when it is not timer_thread. [Bug #5757] [ruby-dev:44985]
	  patched by Tomoyuki Chikanaga.

Wed Dec 14 10:20:08 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* load.c (load_lock): delete the loading barrier if it has been
	  destroyed.

	* thread.c (rb_barrier_wait): return nil for recursive lock
	  instead of false, to distinguish it from destroyed barrier.

Wed Dec 14 01:24:55 2011  okkez  <okkez000@gmail.com>

	* thread_pthread.c (rb_thread_create_timer_thread): fix memory
	  leak. [ruby-dev:44904] [Bug #5688]

Wed Dec 14 00:01:15 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (primary): point method name line.  [ruby-core:40936]
	  [Bug #5614]

Tue Dec 13 23:43:48 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* error.c (name_err_mesg_to_str): clear rb_thread_t::errinfo when
	  ignore exception under rb_protect(). [ruby-core:41612] [Bug #5755]

	* test/ruby/test_exception.rb (test_exception_in_name_error_to_str):
	  add a corresponding test.

Tue Dec 13 16:13:29 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* load.c (load_unlock): all threads requiring one file should
	  share same loading barrier, so it must be kept alive while those
	  are waiting on it.  [ruby-core:41618] [Bug #5754]

Tue Dec 13 07:30:14 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* lib/webrick/httpresponse.rb (setup_header): 1xx responses
	  are allowed to have Keep-Alive connections.

	* test/webrick/test_httpresponse.rb: corresponding test.

Tue Dec 13 07:13:28 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* lib/webrick/httpresponse.rb (setup_header): 204 and 304 responses
	  are allowed to have a Keep-Alive connection. [ruby-core:41581]

	* test/webrick/test_httpresponse.rb: corresponding test.

Tue Dec 13 06:29:39 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (parser_magic_comment): should pass the proper value.
	  [ruby-dev:44984][Bug #5753]

Tue Dec 13 05:50:07 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_insnhelper.c (vm_yield_setup_block_args): splat single
	  argument if optional arguments are defined not only mandatory or
	  post arguments.  [ruby-core:41557] [Bug #5730]

Mon Dec 12 22:35:39 2011  Shugo Maeda  <shugo@ruby-lang.org>

	* parse.y (stmt_or_begin): changed the error message for BEGIN not
	  at toplevel.  [ruby-dev:44963] [Bug #5738]

Mon Dec 12 17:29:01 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* README: Fixed SupportedPlatforms URL in the README.
	  patched by eMxyzptlk. https://github.com/ruby/ruby/pull/62

Mon Dec 12 17:26:51 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* load.c (rb_feature_p): lazy assigned load_path searched in
	  loading_table were not expanded, but all features, pushed to
	  loading table, are expanded.  a patch by Yura Sokolov
	  <funny.falcon AT gmail.com> in [ruby-core:41545]. [Bug #5727]

Mon Dec 12 15:41:03 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/stringio/stringio.c (strio_truncate): fix typo.  patched by
	  Nick Howard <ndh AT baroquebobcat.com>.
	  https://github.com/ruby/ruby/pull/65

Sun Dec 11 12:19:17 2011  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/imap.rb: includes the sequence number of UID in a error
	  message.  suggested by art lussos.
	  [ruby-core:41413] [Feature #5692]

Sun Dec 11 11:42:10 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* ext/syslog/syslog.c: fix a typo. [ruby-core:41585] [Bug #5740]

Sun Dec 11 10:48:16 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (exit_initialize): deal with true and false as well as
	  Kernel#exit.  [ruby-dev:44951] [Bug #5728]

Sun Dec 11 10:37:47 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* object.c (rb_check_to_int): new function to convert a VALUE to
	  an Integer if possible, but returns nil instead of raising an
	  exception otherwise.

Sun Dec 11 10:34:39 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* process.c (rb_exit_status_code): extract from rb_f_exit_bang and
	  rb_f_exit.  assume 0 to be success in Kernel#exit! too.

Fri Dec  9 19:24:31 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* enc/trans/iso-8859-16-tbl.rb: add ISO-8859-16 converter.

	* enc/trans/single_byte.trans: ditto.

Fri Dec  9 14:28:40 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* file.c (file_path_convert): don't convert it when the path string is
	  ascii only. [ruby-core:41556] [Bug #5733]
	  tests are contributed by nobu.

Fri Dec  9 08:00:15 2011  Luis Lavena  <luislavena@gmail.com>

	* include/ruby/win32.h: undef stat to silence mingw-w64 stat
	  redefinition warnings (GCC 4.6.3).

Thu Dec  8 23:38:24 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* variable.c (set_const_visibility): clear inline-cache when constant's
	  visibility is modified. [ruby-dev:44929]

	* test/ruby/test_module.rb (test_private_constants_clear_inlinecache):
	  add test for it.

Thu Dec  8 23:26:11 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/extmk.rb (extract_makefile): should sort after map, not before
	  it.  in this case there is no difference, but we should write better
	  code.  this bad smell was caught by nagachika.

Thu Dec  8 22:31:13 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/extmk.rb (extract_makefile): need to sort the array of current
	  srcs before comparing to the sorted old srcs.
	  fixed the problem that the configuring stage of exts were always
	  run, introduced at r33801.

Thu Dec  8 13:26:24 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/rexml/test_order.rb (OrderTester#test_more_ordering): use
	  Zlib::GzipReader.open instead of Zlib::GzipReader.new with File.new.
	  fixed a test error on Windows introduced at r33946.

Thu Dec  8 13:11:26 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_process.rb (TestProcess#test_sete[gu]id): silently
	  skip if not implemented such functions (such as, on Windows).
	  fixed test errors on Windows introduced at r33953.

Thu Dec  8 12:57:50 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/socket/extconf.rb: forgotten to define HAVE_SOCKETPAIR for
	  windows.
	  fixed test errors on Windows introduced at r33947.

Thu Dec  8 12:11:06 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (RUBY_WERROR_FLAG): append all warning flags which
	  are enabled to compile, so that printf format modifiers properly
	  fail.  [ruby-core:41351] [Bug #5679]

Thu Dec  8 07:20:15 2011  Eric Hodel  <drbrain@segment7.net>

	* doc/re.rdoc:  Document difference between match and =~, options with
	  Regexp.new and global variables.  Patch by Sylvain Daubert.
	  [Ruby 1.9 - Bug #5709]

Thu Dec  8 06:53:10 2011  Eric Hodel  <drbrain@segment7.net>

	* doc/re.rdoc:  Fix example code to match documentation.  Patch by
	  Jarno Lamberg.  [Ruby 1.9 - Bug #5624]

Wed Dec  7 19:04:22 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (rpath): fix typo in the help string.  a patch from
	  Yuji Yamano <yyamano AT kt.rim.or.jp> in [ruby-list:48568].

Wed Dec  7 18:55:56 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm.c (vm_set_top_stack, vm_set_eval_stack): check for stack
	  overflow with stack_max before push new frame. [ruby-core:41520]
	  [Bug #5720]

	* vm.c (vm_set_main_stack): no stack overflow chances after
	  vm_set_eval_stack().

Wed Dec  7 09:58:15 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/bigdecimal/bigdecimal.c:  Document +@, -@, hash, INFINITY, Nan.
	  Patch by Sylvain Daubert.  [Ruby 1.9 - Feature #5622]

Wed Dec  7 09:48:00 2011  Eric Hodel  <drbrain@segment7.net>

	* io.c (Init_IO):  Mention io/console methods.  [Ruby 1.9 - Bug #5602]
	* ext/io/console/console.c:  Mention that io/console must be required
	  similar to lib/time.rb

Wed Dec  7 08:04:31 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb (module Psych): parse and load methods take
	  an optional file name that is used when raising Psych::SyntaxError
	  exceptions
	* ext/psych/lib/psych/syntax_error.rb (module Psych): allow nil file
	  names and handle nil file names in the exception message
	* test/psych/test_exception.rb (module Psych): Tests for changes.

Tue Dec  6 18:26:33 2011  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/dbm.c: use db_version() instead of DB_VERSION_STRING to
	  detect runtime Berkeley DB version.
	  use dpversion instead of _QDBM_VERSION to detect runtime QDBM
	  version.
	  [ruby-dev:44948]

Tue Dec  6 12:30:41 2011  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: detect gdbm_version in libgdbm.

	* ext/dbm/dbm.c: make DBM::VERSION more informative for gdbm, qdbm and
	  Berkeley DB 1.x.  [ruby-dev:44944]

Tue Dec  6 07:26:37 2011  Eric Hodel  <drbrain@segment7.net>

	* range.c:  Improve documentation for Range.  Patch by Chris Zetter.
	  [Ruby 1.9 - Bug #5656]

Mon Dec  5 19:08:04 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* regparse.c (PFETCH_READY): separate gcc specific trick.

Mon Dec  5 19:01:59 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* process.c (proc_seteuid_m): fix argument.

	* test/ruby/test_process.rb (test_geteuid): fix typo.

	* test/ruby/test_process.rb (test_getegid, test_set[eg]uid): add.

Mon Dec  5 18:56:55 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* bignum.c (big_rshift), compile.c (validate_label,
	  iseq_build_from_ary_exception), cont.c (cont_capture), dir.c
	  (dir_open_dir), gc.c (objspace_each_objects), io.c (pipe_open)
	  (rb_io_advise), parse.y (parser_compile_string)
	  (rb_parser_compile_file), proc.c (binding_free), process.c
	  (rb_proc_exec_n, rb_seteuid_core, proc_setegid, rb_setegid_core)
	  (p_uid_exchange, p_gid_exchange), regparse.c (strdup_with_null),
	  signal.c (sig_dfl), vm.c (rb_iseq_eval, rb_iseq_eval_main),
	  vm_insnhelper.c (vm_expandarray): suppress
	  unused-but-set-variable warnings.

	* class.c (rb_obj_methods), compile.c (iseq_compile_each),
	  iseq.c(iseq_load, rb_iseq_parameters), pack.c (pack_pack),
	  regcomp.c (is_not_included, update_string_node_case_fold),
	  transcode.c (rb_econv_open0, make_replacement),
	  vm_eval.c (raise_method_missing): remove unused variable.

	* signal.c (reserved_signal_p): static.

Mon Dec  5 14:27:23 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* include/ruby/{subst.h,win32.h}, ext/socket/rubysocket.h: revert
	  r33876.  [ruby-core:41475] [Bug #5706]

	* ext/socket/extconf.rb: the alternative hack for [Bug #5675].

Mon Dec  5 10:18:45 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/zlib/zlib.c (rb_gzreader_initialize): revert a part of r33937.
	  1st, to change the mode of an IO is very sensitive problem, so
	  the maintainer of this library should judge it.
	  2nd, usually Zlib::GzipReader.new is not called directly.  #initialize
	  is called via .open, and in the method the I/O is opened in binary
	  mode, so there is no problem without changing the mode in #initialize.

Sun Dec  4 22:53:12 2011  Tanaka Akira  <akr@fsij.org>

	* lib/tempfile.rb: don't use lock directory.  [ruby-dev:39197]

Sun Dec  4 22:34:43 2011  Tanaka Akira  <akr@fsij.org>

	* lib/tempfile.rb (Tempfile::MAX_TRY): remove unused constant.

Sun Dec  4 12:11:28 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* lib/pp.rb: fix rdoc.

Sun Dec  4 12:03:16 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/delegate.rb (Delegator#methods): Kernel#methods receives
	  zero or one argument. [ruby-core:37118] [Bug #4882]

Sun Dec  4 10:15:00 2011  Luis Lavena  <luislavena@gmail.com>

	* ext/zlib/zlib.c (rb_gzreader_initialize): use binary mode by default
	  under Windows. Patch by Hiroshi Shirosaki. [ruby-core:40706]
	  [Feature #5562]

	* include/ruby/encoding.h (void rb_econv_binmode): define NEWLINE
	  decorator.

	* io.c (rb_cloexec_fcntl_dupfd): Introduce NEED_READCONV and
	  NEED_WRITECONV to replace universal newline decorator by CRLF only
	  when required to improve file reading and writing under Windows.
	  Patch by Hiroshi Shirosaki. [ruby-core:40706] [Feature #5562]
	* io.c (do_writeconv): adjust binary mode if required.
	* io.c (read_all, appendline, swallow, rb_io_getline_1): ditto.
	* io.c (io_getc, rb_io_each_codepoint, rb_io_ungetc): ditto.
	* io.c (rb_io_binmode, rb_io_ascii8bit_binmode): ditto.
	* io.c (rb_io_extract_modeenc, rb_sysopen): ditto.
	* io.c (pipe_open, prep_stdio, io_encoding_set): ditto.
	* io.c (rb_io_s_pipe, copy_stream_body): ditto.

	* test/ruby/test_io_m17n.rb (EOT): add test for pipe and stdin in
	  binary mode.

	* win32/win32.c (init_stdhandle): remove O_BINARY from stdhandle
	  initialization.
	* win32/win32.c (rb_w32_write): use FTEXT mode accordingly.

Sat Dec  3 20:49:16 2011  Yusuke Endoh  <mame@tsg.ne.jp>

	* variable.c (set_const_visibility): print a warning when no argument
	  is passwd to Module#private_constant.  [ruby-list:48558]

	* vm_method.c (set_method_visibility): ditto for
	  Module#private_class_method.

Sat Dec  3 20:43:14 2011  Yusuke Endoh  <mame@tsg.ne.jp>

	* variable.c (set_const_visibility): Module#private_constant has
	  changed the visibility of only the first argument.  Now it changes
	  all of them.  [ruby-list:48558]

	* test/ruby/test_module.rb: add a test for above.

Sat Dec  3 07:17:29 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* Makefile.in (CFLAGS): append ARCH_FLAG.

	* configure.in (ARCH_FLAG): exclude from CFLAGS.

	* configure.in (UNIVERSAL_INTS): include short int.  fix for
	  test/mkmf.

Fri Dec  2 15:48:08 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/bigdecimal/bigdecimal.c (VpAllocReal): reduce extra frac.

Fri Dec  2 15:41:24 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in: check whether -pie or -Wl,-pie is valid as
	  LDFLAGS.  [ruby-core:41438] [Bug#5697]

	* configure.in: use $linker_flag for LDFLAGS option which is not
	  limited to particular platforms.

Thu Dec  1 23:21:58 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* thread_pthread.c (thread_timer): call prctl(PR_SET_NAME) only if
	  PR_SET_NAME is available.

Thu Dec  1 22:31:16 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (linux_get_maxfd): change local variable name.

Thu Dec  1 16:59:24 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/socket/extconf.rb: add arguments for macro calls.
	  [ruby-core:41370] [Bug#5681]

Thu Dec  1 16:20:16 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (MakeMakefile#try_func): fix broken patch at r33834.

Thu Dec  1 14:43:17 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/bigdecimal/bigdecimal.h (Real): suppress false warning from
	  clang.  [ruby-core:41418] [Bug#5693]

Thu Dec  1 10:31:55 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (LDFLAGS): -fstack-protector is always needed to
	  link static library created with it.  [ruby-core:41387]
	  [Bug#5686]

Thu Dec  1 07:03:51 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: add sys/prctl.h test.
	* thread_pthread.c (thread_timer): call prctl(PR_SET_NAME) to change
	  thread name. It may help to debug.

Wed Nov 30 23:35:45 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* variable.c (rb_path2class): don't raise NameError when the middle
	  constant of the path is not defined but defined on toplevel.
	  [ruby-core:41410] [Bug #5691]

Wed Nov 30 20:02:02 2011  Martin Duerst  <duerst@it.aoyama.ac.jp>

	* transcode.c: Simplified rb_econv_binmode, avoided a warning on cygwin.

Wed Nov 30 08:57:07 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/mkmf.rb:  Use MakeMakefile's rm_f to avoid conflict with Rake or
	  FileUtils.
	* test/ruby/test_module.rb:  Hide MakeMakefile's inclusion in Object

Wed Nov 30 09:12:43 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* lib/rdoc/encoding.rb (RDoc::Encoding.read_file): fixup newline chars
	  on Windows.
	  see https://github.com/rdoc/rdoc/issues/87

	* test/rdoc/test_rdoc_markup_pre_process.rb
	  (TestRDocMarkupPreProcess#test_include_file,
	  TestRDocMarkupPreProcess#test_include_file_encoding_incompatible):
	  follow above change.

Wed Nov 30 09:09:37 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/parser.c (parse): parse method can take an option file
	  name for use in exception messages.
	* test/psych/test_parser.rb: corresponding tests.

Tue Nov 29 09:07:59 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/mkmf.rb:  Fix indentations of constants at end of module.
	  Document some constants.

Tue Nov 29 09:58:23 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_write_error2): suppress unused variable warning.

Tue Nov 29 07:45:26 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/mkmf.rb:  Wrap comments to 78 columns and clean up formatting.

Tue Nov 29 05:54:18 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/mkmf.rb:  Wrap mkmf.rb in module MakeMakefile to clean up Object
	  documentation.  [Ruby 1.9 - Feature #5658]
	* ext/extmk.rb:  Use MakeMakefile::CONFIG instead of Object::CONFIG
	* test/mkmf/base.rb:  ditto

Tue Nov 29 00:08:57 2011  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* common.mk (INSTRUBY_ARGS): added --mantype to apply mdoc2man.rb
	  to man pages.  Fixes #5598.
	  (do-install-nodoc, do-install-local, do-install-man,
	  dont-install-nodoc, dont-install-local, dont-install-man):
	  No longer needs --mantype.

	  Reported by Rainer Orth <ro AT cebitec.uni-bielefeld.de>,
	  patch by George Koehler <xkernigh AT netscape.net>.

Mon Nov 28 22:26:31 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/rake/test_rake_directory_task.rb
	  (TestRakeDirectoryTask#test_directory_win32): shouldn't create any
	  file/directory on root directory.  create on @tempdir (= Dir.pwd).
	  see https://github.com/jimweirich/rake/issues/91

Mon Nov 28 12:57:29 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_write_error2): fwrite() returns ssize_t.

Mon Nov 28 12:47:19 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* parse.y (nodetype, nodeline): static.  these functions are for
	  debugging, and not intend to be public.

Mon Nov 28 12:37:54 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* gc.c (initial_params): static.  it seems to be forgotten at r33501.

Mon Nov 28 12:32:24 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* include/ruby/win32.h, win32/win32.c (GetCurrentThreadHandle): remove
	  unused old API.

Mon Nov 28 12:29:20 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/mkexports.rb (Exports#initialize): remove old symbol name.

Mon Nov 28 12:15:28 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/mkexports.rb (Exports#read_substitution): need to read
	  from subst.h too.  [Bug #5675]

Mon Nov 28 11:46:35 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* io.c (rb_io_flush): release GVL during fsync() on Windows.

Mon Nov 28 11:00:25 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* include/ruby/subst.h: typo of r33876.

Mon Nov 28 10:36:00 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/subst.h: moved Windows specific substitutions from
	  win32.h.

	* ext/socket/rubysocket.h: include ruby/subst.h.  [Bug #5675]

Mon Nov 28 10:20:58 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/{Makeilfe.sub,win32.c} (FILE_COUNT, FILE_READPTR): move the
	  definitions from config.h to win32.c.  I dared to have left such
	  macros, for other future compiler support.
	  [ruby-core:41313] [Bug #5674]

Mon Nov 28 09:28:30 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (rb_w32_uchmod): typo.  [Bug#5671] [ruby-dev:44898]

	* test/ruby/test_file.rb (TestFile#test_chmod_m17n): test of above bug.

Sun Nov 27 21:25:33 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: added -fno-strict-overflow. it suppress annoying
	  -Wstrict-overflow warning.

Sun Nov 27 20:58:02 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (rb_write_error2): get rid of warning on linux. fwrite
	  of glibc is tagged __attribute__ ((__warn_unused_result__))
	  if _FORTIFY_SOURCE != 0.
	* vm_dump.c (rb_vm_bugreport): ditto.

Sun Nov 27 19:09:02 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (stack_protector): disable on mingw.  [Bug#5676]

	* Makefile.in (DLDFLAGS): also needs -fstack-protector.
	  [Bug#5676]

Sun Nov 27 14:13:33 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: add -fstack-protector into XLDFLAGS as well as
	  XCFLAGS if stack-protector is used.

Sun Nov 27 13:09:25 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: workaround to avoid MacOS X build error.
	  Maybe autoconf 2.61 is slightly buggy. [ruby-core:41316]

Sun Nov 27 04:57:11 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in (--no-undefined): r33840 breaks FreeBSD and DragonFly
	  with gcc 4.4 or later. Their environ is in /usr/libexec/ld-elf.so.1,
	  so it will be false negative.

Sun Nov 27 04:55:45 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/http.rb (Net::HTTP::SSL_IVNAMES): rerefix 33701.
	  SSL_ATTRIBUTES stores names for set_params, they are symbol.
	  SSL_IVNAMES stores instance variable names.

Sun Nov 27 00:16:07 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (copy_stream_body): use 0666 for permission argument for open.
	  [ruby-core:40865]

Sat Nov 26 23:01:38 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_engine.rb: remove side effect of generic engine
	  load by explicitly loading software-based "openssl" engine for
	  all tests.

Sat Nov 26 20:41:48 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/http.rb (Net::HTTP.get_response): enable use_ssl
	  if given URI object is https.
	  patched by Mark Ferlatte [ruby-core:40665] [Bug #5545]

	* lib/net/http.rb (Net::HTTP.post_form): ditto.

Sat Nov 26 20:01:18 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/http.rb (Net::HTTP::SSL_ATTRIBUTES): refix 33701.
	  store instance variable symbol names.

Sat Nov 26 15:40:25 2011  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* .travis.yml (script): should be ./configure

Sat Nov 26 15:39:18 2011  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* .travis.yml (before_script): wrong name, sorry.

Sat Nov 26 15:31:34 2011  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* .travis.yml (before-script): autoconf required.

Sat Nov 26 15:24:05 2011  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* .travis.yml: Travis enable.

Sat Nov 26 10:47:50 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/extconf.rb: remove checks for available functions.
	* ext/openssl/missing.h: ditto.
	  Thanks, Tim Mooney for reporting this!
	  [Bug #5432] [ruby-core:40088]

Sat Nov 26 10:22:28 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_ssl.c: add comment on where to find implementation
	  of OpenSSL::SSL::SSLSocket#session.

Sat Nov 26 05:00:25 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (--no-undefined): RUBY_TRY_CFLAGS does nothing for
	  linker flags.  use RUBY_TRY_LDFLAGS.

Fri Nov 25 11:37:07 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (ioctl_narg_len, linux_iocparm_len): reinstantiate linux
	  specific narg length calculation.
	* test/ruby/test_io.rb (test_ioctl_linux2): add new test for old and
	  unstructured ioctl.

Fri Nov 25 10:39:14 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* Makefile.in (EXTLDFLAGS): export it.
	* configure.in: add --no-undefined if --enable-shared is specified.
	  Gentoo enabled this option long time. Also, export EXTLDFALGS.

Fri Nov 25 08:48:35 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: turn on PIE if --enable-shared is not specified.

Fri Nov 25 08:05:07 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: add -fstack-protector. It help to protect us from
	  stack smashing attack.

Fri Nov 25 08:03:28 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: add -D_FORTIFY_SOURCE=2. It provide some compile
	  time and runtime check for security.

Fri Nov 25 08:00:23 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* lib/mkmf.rb: get rid of warnings of mkmf.rb if -Wmissing-declarations
	  and/or -Wold-style-definition warnings if specified.
	  Patch by Nikolai Weibull. Thank you! [Bug #5459] [ruby-core:40200]

Fri Nov 25 07:46:09 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: add -Wall always.

Thu Nov 24 20:02:40 2011  Tanaka Akira  <akr@fsij.org>

	* test/openssl/test_engine.rb: use IO#reopen to restore stderr.

Thu Nov 24 19:59:56 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_io_reopen): re-initialize buffering mode for stdout and
	  stderr.

Thu Nov 24 11:12:48 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (rb_io_fsync,rb_io_fdatasync): release GVL during fsync().
	  fsync() and fdatasync() may take a long time on slow disks and/or
	  if there is much dirty data.
	  Patch by Eric Wong. [Feature #5665] [ruby-core:41247]

Thu Nov 24 10:05:02 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_engine.rb: Suppress output from 'openssl'
	  engine's RC4 cipher.
	  [Bug #5633] [ruby-core:41026]

Thu Nov 24 08:05:02 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_pkey_dsa.c: remove redundant colon from error
	  message.
	* ext/openssl/ossl_ssl.c: ditto.
	* ext/openssl/ossl_pkey_rsa: ditto.
	  patched by Eric Hodel [Bug #5604] [ruby-core:40896]

Wed Nov 23 20:03:43 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (ioctl_narg_len): don't use _IOC_SIZE macro on Linux.
	  On Linux some constants for ioctl(2) doesn't include the size of
	  its return value and 16bit value; for example FIONREAD 0x541B.
	  Moreover the manual, ioctl_list(2),  says "Note  that  the  size
	  bits  are  very unreliable: in lots of cases they are wrong,
	  either because of buggy macros using sizeof(sizeof(struct)),
	  or because of legacy values."
	  So we shouldn't use it.

Tue Nov 22 18:07:32 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (_pioinfo): need to declare _pioinfo() before using
	  _osfhnd and other macros which uses _pioinfo() internally.

Tue Nov 22 17:49:45 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/win32.c (_pioinfo): make an inline function.

Tue Nov 22 11:26:08 2011  NARUSE, Yui  <naruse@ruby-lang.org>

Tue Nov 22 11:33:58 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/win32.c (dupfd): argument of _osfhnd and so on should not
	  have side effect.

Tue Nov 22 11:26:08 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* bignum.c (rb_big_divide): refix of r33536. Don't change behavior of Bignum#/.
	  [ruby-core:40429] [Bug #5490]

Tue Nov 22 10:46:57 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* numeric.c (ruby_float_step): improve floating point calculations.
	  [ruby-core:35753] [Bug #4576]

	* numeric.c (ruby_float_step): correct the error of floating point
	  numbers on the excluding case.
	  patched by Masahiro Tanaka [ruby-core:39608]

	* numeric.c (ruby_float_step): use the end value when the current
	  value is greater than or equal to the end value.
	  patched by Akira Tanaka [ruby-core:39612]

Tue Nov 22 06:59:21 2011  Tanaka Akira  <akr@fsij.org>

	* test/ruby/test_io.rb (test_fcntl_dupfd): there is no known platform
	  which don't have F_DUPFD.  [ruby-dev:44874]

Tue Nov 22 04:46:22 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb: remove autoload from psych
	* ext/psych/lib/psych/json.rb: ditto

Tue Nov 22 00:44:59 2011  Tanaka Akira  <akr@fsij.org>

	* test/ruby/test_io.rb (test_fcntl_dupfd): the argument of F_DUPFD is
	  minimum file descriptor.

Tue Nov 22 00:25:17 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (linux_get_maxfd): get rid of a warning.

Mon Nov 21 23:39:14 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (linux_get_maxfd): new function to find maximum fd on Linux.
	  (rb_close_before_exec): use linux_get_maxfd.

Mon Nov 21 06:16:24 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* cont.c (fiber_switch): ignore fiber context switch
	  because destination fiber is same as current fiber.
	  With out this, it may segv on FreeBSD 9.
	  patched by Koichi Sasada.

Sun Nov 20 23:22:42 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/extmk.rb (extract_makefile, extmake): regenerate makefiles
	  if globbed source file list is changed.

	* lib/mkmf.rb (create_makefile): store ORIG_SRCS.

Sun Nov 20 22:43:03 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* enc/unicode.c (PROPERTY_NAME_MAX_SIZE): +1.
	  reported by Ken Takata. [ruby-dev:44894][Bug #5652]

Sun Nov 20 11:01:28 2011  Tanaka Akira  <akr@fsij.org>

	* lib/set.rb (SortedSet.setup): remove old_init after initialize
	  method is redefined.  The remove before redefinition makes the
	  warning prevention fragile.  [ruby-dev:44892]

Sun Nov 20 04:01:45 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* Makefile.in (enc/unicode/name2ctype.h): remove duplicated
	  ifdefs.

Sat Nov 19 19:31:47 2011  Tanaka Akira  <akr@fsij.org>

	* time.c (TIME_COPY_GMT): copy vtm.utc_offset and vtm.zone too.
	  patch by Tomoyuki Chikanaga.
	  [ruby-dev:44827] [Bug #5586]

Sat Nov 19 16:36:57 2011  Tanaka Akira  <akr@fsij.org>

	* test/net/http/test_http.rb: remove temporally files in ensure clause.

Sat Nov 19 08:18:41 2011  Tanaka Akira  <akr@fsij.org>

	* test/net/http/test_http.rb: remove temporally files.

Fri Nov 18 17:18:16 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/io/console/console.c (console_raw, console_set_raw)
	  (console_getch): optional parameters.  [EXPERIMENTAL]

Fri Nov 18 16:12:11 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/io/console/console.c (console_cooked, console_set_cooked):
	  new methods to reset cooked mode.  [EXPERIMENTAL]

Fri Nov 18 13:20:26 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/unit/assertions.rb (MINI_DIR): quick dirty hack to get rid of
	  warnings when using assert/assert_respond_to.

Fri Nov 18 13:03:38 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* io.c (rb_cloexec_open): set O_NOINHERIT instead of O_CLOEXEC if it is
	  available (for Windows).

	* win32/win32.c (fcntl): on F_DUPFD, determine the inheritance of the
	  new handle by O_NOINHERIT flag of original fd.

Fri Nov 18 08:00:41 2011  Ryan Davis  <ryand-ruby@zenspider.com>

	* lib/minitest/*: Imported minitest 2.8.1 (r6750)
	* test/minitest/*: ditto
	* configure.in: Improved gcc-llvm error message to help people migrate.

Thu Nov 17 20:43:34 2011  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: revert a part of the patch in [ruby-dev:41531].
	  don't use db.h with other headers.  [ruby-dev:44884].

Thu Nov 17 20:23:03 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* benchmark/bm_io_select[23].rb: use Process::RLIMIT_NOFILE only when
	  it is defined.  if it is not defined, assume 64 as the max of fds.

Thu Nov 17 10:36:46 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb (load_file): make sure opened yaml files are
	  also closed. [ruby-core:41088]

Wed Nov 16 18:13:52 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* Makefile.in (LIBRUBY_A): check if generated linked library is
	  valid for extconf.

Wed Nov 16 13:51:40 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* bignum.c (rb_big2ulong): need to calc in unsigned long, because
	  the range of VALUE is larger than it on LLP64 platform, such as Win64.
	  this change fixes the failures of test/-ext-/num2int.

Wed Nov 16 12:02:47 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/webrick/test_cgi.rb (TestWEBrickCGI#start_cgi_server): there are
	  no guarantee of existence of RbConfig::CONFIG['LIBPATHENV'].
	  it only exists in Unix-like environments.

	* test/webrick/test_filehandler.rb
	  (WEBrick::TestFileHandler#test_script_disclosure): ditto.

Wed Nov 16 11:34:20 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* io.c (argf_next_argv): wrong timing of setting ecflags.
	  fixed the failure of TestArgf#test_textmode introduced at r33662.

Wed Nov 16 10:45:00 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/-test-/num2int/num2int.c: remove an unnecessary and wrong decl
	  of rb_stdout.  it's declared in ruby.h correctly.

Wed Nov 16 10:26:41 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* bignum.c (rb_big2ull): add a cast to get rid of a VC++ warning.

Wed Nov 16 09:39:27 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/minitest/unit.rb (assert_raises): experimental fix to run
	  correctly on chkbuild over 64bit linux. call exception_details only
	  when the detail is really needed to avoid create needless inspect
	  under ulimit-ed environment.

Wed Nov 16 06:34:30 2011  Tanaka Akira  <akr@fsij.org>

	* test/ruby/test_thread.rb (test_condvar_timed_wait): use
	  assert_operator.

Tue Nov 15 21:56:25 2011  Tanaka Akira  <akr@fsij.org>

	* test/ruby/test_sleep.rb (test_sleep_5sec): 0.1sec tolerance is too
	  small for busy environment.

Tue Nov 15 20:08:55 2011  Tanaka Akira  <akr@fsij.org>

	* io.c, thread.c, ext/pty/pty.c, ext/fiddle/closure.c: use
	  __linux__ macro for consistency.

Tue Nov 15 14:45:15 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* include/ruby/ruby.h(NUM2LONG, NUM2INT, NUM2SHORT, NUM2LL,
	  INT2NUM, UINT2NUM, LONG2NUM, ULONG2NUM, NUM2CHR): wrap by
	  macros.

Tue Nov 15 13:38:14 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* include/ruby/defines.h (FLUSH_REGISTER_WINDOWS): move sparc asm code
	  to a separate file sparc.c for preventing inlining optimization.
	  Patched by Jurij Smakov. [Bug #5244] [ruby-core:40685]
	* sparc.c (rb_sparc_flush_register_windows): ditto.
	* configure.in: ditto.

Tue Nov 15 13:11:35 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* include/ruby/ruby.h: get rid of gcc specific rb_long2int(),
	  NUM2LONG(), NUM2INT(), NUM2SHORT(), NUM2LL(), INT2NUM(),
	  UINT2NUM(), LONG2NUM(), ULONG2NUM() and NUM2CHR()
	  implementation. Because 1) They don't make any better code
	  at all. 2) Inline function have a better debugger supoort.

Tue Nov 15 09:58:25 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_io.rb (TestIO#test_fcntl_dupfd): fix OpenBSD test
	  failure. [ruby-dev:44872]

Tue Nov 15 09:50:21 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* regcomp.c (print_indent_tree): fix double printing of ENCLOSE_OPTION
	  children bug. patched by Suraj Kurapati. [ruby-core:40964]

Tue Nov 15 01:53:48 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* test/ruby/test_io.rb (test_fcntl_dupfd): fix test error on
	  SnowLeopard. Pointed out by CHIKANAGA Tomoyuki. [ruby-dev:44866]

Mon Nov 14 22:06:02 2011  Tanaka Akira  <akr@fsij.org>

	* ext/openssl/ossl_pkey.c (ossl_pkey_new_from_file): set close-on-exec
	  flag.

	* ext/openssl/ossl_x509cert.c (rb_fd_fix_cloexec): ditto.

Mon Nov 14 14:54:17 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* bignum.c (rb_big2ull): fix 32bit platform breakage. we must
	  not assume sizeof(VALUE) == sizeof(LONG_LONG).
	* test/-ext-/num2int/test_num2int.rb (class TestNum2int):
	  fix false assumption on 32bit platform.

Mon Nov 14 14:52:54 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* numeric.c (rb_fix2ushort): fix typo. use num rb_num2ushort()
	  instead of num2uint().

Sun Nov 13 10:31:03 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* include/ruby/ruby.h: add #ifdef comment.

Sun Nov 13 10:28:18 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* include/ruby/ruby.h: add NUM2SHORT(), NUM2USHORT() macros.
	* numeric.c: ditto.

	* test/-ext-/num2int/test_num2int.rb: add testcases for NUM2SHORT().
	* ext/-test-/num2int/num2int.c: ditto.

Sun Nov 13 10:23:48 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* bignum.c (rb_big2ull): fix off-by-twice bug of NUM2ULL.
	* test/-ext-/num2int/test_num2int.rb (class TestNum2int):
	  fix a testcase too.

Sun Nov 13 10:22:44 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/-ext-/num2int/test_num2int.rb (class TestNum2int):
	  add FIXNUM tests.

Sun Nov 13 09:57:29 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* numeric.c (check_uint): fix off-by-one bug of NUM2UINT.
	* bignum.c (rb_big2ulong): fix off-by-one bug of NUM2ULONG.

	* test/-ext-/num2int/test_num2int.rb: add a testcase for NUM2INT()
	  NUM2UINT(), NUM2LONG(), NUM2ULONG(), NUM2LL and NUM2ULL().
	* ext/-test-/num2int/depend: ditto.
	* ext/-test-/num2int/extconf.rb: ditto.
	* ext/-test-/num2int/num2int.c: ditto.

Sun Nov 13 23:47:29 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/dbm/extconf.rb: use convertible_int.

Sun Nov 13 23:45:57 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (checking_for): should not modify the result.

	* lib/mkmf.rb (have_struct_member): accept compiler options.

	* lib/mkmf.rb (convertible_int): add restricted support of struct
	  member, and TYPEOF_ macro.

Sun Nov 13 23:21:24 2011  Tanaka Akira  <akr@fsij.org>

	* ext/gdbm/gdbm.c (fgdbm_reorganize): set close-on-exec flag after
	  gdbm_reorganize().  gdbm_reorganize() opens a new database internally.

Sun Nov 13 19:57:18 2011  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: rollback for each headers for each libraries.

Sun Nov 13 16:24:48 2011  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: treat libc as a choice for a library which
	  provide ndbm API.

Sun Nov 13 15:40:43 2011  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: duplicate $libs and $defs when save them.

Sun Nov 13 12:43:48 2011  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: rollback $libs and $defs when db detection is
	  failed.  It fixes -lgdbm -lqdbm when the system has qdbm and gdbm
	  without gdbm_compat.

Sat Nov 12 21:14:51 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/webrick/test_cgi.rb (class TestWEBrickCGI): respect
	  RbConfig::CONFIG["LIBPATHENV"]. [Bug #5135] [ruby-core:38653]
	* test/webrick/test_filehandler.rb (class WEBrick): ditto.

Sat Nov 12 20:57:29 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_io.rb (test_fcntl_dupfd): skip if Fcntl::DUPFD
	  is not defined. Pointed out by CHIKANAGA Tomoyuki. Thanks.

Sat Nov 12 17:26:10 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (do_ioctl, ioctl_narg_len, setup_narg, rb_ioctl): use
	  ioctl_req_t.

Sat Nov 12 17:01:49 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/dbm/extconf.rb (headers.db_check): reduce duplicated code.

Sat Nov 12 15:59:42 2011  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: dbm_clearerr should be available in all ndbm
	  implementation.  If it is not available, it is caused by
	  header/library mismatch such that Berkeley DB header & gdbm library.

	* ext/dbm/dbm.c (fdbm_store): use dbm_clearerr() unconditionally.
	  gdbm 1.9 provides it as a real function instead of a empty macro.

Sat Nov 12 13:35:33 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* bootstraptest/runner.rb: don't suppress SIGINT.
	  [Feature #5612] [ruby-dev:44856]

Sat Nov 12 11:20:36 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (fcntl_narg_len): introduce narg calculation for fcntl instead
	  of hard coded 256.
	* io.c (setup_narg): ditto.

Sat Nov 12 11:19:35 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_io.rb (test_fcntl_dupfd): add another fcntl test.

Sat Nov 12 11:18:17 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/ruby/test_io.rb (test_fcntl_lock_freebsd): add a testcase
	  of fcntl lock for freebsd.

Sat Nov 12 11:16:32 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (ioctl_narg_len): Linux doesn't have IOCPARM_LEN macro, but
	  has _IOC_SIZE. support it.

Sat Nov 12 11:13:18 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (rb_ioctl): don't expose our sanity check value to ruby script.
	  It may change string value meaning if the value is string.
	  (e.g. MacOS X has F_GETPATH ioctl)
	* io.c (rb_fcntl): ditto.

Sat Nov 12 11:06:02 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (ioctl_req_t): Type of req argument of ioctl() depend on platform.
	  Moreover almost all linux ioctl can't be represented by 32bit integer
	  (i.e. MSB is 1). We need wrap ioctl argument type.
	  [Bug #5429] [ruby-dev:44589]
	* io.c (struct ioctl_arg): ditto.
	* io.c (rb_ioctl): ditto.
	* test/ruby/test_io.rb (test_ioctl_linux): add a testcase for ioctl

Sat Nov 12 11:00:42 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (struct io_cntl_arg): remove io_p member.
	* io.c (nogvl_fcntl, do_fcntl, rb_fcntl): separated from ioctl functions.
	* io.c (nogvl_io_cntl): remove fcntl depended logic.
	* io.c (io_cntl): ditto.
	* io.c (rb_io_ctl): ditto.
	* io.c (rb_io_ioctl): ditto.

Sat Nov 12 10:59:49 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (setup_narg): fix off by one bug.

Sat Nov 12 10:56:43 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (+setup_narg): factor out length calculation logic.
	* io.c (rb_io_ctl): ditto.

Sat Nov 12 10:52:17 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (+ioctl_narg_len) new helper function.
	* io.c (rb_io_ctl): don't use ioctl specific length check
	  if caller is fcntl.

Fri Nov 11 23:00:46 2011  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: db_prefix is not required now.

Fri Nov 11 21:13:30 2011  Tanaka Akira  <akr@fsij.org>

	* ext/gdbm/gdbm.c (fgdbm_initialize): use GDBM_CLOEXEC if available.

Fri Nov 11 21:00:05 2011  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: fix dbm_pagfno and dbm_dirfno detection with
	  Berkeley DB.  Macro definitions needs arguments to detect correctly.
	  SIZEOF_DSIZE needs -DDB_DBM_HSEARCH because db.h defines datum type
	  only if DB_DBM_HSEARCH is defined.

Fri Nov 11 18:41:57 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* process.c (proc_seteuid): separate an internal wrapper function
	  from the method implementation.

Fri Nov 11 17:21:15 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (have_library, find_library, have_func): allow
	  arguments of function to be checked.

Fri Nov 11 17:09:45 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_dump.c (HAVE_BACKTRACE): fallback to 0.

	* vm_dump.c (rb_vm_bugreport): show "Other runtime information"
	  header only when available.

	* vm_dump.c (rb_vm_bugreport): get rid of modifying the content of
	  VM directly.

	* vm_dump.c (rb_vm_bugreport): check if vm is non-null.
	  Pointed out by Ikegami Daisuke <ikegami.da@gmail.com>.
	  Thank you.

Fri Nov 11 12:36:37 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* io.c (pipe_open): Remove fflush(stdin). it's no effect.
	  Pointed out by Ikegami Daisuke <ikegami.da@gmail.com>.
	  Thank you.

Fri Nov 11 07:33:30 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http.rb (Net::HTTP::SSL_ATTRIBUTES):  Use symbol keys instead
	  of string keys to avoid duplicating parameters in
	  OpenSSL::SSL:SSLContext#set_params.

Thu Nov 10 15:02:37 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (have_library, have_func, have_var, have_header):
	  add compiler option parameter.

Thu Nov 10 07:45:16 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/openssl/lib/openssl/ssl.rb (class OpenSSL::SSL::SSLContext):
	  Document #set_params.

Wed Nov  9 11:36:53 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread_pthread.c (gvl_yield): don't prevent concurrent sched_yield().
	  [Bug #5130] [ruby-core:38647]

Wed Nov  9 23:20:22 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_update_max_fd): fstat(2) can fail with other than
	  EBADF.  [ruby-dev:44837] [Bug #5593].  Cf.
	  http://pubs.opengroup.org/onlinepubs/9699919799/functions/fstat.html

	* io.c (rb_sysopen): max fd is updated in rb_sysopen_internal()
	  already.

Wed Nov  9 22:13:38 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_file.rb (TestFile#test_utime_with_minus_time_segv):
	  fixed previous commit.

Wed Nov  9 19:53:45 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_file.rb (TestFile#test_utime_with_minus_time_segv):
	  add test for r33685.

Wed Nov  9 19:00:44 2011  Koichi Sasada  <ko1@atdot.net>

	* test/ruby/test_fiber.rb: add tests for r33684 (Fiber#resume).

Wed Nov  9 16:40:49 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (unixtime_to_filetime): should check the return value
	  of localtime().  reported by snowjail at gmail.com.
	  [ruby-dev:44838] [Bug #5596]

Thu Nov  9 13:17:25 2011  Koichi Sasada  <ko1@atdot.net>

	* cont.c (rb_fiber_m_transfer, rb_fiber_resume): prohibit using
	  "resume" after "transfer" method are used.  You should not mix
	  "resume" fiber and "transfer" fiber.
	  [Bug #5526]

	* NEWS: add information about this change.

Wed Nov  9 11:40:37 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* template/Doxyfile.tmpl (INCLUDE_PATH): add srcdir and include.
	  [ruby-core:40843] [Bug #5597]

Wed Nov  9 11:02:54 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* thread.c (do_select): fix cast, tv_sec is time_t.

Wed Nov  9 10:32:20 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in: should not use test -e for portability.
	  [ruby-core:40841] [Bug #5594]

Wed Nov  9 04:52:16 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/tree_builder.rb: dump complex numbers,
	  rationals, etc with reference ids.
	* ext/psych/lib/psych/visitors/yaml_tree.rb: ditto
	* ext/psych/lib/psych/visitors/to_ruby.rb: loading complex numbers,
	  rationals, etc with reference ids.
	* test/psych/test_object_references.rb: corresponding tests

Tue Nov  8 23:34:37 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/dbm/dbm.c (fdbm_fetch, fdbm_key, fdbm_delete, fdbm_store)
	  (fdbm_has_key, fdbm_has_value): get rid of overflow.

	* ext/gdbm/gdbm.c (rb_gdbm_fetch2, rb_gdbm_nextkey)
	  (rb_gdbm_delete, fgdbm_store, fgdbm_has_key): ditto.

	* ext/dbm/dbm.c (fdbm_delete_if): hide intermediate objects.

	* ext/gdbm/gdbm.c (fgdbm_delete_if): ditto.

	* ext/dbm/extconf.rb: check size of datum.dsize to get rid of
	  overflow.

Tue Nov  8 23:30:21 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* addr2line.c (PATH_MAX): define if not defined. [ruby-core:40840]

Tue Nov  8 23:26:49 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/tk/tcltklib.c (rb_thread_critical): fix type.

	* ext/tk/tcltklib.c (eventloop_sleep, lib_eventloop_core): int is
	  enough for micro seconds.  may need to check overflow in the
	  setter though.

	* ext/tk/tcltklib.c (RSTRING_LENINT): check overflow if necessary.

	* ext/tk/tcltklib.c (RbTk_ALLOC_N): wrapper for ckalloc() which
	  takes an int.

	* ext/tk/tcltklib.c (ip_ruby_cmd_receiver_get, tcltklib_compile_info):
	  get rid overflow.

	* ext/tk/tcltklib.c (tcltklib_compile_info): constified.

Tue Nov  8 20:50:45 2011  Tanaka Akira  <akr@fsij.org>

	* test/dbm/test_dbm.rb: split tests for read only database.

	* test/gdbm/test_gdbm.rb: ditto.

Tue Nov  8 18:59:07 2011  Tanaka Akira  <akr@fsij.org>

	* ext/pty/pty.c (MasterDevice): define only when used.
	  (SlaveDevice): ditto.
	  (deviceNo): ditto.

Tue Nov  8 17:59:24 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/ruby.h (rb_long2int): define as a macro always, so
	  that cpp conditionals can tell if it is provided.

Tue Nov  8 17:30:50 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (cpp_command): remove multiple -arch flags since cpp
	  cannot work.

Tue Nov  8 14:50:55 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* io.c (io_fwrite): call rb_w32_write_console() only if FMODE_TTY is
	  set.  this is the one of the reason of IO writing slowness of Windows
	  in 1.9.3 or later.

Tue Nov  8 11:01:04 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/pty/pty.c (get_device_once): FreeBSD 8 supported O_CLOEXEC flag
	  for posix_openpt, but FreeBSD 9's posix_openpt doesn't support
	  O_CLOEXEC and fails if specified.

Tue Nov  8 02:36:45 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* include/ruby/encoding.h (ECONV_NEWLINE_DECORATOR_READ_MASK,
	  ECONV_NEWLINE_DECORATOR_WRITE_MASK): new macro.

	* io.c (rb_io_extract_modeenc, pipe_open, prep_stdio, argf_next_argv):
	  set TEXTMODE_NEWLINE_DECORATOR_ON_WRITE for textmode on creating IO
	  if the flag is available.

	* io.c (make_writeconv): drop decorators for reading.

	* io.c (make_readconv): drop decorators for writing.

	* io.c (do_writeconv): existing writeconv is not the condition to raise
	  ArgumentError.  should check textmode or not.

	* test/ruby/test_io_m17n.rb
	  (TestIO_M17N#test_{cr,lf,crlf}_decorator_on_stdout): test above
	  changes.

Mon Nov  7 22:03:47 2011  Tanaka Akira  <akr@fsij.org>

	* ext/gdbm/gdbm.c (fgdbm_initialize): set close-on-exec flag.

Mon Nov  7 20:31:52 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/scalar_scanner.rb: make sure strings that look
	  like base 60 numbers are serialized as quoted strings.
	* test/psych/test_string.rb: test for change.

Mon Nov  7 20:26:37 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* test/psych/test_yamlstore.rb: make test case inherit from MiniTest,
	  load psych/helper so that psych is loaded.

Mon Nov  7 20:18:29 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* test/psych/test_yamldbm.rb: Test case should inherit from MiniTest,
	  load psych/helper so that psych and friends are loaded.

Mon Nov  7 20:15:44 2011  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/extconf.rb: check dbm_pagfno() and dbm_dirfno().

	* ext/dbm/dbm.c: use above to set close-on-exec flag.

Mon Nov  7 20:05:16 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* io.c (io_fflush): remove fsync().

	* io.c (rb_io_flush, rb_io_rewind): fsync() here.

	these changes reduces fsync() calls to improve performance.
	first reported at [ruby-list:48515] by ak7 at mail.goo.ne.jp .
	[Bug #5585]

Mon Nov  7 19:43:10 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_close_before_exec): use F_MAXFD if available.
	  F_MAXFD is available on NetBSD since NetBSD 2.0.

Mon Nov  7 19:25:16 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_io_m17n.rb
	  (TestIO_M17N#test_default_stdout_stderr_mode): new test for
	  r33627-33629.  see [backport #5565]

Mon Nov  7 01:14:22 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* lib/debug.rb: add help for 'pp' and 'r[estart]'. patch
	  from Sho Hashimoto. [Bug #5093] [ruby-dev:44222]

Sun Nov  6 14:49:58 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/rubysocket.h (rsock_recvmsg): declared.

	* ext/socket/ancdata.c (rsock_recvmsg): extracted from
	  nogvl_recvmsg_func.
	  (nogvl_recvmsg_func): use rsock_recvmsg.

	* ext/socket/unixsocket.c (recvmsg_blocking): use rsock_recvmsg.

Sun Nov  6 03:22:36 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_engine.rb: add test for engine cipher. RC4 is used
	  because AES is not supported by the "openssl" engine currently.

Sun Nov  6 00:11:52 2011  Tanaka Akira  <akr@fsij.org>

	* lib/test/unit.rb (Test::Unit::Options#non_options): options[:ruby]
	  should be an array.  This fixes
	  "./ruby test/runner.rb test/testunit/test_parallel.rb"
	  [ruby-dev:44782]

Sat Nov  5 20:30:30 2011  Martin Duerst  <duerst@it.aoyama.ac.jp>

	* insns.def: Some fixes and tweaks to English explanations

Sat Nov  5 19:11:50 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_cloexec_fcntl_dupfd): don't clear try_dupfd_cloexec if
	  fcntl(F_DUPFD) failed as fcntl(F_DUPFD_CLOEXEC).

Sat Nov  5 18:05:12 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/socket.c (rsock_socketpair0): refactored.

Sat Nov  5 17:55:52 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/init.c (rsock_socket0): don't clear try_sock_cloexec if
	  SOCK_CLOEXEC is not a reason for EINVAL.

Sat Nov  5 16:27:52 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* ext/pathname/lib/pathname.rb, ext/tk/lib/multi-tk.rb,
	  ext/tk/sample/demos-en/widget, lib/benchmark.rb, lib/irb/cmd/fork.rb,
	  lib/mkmf.rb, lib/net/ftp.rb, lib/net/smtp.rb, lib/open3.rb,
	  lib/pstore.rb, lib/rexml/element.rb, lib/rexml/light/node.rb,
	  lib/rinda/tuplespace.rb, lib/rss/maker/base.rb,
	  lib/rss/maker/entry.rb, lib/scanf.rb, lib/set.rb, lib/shell.rb,
	  lib/shell/command-processor.rb, lib/shell/process-controller.rb,
	  lib/shell/system-command.rb, lib/uri/common.rb: remove unused block
	  arguments to avoid creating Proc objects.

Sat Nov  5 15:45:04 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/init.c (rsock_socket0): extract single socket() call with
	  CLOEXEC handling from rsock_socket.

Sat Nov  5 13:49:40 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* lib/pathname.rb (Pathname#find): return an enumerator if
	  no block is given.

	* test/pathname/test_pathname.rb: add tests for above.

	[ruby-dev:44797] [Feature #5572]

Sat Nov  5 11:18:12 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/socket.c (rsock_socketpair0): don't clear
	  try_sock_cloexec if SOCK_CLOEXEC is not a reason for EINVAL.

Fri Nov  4 14:08:19 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* ext/openssl/ossl_pkey_rsa.c (rsa_generate): [SECURITY] Set RSA
	  exponent value correctly.  Awful bug.  This bug caused exponent of
	  generated key to be always '1'.  By default, and regardless of e
	  given as a parameter.

	  !!! Keys generated by this code (trunk after 2011-09-01) must be
	  re-generated !!! (ruby_1_9_3 is safe)

	* test/openssl/test_pkey_rsa.rb: Add tests for default exponent and
	  specifying exponent by a parameter.

Fri Nov  4 01:31:25 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_engine.rb: add first tests for builtin "openssl"
	  engine.

Fri Nov  4 08:41:26 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/extconf.rb:
	* ext/openssl/ossl_engine.c: add some missing OpenSSL engines.
	  Thanks, Yui Naruse, for providing the patch!
	  [Bug #5548] [ruby-core:40670]

Fri Nov  4 04:54:10 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/configure.bat: disable delayed expansion of enironment variable.
	  [Bug #5517] [ruby-core:40531]

Fri Nov  4 03:45:22 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* io.c (make_writeconv): fixed typo of previous commit.

Fri Nov  4 01:56:30 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* io.c (make_writeconv): unversal_newline converter is for reading.
	  so, if the io is text mode and has ECONV_UNIVERSAL_NEWLINE_DECORATOR
	  flag, use crlf_newline converter for writing.
	  this change fixes the problem about the luck of CR up Kernel.p and
	  Kernel.puts to stdout/stderr on Windows.

Fri Nov  4 01:04:48 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/readline/readline.c (Init_readline): like r18313, libedit's
	  replace_history_entry may use offset instead of which.
	  so introduce history_replace_offset_func and initialize it.

	* ext/readline/readline.c (hist_set): use history_replace_offset_func.

Fri Nov  4 00:53:35 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/readline/readline.c (Init_readline): fix wrong condition.

Thu Nov  3 23:53:04 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* encoding.c (rb_locale_charmap): ignore calling nl_langinfo_codeset()
	  on Windows except cygwin. [experimental]

Thu Nov  3 22:45:09 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/socket.c (rsock_socketpair0): extracted from
	  rsock_socketpair to set close-on-exec flag for each socketpair()
	  call.

Thu Nov  3 22:12:41 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* ext/socket/init.c (rsock_socket): set close-on-exec flag when
	  SOCK_CLOEXEC is not available.

Thu Nov  3 08:36:00 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_engine.rb: call Engine::cleanup on exit.
	  Patch provided by Yui Naruse, thanks!
	  [Bug #5547] [ruby-core:40669]

Wed Nov  2 21:36:00 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* complex.c (nucomp_rationalize): fix function.  [ruby-core:40667]
	  [Bug #5546]

Wed Nov  2 08:16:45 2011  Tanaka Akira  <akr@fsij.org>

	* lib/webrick/utils.rb: fix fcntl call.

	* lib/drb/unix.rb: ditto.

Wed Nov  2 00:43:59 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* test/psych/test_yamldbm.rb: avoid platform dependency.
	  patch by Naohisa Goto. [ruby-dev:44763] [Bug #5535]
	* test/syck/test_yamldbm.rb: ditto.

Wed Nov  2 00:14:15 2011  Shugo Maeda  <shugo@ruby-lang.org>

	* test/ruby/test_marshal.rb: renamed methods duplicated with those
	  of marshaltestlib.rb.

Tue Nov  1 22:08:27 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in: reject llvm-gcc.

Tue Nov  1 21:39:00 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (rb_cloexec_pipe): remove workaround of r33587.
	  The bug of NetBSD is fixed on Mon Oct 31 21:31:29 UTC 2011.
	  http://gnats.netbsd.org/cgi-bin/query-pr-single.pl?number=45545

Tue Nov  1 19:49:08 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_io_reopen): call rb_fd_fix_cloexec instead of
	  rb_maygvl_fd_fix_cloexec.

Tue Nov  1 19:00:30 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_io_reopen): call rb_maygvl_fd_fix_cloexec after freopen().

Tue Nov  1 17:17:26 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* file.c (file_expand_path): reset coderange after expanding path.

Tue Nov  1 14:55:29 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (nogvl_io_cntl): rb_cloexec_fcntl_dupfd's 2nd argument is int.

	* process.c (move_fds_to_avoid_crash): ditto.

Tue Nov  1 13:14:33 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* vsnprintf.c (BSD_vfprintf): support 'll' prefix.

	* vsnprintf.c (__sfeof): rename to avoid the collision with NetBSD's
	  one.

	* vsnprintf.c (__sferror): ditto.

	* vsnprintf.c (__sclearerr): ditto.

	* vsnprintf.c (__sfileno): ditto.

Tue Nov  1 12:36:16 2011  Tanaka Akira  <akr@fsij.org>

	* internal.h (rb_maygvl_fd_fix_cloexec): change the visibility for
	  ext/socket.

Tue Nov  1 12:00:53 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_maygvl_fd_fix_cloexec): renamed from fd_set_cloexec.

	* internal.h (rb_maygvl_fd_fix_cloexec): declared.

	* ext/socket/init.c (cloexec_accept): use rb_maygvl_fd_fix_cloexec.
	  (rsock_s_accept_nonblock): use rb_update_max_fd.
	  (rsock_s_accept): use rb_update_max_fd.

Tue Nov  1 08:24:40 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/init.c (cloexec_accept): new function to use accept4 if
	  available.
	  (rsock_s_accept_nonblock): use cloexec_accept.
	  (accept_blocking): ditto.

	* ext/socket/extconf.rb: check accept4.

Tue Nov  1 07:31:55 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/ancdata.c (nogvl_recvmsg_func): use MSG_CMSG_CLOEXEC if
	  available.

	* ext/socket/unixsocket.c (recvmsg_blocking): ditto.

Tue Nov  1 05:59:41 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/socket.c (rsock_socketpair): use SOCK_CLOEXEC if
	  available.

Tue Nov  1 02:56:17 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ruby.c (load_file_internal): convert the encoding of load path if
	  needed by platform.  calling open() was replaced by rb_cloexec_open()
	  at r33549, but the function expected UTF-8 pathname on Windows.
	  (open() expected "locale" pathname.)
	  reported by taco via IRC.

	* ruby.c (load_file): change the type of the 2nd parameter to pass its
	  encoding to load_file_internal().

	* ruby.c (process_options, rb_load_file): follow above change.
	  NOTE: we should pass encoding information to rb_load_file().

Mon Oct 31 23:49:38 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/socket.c (rsock_socketpair): extracted from
	  rsock_sock_s_socketpair.

Mon Oct 31 23:31:53 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/init.c (rsock_socket): use SOCK_CLOEXEC if available.

Mon Oct 31 21:47:44 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (rb_cloexec_pipe): NetBSD 6.0 will support pipe2(2),
	  but its return value is -1 or larger than 0.

Mon Oct 31 22:04:54 2011  Tanaka Akira  <akr@fsij.org>

	* ext/dbm/dbm.c (fdbm_initialize): use O_CLOEXEC if available.

Mon Oct 31 21:47:48 2011  Tanaka Akira  <akr@fsij.org>

	* include/ruby/intern.h (rb_fd_fix_cloexec): renamed from
	  rb_fd_set_cloexec.

	* io.c: follow the above renaming.

	* ext/pty/pty.c: ditto.

	* ext/socket/init.c: ditto.

	* ext/socket/socket.c: ditto.

	* ext/socket/ancdata.c: ditto.

	* ext/socket/unixsocket.c: ditto.

Mon Oct 31 21:02:43 2011  Tanaka Akira  <akr@fsij.org>

	* lib/resolv.rb (Resolv::DNS): retry IO.select for premature wakeup.

Mon Oct 31 20:14:22 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (fd_set_cloexec): clear CLOEXEC flag for standard file
	  descriptors.
	  (rb_cloexec_dup): use rb_cloexec_fcntl_dupfd.
	  (rb_cloexec_fcntl_dupfd): use F_DUPFD_CLOEXEC if available.

Mon Oct 31 19:14:11 2011  Tanaka Akira  <akr@fsij.org>

	* test/resolv/test_dns.rb: don't check maximum slept time.
	  ruby doesn't guarantee the maximum time because it is not a
	  realtime application.

Mon Oct 31 13:10:06 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (setfl): extract from fcntl().

	* win32/win32.c (dupfd): new function to support F_DUPFD. based on a
	  patch written by akr.

	* win32/win32.c (fcntl): use above functions.

	* include/ruby/win32.h (F_DUPFD): define. [experimental]

	* include/ruby/win32.h (F_SETFL): change the value to correspond with
	  other platforms.

Mon Oct 31 12:37:50 2011  Tanaka Akira  <akr@fsij.org>

	* ext/pty/pty.c (get_device_once): use O_CLOEXEC for posix_openpt if
	  available.

Mon Oct 31 12:05:24 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_cloexec_dup2): check oldfd == newfd at first.
	  pointed by KOSAKI Motohiro.  [ruby-dev:44713]

Mon Oct 31 10:50:26 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* io.c (rb_cloexec_fcntl_dupfd): this function needs F_DUPFD.

	* io.c (nogvl_io_cntl): use rb_cloexec_fcntl_dupfd() only if the
	  platform has F_DUPFD.

Mon Oct 31 00:50:00 2011  Luis Lavena  <luislavena@gmail.com>

	* configure.in: check -fno-omit-frame-pointer acceptance and usage
	  under MinGW. [ruby-core:39957] [Bug #5407]

Mon Oct 31 00:16:11 2011  Tanaka Akira  <akr@fsij.org>

	* include/ruby/intern.h (rb_cloexec_fcntl_dupfd): declared.

	* io.c (rb_cloexec_fcntl_dupfd): new function.
	  (nogvl_io_cntl): use rb_cloexec_fcntl_dupfd.

	* process.c (move_fds_to_avoid_crash): use rb_cloexec_fcntl_dupfd.

Sun Oct 30 22:46:46 2011  Tanaka Akira  <akr@fsij.org>

	* configure.in: check pipe2.

	* io.c (rb_cloexec_pipe): use pipe2 if available.

Sun Oct 30 22:32:44 2011  Tanaka Akira  <akr@fsij.org>

	* ruby.c (fill_standard_fds): use fstat() instead of fcntl(F_GETFD)
	  for MinGW.  reported by Luis Lavena.  [ruby-core:40526] [Bug #5516]

Sun Oct 30 21:12:47 2011  Tanaka Akira  <akr@fsij.org>

	* include/ruby/intern.h (rb_cloexec_pipe): declared.

	* io.c (rb_cloexec_pipe): new function.
	  (rb_pipe): use rb_cloexec_pipe.

	* thread_pthread.c (rb_thread_create_timer_thread): use
	  rb_cloexec_pipe.

Sun Oct 30 20:06:07 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_cloexec_dup): refine control flow.
	  (rb_cloexec_dup2): ditto.

Sun Oct 30 18:45:50 2011  Tanaka Akira  <akr@fsij.org>

	* ruby.c (fill_standard_fds): new function to open closed standard
	  file descriptors.
	  (ruby_sysinit): call fill_standard_fds.

Sun Oct 30 10:50:36 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* tool/rbinstall.rb (install_recursive, bin-comm): split mere
	  string not path name.  [ruby-core:40462] [Bug #5492]

Sun Oct 30 10:47:20 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_cloexec_dup, rb_cloexec_dup2): CLOEXEC has been set if
	  dup3 succeeded.

Sun Oct 30 09:58:48 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_cloexec_dup): don't allocate standard file descriptors.

Sun Oct 30 08:29:51 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_cloexec_dup2): don't set CLOEXEC for standard file
	  descriptors.

Sun Oct 30 07:47:10 2011  Tanaka Akira  <akr@fsij.org>

	* configure.in: check dup3.

	* io.c (rb_cloexec_dup2): use dup3 if available.

Sat Oct 29 22:06:37 2011  Tanaka Akira  <akr@fsij.org>

	* include/ruby/intern.h (rb_cloexec_dup2): declared.

	* io.c (rb_cloexec_dup2): new function.
	  (io_reopen): use rb_cloexec_dup2.

Sat Oct 20 21:08:18 2011  Tajima Akio <artonx@yahoo.co.jp>

	* win32/Makefile.sub (CONFIG_H): have stdint.h if VC2010.
	  [Bug #5243]

Sat Oct 29 20:59:08 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_cloexec_dup): use F_DUPFD_CLOEXEC if available.

Sat Oct 29 20:00:26 2011  Tanaka Akira  <akr@fsij.org>

	* include/ruby/intern.h (rb_cloexec_dup): declared.

	* io.c (rb_cloexec_dup): new function.
	  (ruby_dup): use rb_cloexec_dup.

	* ext/pty/pty.c (pty_getpty): use rb_cloexec_dup.

	* ext/openssl/ossl_bio.c (ossl_obj2bio): ditto.

Sat Oct 29 16:11:34 2011  Tanaka Akira  <akr@fsij.org>

	* ext/sdbm/_sdbm.c (sdbm_prep): use O_CLOEXEC if available.

Sat Oct 29 14:26:56 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_cloexec_open): use O_CLOEXEC if available.

Sat Oct 29 12:57:15 2011  Tanaka Akira  <akr@fsij.org>

	* process.c (ruby_setsid): use rb_cloexec_open.
	  (rb_daemon): ditto.

	* ruby.c (load_file_internal): ditto.

	* file.c (rb_file_s_truncate): ditto.
	  (file_load_ok): ditto.

	* random.c (fill_random_seed): ditto.

	* ext/pty/pty.c (chfunc): ditto.
	  (get_device_once): ditto.

	* ext/io/console/console.c (console_dev): ditto.

Sat Oct 29 10:40:19 2011  Tanaka Akira  <akr@fsij.org>

	* include/ruby/intern.h (rb_cloexec_open): declared.

	* io.c (fd_set_cloexec): extracted from rb_fd_set_cloexec.
	  (rb_cloexec_open): new function.
	  (sysopen_func): use rb_cloexec_open.
	  (rb_sysopen_internal): use rb_update_max_fd instead of
	  rb_fd_set_cloexec.

Sat Oct 29 09:05:07 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread_pthread.h: no Structured Exception Handling like macros.
	  [ruby-core:40432] [Bug #5491]

Fri Oct 28 22:05:34 2011  Tanaka Akira  <akr@fsij.org>

	* ext/sdbm/_sdbm.c: RCS $Id$ removed.

Thu Oct 27 18:58:00 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* parse.y (parser_nextc): set encoding for the buffer of ripper.

Fri Oct 28 06:06:08 2011  Tanaka Akira  <akr@fsij.org>

	* ext/sdbm/_sdbm.c (sdbm_prep): set FD_CLOEXEC flags for file
	  descriptors.
	  (fd_set_cloexec): new function.

Fri Oct 28 03:01:27 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* vm_insnhelper.c (vm_call_cfunc): adding back useless hack.  For some
	  reason, this fixes CFP errors on OS X 10.7.

Fri Oct 28 00:09:31 2011  Tanaka Akira  <akr@fsij.org>

	* ext/sdbm/_sdbm.c (sdbm_prep): refactored for less nesting.

Thu Oct 27 18:28:18 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (RUBY_DEFINE_IF): revert r33534 partially to get
	  rid of AS_ECHO which is not available in autoconf 2.61.
	  [ruby-dev:44702]

Thu Oct 27 16:10:46 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* bignum.c (rb_big_divide): raise ZeroDivisionError if divisor is
	  zero, as well as Fixnum.  [ruby-core:40429] [Bug #5490]

Thu Oct 27 14:56:22 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (RUBY_FUNC_ATTRIBUTE): unset temporary variable.

	* configure.in (RUBY_STACK_GROW_DIRECTION): substitute CPU name as
	  shell variable name.  based on the patch by The Written Word Inc. at
	  [ruby-core:40421].  [Bug #5488]

Thu Oct 27 09:57:56 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* include/ruby/ruby.h (SIZE_MAX): define SIZE_MAX if not defined.
	  patched by The Written Word Inc. [ruby-core:40422] [Bug #5489]

Thu Oct 27 08:47:38 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/psych/parser.c: remove unused variable.

Thu Oct 27 08:38:41 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/extconf.rb: add -Wall flag by default when compiler is
	  GCC.

Wed Oct 26 15:24:25 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* file.c (rb_file_join): honor input encodings than ASCII-8BIT.
	  [ruby-core:40338] [Bug #5483]

Tue Oct 25 21:52:31 2011  Tanaka Akira  <akr@fsij.org>

	* include/ruby/defines.h: use "__sparc" instead of "sparc" and
	  "__sparc__".

	* dln.c: ditto.

	  [ruby-dev:44694]

Tue Oct 25 06:34:39 2011  Eric Hodel  <drbrain@segment7.net>

	* re.c (match_aref):  Use <code> around indexing examples to prevent
	  hyperlinks.  [ruby-talk:389396]

Mon Oct 24 23:55:31 2011  Tanaka Akira  <akr@fsij.org>

	* complex.c: use "__sun" instead of "__sun__" to detect SunOS.

	* math.c: ditto.

	* hash.c: ditto.

	* atomic.h: ditto.

	* ext/io/wait/wait.c: ditto.

	[ruby-dev:44693]

Mon Oct 24 22:45:37 2011  Tanaka Akira  <akr@fsij.org>

	* io.c: use "__sun" instead of "sun" to detect SunOS.

	* dln.c: ditto.

	* cont.c: ditto.

	* ext/sdbm/_sdbm.c: ditto.

	[ruby-dev:44693]

Mon Oct 24 22:38:08 2011  Tanaka Akira  <akr@fsij.org>

	* ext/pty/pty.c (get_device_once): delay rb_fd_set_cloexec() until
	  grantpt() on Solaris.  grantpt() doesn't work with CLOEXEC on
	  Solaris 10.
	  reported by Naohisa GOTO.  [ruby-dev:44688] [Bug #5475]

Mon Oct 24 08:18:14 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (copy_stream_fallback_body): check nil for EOF of read method.
	  patch by Eric Wong.  [ruby-core:39134] [Bug #5237]

Sun Oct 23 18:21:23 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* ext/tk/MANUAL_tcltklib.eng: fix typo.

Sun Oct 23 18:03:31 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* numeric.c (rb_infinity, rb_nan): aggregated member initializers
	  need braces.

Sun Oct 23 16:43:43 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* ext/io/wait/wait.c: ioctl(2) is declared in unistd.h on Solaris.

Sun Oct 23 16:33:35 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* ext/tk/MANUAL_tcltklib.eng: fix typo. reported by Mimura-san.
	  [ruby-dev:44683] [Bug #5471]

Sun Oct 23 08:01:29 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_fd_set_cloexec): set close-on-exec flag only if F_GETFD is
	  defined.  reported by Luis Lavena.  [ruby-core:40281] [Bug #5470]

Sat Oct 22 19:48:50 2011  Tanaka Akira  <akr@fsij.org>

	* test/openssl/test_ssl.rb (test_multibyte_read_write): start server
	  for each length to avoid race condition.

Sat Oct 22 18:49:24 2011  Tanaka Akira  <akr@fsij.org>

	* include/ruby/intern.h (rb_fd_set_cloexec): declared.

	* io.c (rb_fd_set_cloexec): new function.
	  (ruby_dup): call rb_fd_set_cloexec to set close-on-exec flag.
	  (rb_sysopen_internal): ditto.
	  (rb_pipe): ditto.
	  (io_reopen): ditto.
	  (io_cntl): ditto.

	* process.c (rb_f_exec): change the default :close_others option to
	  true.
	  (rb_f_system): ditto.
	  (move_fds_to_avoid_crash): call rb_fd_set_cloexec to set
	  close-on-exec flag.
	  (ruby_setsid): ditto.
	  (rb_daemon): ditto.

	* thread_pthread.c (rb_thread_create_timer_thread): call
	  rb_fd_set_cloexec to set close-on-exec flag.

	* ruby.c (load_file_internal): ditto.

	* file.c (rb_file_s_truncate): ditto.
	  (file_load_ok): ditto.

	* random.c (fill_random_seed): ditto.

	* ext/pty/pty.c (chfunc): ditto.
	  (get_device_once): ditto.

	* ext/openssl/ossl_bio.c (ossl_obj2bio): ditto.

	* ext/socket/init.c (rsock_socket): ditto.
	  (rsock_s_accept_nonblock): ditto.
	  (rsock_s_accept): ditto.

	* ext/socket/socket.c (rsock_sock_s_socketpair): ditto.

	* ext/socket/ancdata.c (discard_cmsg): ditto.
	  (make_io_for_unix_rights): ditto.

	* ext/socket/unixsocket.c (unix_recv_io): ditto.

	* ext/io/console/console.c (console_dev): ditto.

	[ruby-core:38140] [Feature #5041]

Sat Oct 22 17:46:27 2011  Tanaka Akira  <akr@fsij.org>

	* lib/resolv.rb: fix a exception name in previous patch.

Sat Oct 22 17:43:33 2011  Tanaka Akira  <akr@fsij.org>

	* lib/resolv.rb: make timeout configurable for DNS query.
	  patch by Eric Wong.  [ruby-core:38533] [Feature #5100]

Sat Oct 22 02:07:48 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* numeric.c (rb_infinity, rb_nan): use union to prevent bus error
	  caused by misalignment.  [Bug #5469] [ruby-dev:44657]

	* include/ruby/missing.h (INFINITY, NAN): ditto

Fri Oct 21 22:02:17 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c (initial_params): pack in a struct.

	* gc.c (rb_gc_set_params): set parameters always.
	  [ruby-dev:44648] [Bug #5467]

Fri Oct 21 12:10:20 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* atomic.h: change Solaris checking macro because atomic_ops can work
	  not only with Sun Studio but also with Fujitsu C Compiler.

Fri Oct 21 02:11:00 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_ns_spki.c: Complete documentation.
	* test/openssl/test_ns_spki.rb: Integrate SPKI#to_text.

Thu Oct 20 22:47:28 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (socklist_insert, socklist_lookup, socklist_delete):
	  new functions to wrap of st_insert(), st_lookup() and st_delete() to
	  socklist.
	  allocating socklist is deferred until it is really needed.

	* win32/win32.c (exit_handler): delete socklist only if it is
	  initialized.

	* win32/win32.c (rb_w32_sysinit, StartSockets): refactoring: move
	  initialization of select_mutex to StartSockets().

	* win32/win32.c (exit_handler): refactoring: delete select_mutex only
	  if winsock is used.

Thu Oct 20 22:38:53 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_pkcs5.c: add note on timing attacks and general
	  documentation.

Thu Oct 20 21:19:15 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* vm_eval.c (check_funcall): set array elements one-by-one to fix
	  compile error with Fujitsu C Compiler 5.6 on Solaris 10 on Sparc.
	  [Bug #5464] [ruby-dev:44632]

Thu Oct 20 13:09:35 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/defines.h (flush_register_windows): use software
	  trap on Debian Sparc 32-bit userspace.  [Bug #5244]

Thu Oct 20 12:28:22 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_pkcs5.rb: add RFC 6070 tests for PBKDF2 with
	  HMAC-SHA1

Thu Oct 20 11:42:23 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* util.c (mmprepare): fix for fragmental size.

	* util.c (mmswap_, mmrot3_): portability improvement.

Thu Oct 20 05:58:02 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/openssl/ossl_ns_spki.c (Init_ossl_ns_spki):  Stub documentation
	  for Netscape SPKI.

Thu Oct 20 05:13:39 2011  Ryan Davis  <ryand-ruby@zenspider.com>

	* lib/minitest/*: Imported minitest 2.6.2 (r6712)
	* test/minitest/*: ditto

Thu Oct 20 06:55:32 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* lib/openssl/buffering.rb: Force multi-byte strings to be treated as
	  binary data.
	* test/openssl/test_ssl.rb: Add test for it.

	Thanks to Niklas Baumstark for reporting the issue!

	[Ruby 1.9 - Bug #5233] [ruby-core:39120]

Wed Oct 19 17:06:54 2011  Yukihiro Matsumoto  <matz@ruby-lang.org>

	* version.h (RUBY_VERSION): finally declare start of 2.0 work!

Wed Oct 19 11:48:44 2011  Eric Hodel  <drbrain@segment7.net>

	* error.c (Init_Exception):  Document $! and $@.  Provide
	  recommendations for creating exceptions for a library.

Wed Oct 19 11:25:46 2011  Eric Hodel  <drbrain@segment7.net>

	* error.c (Init_Exception):  Add hierarchy of Exception subclasses.
	  Based on patch by Sylvain Daubert.  [Ruby 1.9 - Bug #5438]

Wed Oct 19 11:04:47 2011  Eric Hodel  <drbrain@segment7.net>

	* enum.c: Reformat block args to a single standard, { |args| ... }.
	  Patch by b t.  [Ruby 1.9 - Bug #5393]

Wed Oct 19 12:11:26 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_ssl.c: Remove set, but unused variables.
	  ext/openssl/ossl_pkey.c: ditto

	* ext/openssl/ossl_pkey_dh.c: Make functions passed to
	  rb_thread_blocking_region return VALUE instead of void.
	  ext/openssl/ossl_pkey_dsa.c: ditto
	  ext/openssl/ossl_pkey_rsa.c: ditto

Tue Oct 18 23:28:53 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* hash.c (identhash): share with type_numhash.

	* st.c (st_hashtype_num): rename from type_numhash.

Tue Oct 18 23:07:30 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_core.h (ruby_current_thread): probeprofiler has been removed
	  long ago.

Tue Oct 18 23:05:49 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/ripper/eventids2.c (ripper_init_eventids2): separate
	  initializations of IDs and objects.

	* ext/ripper/tools/generate.rb (generate_eventids1): ditto.

	* parse.y (Init_ripper, InitVM_ripper): fix inversed roles.

Sun Oct 16 19:46:16 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/bigdecimal/bigdecimal.gemspec (files): fixed typo, and
	  removed nonexistent file.

	* ext/bigdecimal/bigdecimal.gemspec (homepage): added.

	* ext/io/console/io-console.gemspec (homepage): ditto.

Fri Oct 14 12:13:57 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/pty/pty.c (pty_check): should return nil until the child
	  terminates or stops.  [ruby-dev:44600] [Bug #2642]

Fri Oct 14 11:19:37 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* include/ruby/intern.h (rb_ary_rotate): export.

Fri Oct 14 05:58:05 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* atomic.h (ATOMIC_INC, ATOMIC_DEC): return old values.
	  [ruby-dev:44596] [Bug #5439]

	* signal.c (ruby_atomic_exchange): no needs to define on the
	  platforms where atomic.h is available.

Thu Oct 13 19:29:40 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* atomic.h (ATOMIC_*): use atomic_ops(3C) when SunStudio on Solaris.
	  [ruby-dev:44596] [Bug #5439]

Thu Oct 13 18:13:04 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* atomic.h(ATOMIC_SET): add cast to void to prevent misuse.
	  [ruby-dev:44596] [Bug #5439]

Thu Oct 13 18:04:27 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c (rb_gc_finalize_deferred, rb_objspace_call_finalizer):
	  should use ATOMIC_EXCHANGE() to check the previous value.
	  [ruby-dev:44596] [Bug #5439]

Wed Oct 12 23:39:58 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* test/openssl/test_ssl.rb: Move duplicated tests for SSL::Session to
	  test_ssl_session.rb

Tue Oct 11 08:49:40 2011  Eric Hodel  <drbrain@segment7.net>

	* array.c (rb_ary_initialize):  Improve explanation of Array.new
	  parameters.  Patch by Alvaro Pereyra Rabanal.  [Ruby 1.9 - Bug #5425]
	* array.c (rb_ary_s_try_convert):  Fix typo (try => tries)
	* array.c (rb_ary_rindex):  Add spacing for block.
	* array.c (rb_ary_uniq_bang):  Describe block
	* array.c (rb_ary_uniq):  ditto

Tue Oct 11 07:55:38 2011  Eric Hodel  <drbrain@segment7.net>

	* array.c:  Add a description to Array, minor cleanups.  Patch by
	  Andrea Singh.  [Ruby 1.9 - Bug #5412]

Tue Oct 11 06:09:52 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/pp.rb:  Move PP documentation to top of class PP.  Patch by
	  Sylvain Daubert.  [Ruby 1.9 - Bug #5430]

Tue Oct 11 06:06:29 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/coverage/coverage.c (Init_coverage):  Change list format and
	  describe Coverage.result output.  Patch by Sylvain Daubert.
	  [Ruby 1.9 - Bug #5428]

Tue Oct 11 05:53:23 2011  Eric Hodel  <drbrain@segment7.net>

	* object.c (Init_Object):  Add reference to BasicObject, brief
	  explanation of constant lookup.  Based on patch by Alvaro Pereyra
	  Rabanal.
	  [Ruby 1.9 - Bug #5426]

Sun Oct  9 11:06:52 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* test/psych/test_yamldbm.rb: don't run test if the system
	  don't support yaml/dbm.

	* test/syck/test_yamldbm.rb: ditto.

Sat Oct  8 08:54:56 2011  Eric Hodel  <drbrain@segment7.net>

	* enum.c (group_by):  Improve group_by description.  Patch by b t.
	  [#5411]

Sat Oct  8 03:17:51 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/shell.rb:  Document some methods of Shell.  Patch by Carol
	  Nichols.  [Ruby 1.9 - Bug #5417]

Fri Oct  7 17:54:28 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/test/unit/assertions.rb (assert_send, assert_not_send):
	  parenthesize non-empty arguments.

Fri Oct  7 06:35:50 2011  Eric Hodel  <drbrain@segment7.net>

	* array.c:  Use + for arguments described in documentation to allow
	  rdoc -C2 to work better.  Remove <code> from method references to
	  allow cross-references in HTML documentation.

Thu Oct  6 18:46:23 2011  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* vm_eval.c (make_no_method_exception): fix typo.

	* vm_insnhelper.c, vm_insnhelper.h: ditto.

Thu Oct  6 16:29:30 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_eval.c (make_no_method_execption): extract from
	  raise_method_missing().

	* vm_eval.c (send_internal): remove inadvertent symbol creation
	  from public_send.  based on a patch by Jeremy Evans <code AT
	  jeremyevans.net> in [ruby-core:38576]. [Feature #5112]

	* vm_insnhelper.c (vm_call_method): remove inadvertent symbol
	  creation from send and __send__, too.

Thu Oct  6 14:59:11 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/time.rb:  Clean up Time documentation.  Patch by Jake Goulding.
	  [Ruby 1.9 - Bug #5416]

Thu Oct  6 10:00:54 2011  Eric Hodel  <drbrain@segment7.net>

	* enum.c (group_by):  Improve documentation based on patch by b t.

Thu Oct  6 09:56:30 2011  Eric Hodel  <drbrain@segment7.net>

	* enum.c:  Clean up wording in Enumerable documentation.  Patch by b t.
	  [Ruby 1.9 - Bug #5411]

Thu Oct  6 09:17:18 2011  Eric Hodel  <drbrain@segment7.net>

	* time.c (Init_Time):  Remove editorial comments from Time
	  documentation, fix link.

Thu Oct  6 09:14:20 2011  Eric Hodel  <drbrain@segment7.net>

	* time.c (Init_Time):  Improve Time documentation.  Patch by Shane
	  Emmons.  [Ruby 1.9 - Bug #5404]
	* lib/time.rb:  Improve time.rb documentation including Time.strptime.
	  Patch by Shane Emmons.  [Ruby 1.9 - Bug #5402]

Thu Oct  6 08:54:05 2011  Eric Hodel  <drbrain@segment7.net>

	* random.c:  Improve documentation of Random.  Patch by Gregory
	  Parkhurst.  [Ruby 1.9 - Bug #5410]

Thu Oct  6 01:44:51 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* cont.c (cont_mark): mark original Thread object from saved_thread.
	  [ruby-dev:44571] [Bug #5386]

Wed Oct  5 16:33:04 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* vm_insnhelper.c (vm_call_cfunc): remove useless hack.

Wed Oct  5 05:56:39 2011  Eric Hodel  <drbrain@segment7.net>

	* hash.c (Init_Hash):  Improve Hash documentation.  Patch by Alvaro
	  Pereyra Rabanal.  [Ruby 1.9 - Bug #5405]

Wed Oct  5 05:47:59 2011  Eric Hodel  <drbrain@segment7.net>

	* random.c (Init_Random):  Add a top-level comment for Random.  Patch
	  by Brett Bim.  [Ruby 1.9 - Bug #5403]

Wed Oct  5 02:50:27 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/syntax_error.rb: Add file, line, offset, and
	  message attributes during parse failure.
	* ext/psych/parser.c: Update parser to raise exception with correct
	  values.
	* test/psych/test_exception.rb: corresponding tests.

Wed Oct  5 01:52:16 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/parser.c (parse): Use context_mark for indicating error
	  line and column.

Wed Oct  5 01:22:08 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/scalar_scanner.rb: use normal begin / rescue
	  since postfix rescue cannot receive the exception class. Thanks
	  nagachika!

Tue Oct  4 21:10:08 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* class.c (class_alloc): allocate extra memory after containing
	  object setup to get rid of rare-but-potential memory leak.

	* gc.c (gc_mark_children): skip marking extended members if ptr is
	  NULL.

Tue Oct  4 16:17:50 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/time.rb (Time.strptime): use Time.at if d[:seconds] is set.
	  Reported by Christopher Eberz. [ruby-core:39903] Bug #5399

Tue Oct  4 11:44:10 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* gc.c (rb_gc_set_params): ruby_verbose can be Qnil, so use RTEST.

Tue Oct  4 08:33:41 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/etc/etc.c:  Document Etc, Etc.sysconfdir, Etc.systmpdir.  Patch
	  by mathew murphy.  [Ruby 1.9 - Bug #5396]

Tue Oct  4 08:21:51 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/shellwords.rb:  Update toplevel comment with an example.  Patch
	  by Samnang Chhun.  [Ruby 1.9 - Bug #5388]

Tue Oct  4 08:15:50 2011  Eric Hodel  <drbrain@segment7.net>

	* proc.c (proc_call):  Update documentation to match argument handling
	  of proc/Proc.new/lambda/->()

Tue Oct  4 07:59:16 2011  Eric Hodel  <drbrain@segment7.net>

	* proc.c (proc_call):  Fix documentation of Proc#call vs Proc#===.
	  [Ruby 1.9 - Bug #5349]

Tue Oct  4 07:43:18 2011  Eric Hodel  <drbrain@segment7.net>

	* array.c (rb_ary_initialize):  Make Array.new description match
	  call-seq.  Patch by Henry Maddocks.  [Ruby 1.9 - Bug #5344]

Tue Oct  4 07:35:23 2011  Eric Hodel  <drbrain@segment7.net>

	* array.c (rb_ary_initialize):  Add output for examples.  Patch by
	  Jonathan Mukai.  [Ruby 1.9 - Bug #5216]

Tue Oct  4 07:30:50 2011  Eric Hodel  <drbrain@segment7.net>

	* array.c (rb_ary_s_create):  Add example results for Array::[].  Patch
	  by Jonathan Mukai.  [Ruby 1.9 - Bug #5215]

Tue Oct  4 07:15:17 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems:  Update to RubyGems 1.8.11.  Move Deprecate into the
	  Gem namespace.

Tue Oct  4 06:43:47 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb: update psych version.
	* ext/psych/psych.gemspec: generate new gemspec for new version.

Tue Oct  4 06:29:55 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb: calling `yaml` rather than `to_yaml`.
	* ext/psych/lib/psych/nodes/node.rb: Rename `to_yaml` to just `yaml`
	  in order to avoid YAML::ENGINE switching from replacing this method.
	* test/psych/helper.rb: fix tests for method name change.
	* test/psych/test_document.rb: ditto
	* test/psych/visitors/test_emitter.rb: ditto

Tue Oct  4 06:20:19 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/scalar_scanner.rb: Match values against the
	  floating point spec defined in YAML to avoid erroneous parses.
	* test/psych/test_numeric.rb: corresponding test.

Tue Oct  4 05:59:24 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/to_ruby.rb: ToRuby visitor can be
	  constructed with a ScalarScanner.
	* ext/psych/lib/psych/visitors/yaml_tree.rb: ScalarScanner can be
	  passed to the YAMLTree visitor.

Tue Oct  4 05:47:23 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/to_ruby.rb: Define Regexp::NOENCODING
	  for 1.9.2 backwards compatibility.
	* ext/psych/lib/psych/visitors/yaml_tree.rb: Fix Date string
	  generation for 1.9.2 backwards compatibility.

Mon Oct  3 23:56:39 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* gc.c (rb_gc_set_params): output GC parameter change messages only
	  if -w/-v options are specified. these messages are output to stderr,
	  not to stdout. [ruby-core:39795] [Bug #5380]

	* test/ruby/test_gc.rb (test_gc_parameter): add test for it.

Sun Oct  2 20:05:32 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm.c (rb_thread_mark), cont.c (cont_mark): revert r33369 and r33371
	  that may cause SEGV in certain environments.

Sun Oct  2 12:14:06 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* test/psych/test_yamldbm.rb: add test case.
	* test/syck/test_yamldbm.rb: ditto.

Sun Oct  2 11:28:09 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* lib/yaml/store.rb: make initialize method signature match the
	  superclass signature.

Sun Oct  2 10:44:01 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* io.c: fix documentation of ARGF.lineno=.

Sat Oct  1 20:03:19 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (have_framework): try as Objective-C.
	  https://twitter.com/nagachika/status/120294447660539904

Sun Oct  2 08:43:25 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm.c (rb_thread_mark), cont.c (cont_mark): self pointer should not
	  be marked by itself. Patch by Koichi Sasada.
	  [ruby-dev:44567] [Bug #5386]

Sun Oct  2 00:42:14 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm.c (rb_thread_mark): rb_thread_t needs self to be marked.
	  [ruby-dev:44566] [Bug #5386]

Sat Oct  1 09:48:53 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* gc.c (add_heap_slots, init_heap): reset heaps_inc zero when
	  heap slots are expanded by environment variable RUBY_HEAP_MIN_SLOTS.
	  [ruby-core:39777] [Bug #5380]

	* test/ruby/test_gc.rb (test_gc_parameter): add test for it.

	* test/ruby/envutil.rb (assert_normal_exit): add :child_env option to
	  enable pass environment variables to child process.

Thu Sep 29 13:17:51 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* array.c (ary_join_1): should not copy the encoding of non-string
	  element after string element.  [ruby-core:39776] [Bug #5379]

Thu Sep 29 11:53:56 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c (slot_sweep, rb_gc_finalize_deferred)
	  (rb_objspace_call_finalizer, rb_gc): run finalizers
	  sequentially.  [ruby-dev:44562]

Thu Sep 29 20:37:38 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/gdbm/gdbm.c (rb_gdbm_fatal): adjust argument type.

Thu Sep 29 20:10:42 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c (is_id_value, is_live_object): extract from id2ref().

	* gc.c (run_finalizer): use object instead of object id.

Thu Sep 29 20:07:36 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* use RB_TYPE_P which is optimized for constant types, instead of
	  comparison with TYPE.

Wed Sep 28 09:20:37 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (pthread_np.h): needs pthread.h to be included
	  previously on OpenBSD.  a patch by George Koehler <xkernigh AT
	  netscape.net> at [ruby-core:39752].  [Bug #5376]

Wed Sep 28 04:41:35 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* test/psych/test_yamlstore.rb: use tmpdir for tmpfile.
	* test/syck/test_yamlstore.rb: ditto.

Wed Sep 28 04:10:46 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* ext/bigdecimal/README: update report to.

Tue Sep 28 04:05:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/bigdecimal_en.html: removed because this file isn't
	  maintained now.

	* ext/bigdecimal/bigdecimal_ja.html: ditto.

Tue Sep 27 09:55:40 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread_pthread.c: make native_fd_select().
	* thread.c (do_select): remove #ifdef _WIN32. Instead, use
	  native_fd_select() always.

Tue Sep 27 09:44:59 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (do_select): remove cygwin specific hack. It's layer
	  violation and too large hack.
	* thread.c (cmp_tv, subtract_tv): removed.

Tue Sep 27 03:50:19 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* test/rexml/test_sax.rb: add require 'rexml/document'.

Tue Sep 27 03:32:27 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* test/psych/test_yamldbm.rb: fix #setup and #teardown.
	  [Bug #5370] [ruby-core:39730]
	* test/syck/test_yamldbm.rb: ditto.

Mon Sep 26 11:27:38 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/webrick/httputils.rb: Add MIME Type definition of .js and .svg.
	  patched by Hal Brodigan. [ruby-core:39704] [Bug #5365]

Mon Sep 26 09:20:44 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: remove DJGPP support. It's not longer supported
	  since ruby 1.9.0.

Mon Sep 26 09:07:46 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* include/ruby/defines.h: remove NextStep, OpenStep, Rhapsody
	  support. Last activity of their OSes are 7 years ago.
	* configure.in: ditto.
	* dir.c: ditto.
	* ext/tk/extconf.rb: ditto.

Mon Sep 26 09:02:49 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: remove a code for human68k. it's no longer
	  supported since r19677.

Sun Sep 25 23:43:32 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_asn1.c: fix int_ossl_asn1_decode0_cons when being
	  fed arbitrary string values.
	  Clearly distinguish between the cases "universal, infinite and
	  not a SEQUENCE or SET" and "universal SEQUENCE or SET, possibly
	  infinite". Raise error for universal tags that are not infinite.
	* test/openssl/test_asn1.rb: add a test for this.

	  Thanks to Hiroshi Yoshida for reporting this bug.
	  [Bug #5363] [ruby-dev:44542]

Sun Sep 25 20:57:18 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* test/syck/test/yamldbm.rb: add test for Syck::DBM.
	* test/psych/test_yamldbm.rb: add test for Psych::DBM.
	* test/psych/test_yamlstore.rb: add test for Psych::PStore.

Sun Sep 25 20:54:10 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* lib/yaml/dbm/dbm.rb: fix #update, add #key for using instead #index.
	  [Bug #5305][ruby-dev:44485]

Sun Sep 25 16:54:33 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* encoding.c (require_enc): reject only loading from untrusted
	  load paths.  [ruby-dev:44541] [Bug #5279]

	* transcode.c (load_transcoder_entry): ditto.

Sun Sep 25 16:45:05 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in: ignore all warnings from an arbitrary
	  header in /usr/local/include.

Sun Sep 25 03:43:03 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* enum.c (slice_before_i): use rb_attr_get to suppress wrong warning
	  for internal instance variable slicebefore_initial_state.

Fri Sep 23 14:20:14 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_asn1.c: remove unused variable.

Fri Sep 23 13:46:59 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_ssl_session.rb: execute test_session_exts_read
	  only for OpenSSL versions >= 0.9.8k. Thanks, Eric Wong, for
	  reporting this.
	  [Bug #4961] [ruby-core:37726]

Fri Sep 23 11:59:08 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_ssl_session.rb: ensure server calls callbacks in
	  test_ctx_server_session_cb. Thanks to Eric Wong for the patch.
	  [Bug #5336] [ruby-core:39619]

Thu Sep 22 02:53:19 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_insnhelper.c (vm_call_cfunc): suppress a warning.  note that
	  `volatile type *var' doesn't make var itself volatile.

Thu Sep 22 01:52:48 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* thread_pthread.c (ubf_select): activate timer thread when interrupt
	  blocking thread.
	  A patch created by Koichi Sasada. [ruby-core:39634] [Bug #5343]
	  to cover race condition, timer thread periodically send SIGVTARLM to
	  threads in signal thread list. so you should activate timer thread
	  when interrupt a thread.

Wed Sep 21 16:55:26 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/io/wait/test_io_wait.rb (TestIOWait#setup): of course, the
	  behavior of mingw is just same with mswin.

Tue Sep 20 18:08:51 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_insnhelper.c (vm_get_cvar_base): reduce duplicated checks and
	  move a warning outside the loop.

Mon Sep 19 18:55:51 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* lib/fileutils.rb (module FileUtils): improve performance of
	  FileUtils.compare_stream. a patch by Masaki Matsushita.
	  [Feature #5337] [ruby-core:39622]

Mon Sep 19 18:42:58 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* test/-ext-/old_thread_select/test_old_thread_select.rb:
	  select() with timeout may return early in old Linux kernels
	  with 250 Hz tickrate and no dynticks, so skip everything older
	  than 2.6.32 (which has long term support).
	  And, Make the timing assertions consistently use assert_operator with
	  timing difference in error message
	  Patch by Eric Wong. [Bug #5335] [ruby-core:39618]

Mon Sep 19 09:28:06 2011  Eric Hodel  <drbrain@segment7.net>

	* test/openssl/test_ssl.rb (class OpenSSL):  Test
	  OpenSSL::SSL::SSLSocket#session and #session=.

Mon Sep 19 07:54:17 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* object.c (rb_obj_clone): singleton class should be attached
	  singleton object to.  a patch by Satoshi Shiba <shiba AT rvm.jp>
	  at [ruby-dev:44460].  [Bug #5274]

Sat Sep 17 23:34:10 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (parser_data_type): inherit the core type in ripper so
	  that checks in core would work.  [ruby-core:39591] [Bug #5331]

Sat Sep 17 12:44:04 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* lib/find.rb (Find.find): add documentation that Find.find
	  without block returns an enumerator.

Thu Sep 15 11:39:43 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c (mark_entry, mark_key, mark_keyvalue): adjust callback
	  argument types.

Thu Sep 15 01:44:10 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* ext/tk/*: Change encoding from EUC-JP to UTF-8

Wed Sep 14 11:43:37 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_fd_rcopy): added an argument guard.
	  Patch by NAKAMURA Usaku. [Bug #5306] [ruby-core:39435]

Tue Sep 13 20:21:49 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/pstore.rb, test/test_pstore.rb: suppress warnings with -v.

	* lib/pstore.rb (PStore): always open in binary mode even if
	  default encodings are set.  [Bug #5311] [ruby-core:39503]

Tue Sep 13 05:37:15 2011  Yukihiro Matsumoto  <matz@ruby-lang.org>

	* io.c (Init_IO): update BINARY comment.  it should not change the
	  encoding of the result to ASCII-8BIT.  [ruby-talk:387719]

Mon Sep 12 19:55:00 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_thread_select): fix to ignore an argument
	  modification of rb_thread_fd_select().
	  based on a patch by Eric Wong. [Bug #5306] [ruby-core:39435]
	* thread.c (rb_fd_rcopy): New. for reverse fd copy.

	* test/-ext-/old_thread_select/test_old_thread_select.rb
	(test_old_select_false_positive): test for bug5306.

	* ext/-test-/old_thread_select/old_thread_select.c (fdset2array):
	  New. convert fdsets to array.
	* ext/-test-/old_thread_select/old_thread_select.c (old_thread_select):
	  return 'read', 'write', 'except' argument of rb_thread_select()
	  to ruby script.

Mon Sep 12 13:38:12 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* README.EXT, README.EXT.ja (2.2.2), parse.y (rb_check_id): add
	  documents for rb_check_id().

Mon Sep 12 12:53:39 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* lib/rake/file_list.rb (Rake::FileList#egrep): there is no need to
	  open files in binary mode.
	  see more details in https://github.com/jimweirich/rake/issues/74

Mon Sep 12 12:42:36 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/test_exception.rb (TestException#test_exit_success_p):
	  assert also the cases when exiting with true and false.

	* lib/test/unit/assertions.rb (assert_send): make arguments in
	  the default message clearer.

Sun Sep 11 05:23:14 2011  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/matrix.rb: Deal with subclasses of Matrix [redmine #5307]

Sat Sep 10 13:38:20 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* dir.c (dir_s_aref):
	* dir.c (dir_entries): Two small documentation fixes.
	  A patch from Aaron Lerch. [Bug #5302] [ruby-core:39404]

Sat Sep 10 08:30:03 2011  Koichi Sasada  <ko1@atdot.net>

	* gc.c (GC_PROFILE_MORE_DETAIL, CALC_EXACT_MALLOC_SIZE):
	  define macros only if they are not defined.
	  fixes: [Ruby 1.9 - Feature #5291]

Sat Sep 10 08:25:47 2011  Yukihiro Matsumoto  <matz@ruby-lang.org>

	* parse.y (bv_decls): parse.y relies on $$ = $1 before action
	  routines.  a patch from Michael Edgar.  [Bug #5303]
	  [ruby-core:39429]

Sat Sep 10 01:37:55 2011  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* sample/drb/dhasenc.rb: coding cookie of Emacs is coding,
	  not encoding.

	* sample/mine.rb: ditto.

Fri Sep  9 21:56:40 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* ext/bigdecimal/bigdecimal.c (BigDecimal_sqrt): Fix comment.
	  BigDecimal#sqrt requires argument. Reported by Makoto Kishimoto.
	  Thanks for your contribution. [Bug #5267] [ruby-dev:44452]

Fri Sep  9 11:00:55 2011  Shota Fukumori  <sorah@tubusu.net>

	* test/rubygems/test_gem_commands_help_command.rb: Add one
	  `require` because if run test-all with test/unit parallel
	  running, sometimes this test fails by some constants not found.
	  The error reason is some worker doesn't require the file needed by
	  this test. This issue is related to [ruby-core:36168].

Fri Sep  9 10:22:03 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* thread.c (rb_thread_select): fix a typo to initialize efds
	  properly.  [Bug #5299] [ruby-core:39380]

Fri Sep  9 02:02:09 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* template/yarvarch.ja:
	  Change encoding from Shift_JIS to UTF-8

Thu Sep  9 01:14:00 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* sample/drb/README.rd.ja:
	* sample/drb/dhasenc.rb:
	* sample/mine.rb:
	  Change encoding from EUC-JP to UTF-8

Thu Sep  8 21:03:22 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/nkf/nkf-utf8/nkf.c: import nkf 2.1.2 (be9c280)
	  Bump version number/release date only.

Thu Sep  8 12:43:18 2011  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (Init_GC): defined GC::Profiler.raw_data. based on the
	  patch by Eric Hodel. [ruby-core:37857] [Bug #4991]

Thu Sep  8 09:02:53 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c (id2ref): objects which are unmarked but not in sweep_slots
	  are not dead.

Thu Sep  8 07:44:25 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* transcode.c (rb_declare_transcoder, load_transcoder_entry): no
	  longer need to limit the length of transcoder library name.

Thu Sep  8 07:36:36 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/syck/lib/syck/types.rb: use toplevel Syck.
	  for the case someone define Syck::Syck (or YAML::Syck).

Thu Sep  8 07:33:12 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* gc.c (id2ref): unmarked object is already dead while lazy
	  sweeping, and to it cannot come back since other objects
	  referred from it might have been freed already.

Wed Sep  8 03:48:00 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* ext/readline/README.ja:
	  Change encoding from EUC-JP to UTF-8

Wed Sep  8 02:59:00 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* test/rexml/test_encoding.rb:
	  Add require 'require 'rexml/document'

Wed Sep  8 02:53:00 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* ext/nkf/nkf-utf8/nkf.c:
	  Change encoding from ISO-2022 to UTF-8

Wed Sep  7 23:41:24 2011  Kouhei Sutou  <kou@cozmixng.org>

	* lib/rexml/parsers/baseparser.rb, test/rexml/test_comment.rb:
	  allow a single hyphen in comment. [Bug #5278] [ruby-core:39289]
	  Reported by Thomas Fritzsche. Thanks!!!

Wed Sep  7 17:27:18 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/yaml.rb: explicitly specify ::Object to avoid the collision with
	  Syck::Object.

Tue Sep  6 21:06:49 2011  Shota Fukumori  <sorah@tubusu.net>

	* lib/test/unit.rb (_run_suites): Now reports are written the
	  following order: Skip, Failure, Error. [Feature #5282]

	* test_sorting.rb: test for above.

	* test4test_sorting.rb: Ditto.

	* lib/test/unit.rb (run): Put RUBY_DESCRIPTION before quitting.
	  [Feature #5282]

Tue Sep  6 21:13:47 2011  Masaya Tarui  <tarui@ruby-lang.org>

	* win32/Makefile.sub (INSNS): change command line option -Ks to -Ku
	  for generate *.inc. because insns.def encoding has been changed SJIS
	  to UTF-8. if $BASERUBY is 1.9, -Ks cause an error. [Feature #5128]
	  (same as r33194)

Tue Sep  6 15:55:24 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* transcode.c (load_transcoder_entry): concatenate paths directly.

	* encoding.c (load_encoding): predefined encoding names are safe.
	  [ruby-dev:44469] [Bug #5279]

	* transcode.c (load_transcoder_entry): ditto.

Tue Sep  6 12:07:10 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* transcode.c: enabled econv newline option.

Tue Sep  6 06:44:57 2011  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* numeric.c (dbl2ival): Fix Float#divmod and #round for 32 bit
	  platform. part 1 of [bug #5276]

Tue Sep  6 06:44:25 2011  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* numeric.c (flo_round): Fix criteria for 32 bits platform
	  part 2 of [bug #5276]

Tue Sep  6 05:37:11 2011  Masatoshi SEKI  <m_seki@mva.biglobe.ne.jp>

	* test/rinda/test_rinda.rb (test_core_03_notify): Fixed test failures
	  [ruby-dev:44430] [Ruby 1.9 - Bug #372]

Mon Sep  5 20:59:30 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* insns.def: change encoding pragma for emacs (shift_jis to utf-8).

Mon Sep  5 19:32:15 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* Makefile.in (INSNS): change command line option -Ks to -Ku for
	  generate *.inc. because insns.def encoding has been changed SJIS to
	  UTF-8. if $BASERUBY is 1.9, -Ks cause an error. [Feature #5128]

Mon Sep  5 18:10:56 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* transcode.c (rb_econv_binmode): newline decorators are
	  exclusive.

Mon Sep  5 15:03:37 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* test/rubygems/test_gem_security.rb
	  (test_class_build_self_signed_cert): reset opt[:trust_dir] to apply
	  temporary Gem.user_home.

Mon Sep  5 10:04:35 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* README.ja, README.EXT.ja: resolve conflicts. [ruby-dev:44459]

Mon Sep  5 05:13:22 2011  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* numeric.c (flo_round): Make Float#round round big values [bug
	  #5272]

Mon Sep  5 04:28:25 2011  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* numeric.c (int_round): Integer#round always returns an Integer [Bug
	  #5271]

Sun Sep  4 22:28:50 2011  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/imap.rb (default_port, default_imap_port,
	  default_tls_port, default_ssl_port, default_imaps_port):
	  added methods for consistency with Net::POP.
	  based on the patch by art lussos.  [ruby-core:38997] [Bug #5198]

Sun Sep  4 21:19:19 2011  Ayumu AIZAWA  <ayumu.aizawa@gmail.com>

	* Change encoding from EUC-JP to UTF-8. [Feature #5128]

Sun Sep  4 00:47:39 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* test/ruby/test_fiber.rb (TestFiber#test_no_valid_cfp):
	  add a test. Unlike TestThread#test_no_valid_cfp,
	  this test succeeds even if win32ole is required (see r33153).

Sun Sep  4 00:11:49 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* variable.c (rb_const_set): show the previous definition
	  location.  [EXPERIMENTAL]

Sat Sep  3 23:56:24 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (sizeof_struct_dirent_too_small): check if struct
	  dirent.d_name is too small.

	* configure.in (RUBY_MINGW32): take tool prefix from CC.

Sat Sep  3 23:52:08 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (argf_next_argv): open in default text mode.
	  [ruby-core:39234] [Bug #5268]

Sat Sep  3 18:40:57 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* lib/thread.rb (SizedQueue#max=): raise ArgumentError if max is not
	  positive number. patch by Masaki Matsushita.
	  [ruby-dev:44449] [Bug #5259]

	* test/thread/test_queue.rb (test_sized_queue_initialize,
	  test_sized_queue_assign_max): add tests for it.

Fri Sep  2 21:11:16 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (validate_enc_binmode, prep_stdio): default to text mode on
	  dosish platforms.  [ruby-core:38822] [Bug #5164]

	* transcode.c (rb_econv_prepare_options): keep default ecflags
	  unchanged if no options.

Fri Sep  2 14:36:47 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_insnhelper.c (vm_search_const_defined_class): search
	  ancestors only when global scope.  [ruby-core:39227] [Bug #5264]

Fri Sep  2 09:58:08 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (parser_tokadd_string, parser_yylex): ignore a backslash
	  which prefixes an non-ascii character, which has no escape
	  syntax.  [ruby-core:39222] [Ruby 1.9 - Bug #5262]

Fri Sep  2 04:05:25 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/visitors/yaml_tree.rb: emit strings tagged as
	  ascii-8bit as binary in YAML.
	* test/psych/test_string.rb: corresponding test.

Fri Sep  2 01:07:14 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* numeric.c (flo_round): substitute machine dependent magic number.

Thu Sep  1 17:31:22 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* insns.def (defineclass), vm_insnhelper.c (vm_get_cvar_base): see
	  also inherited constants for classes without superclass and
	  modules.  [ruby-core:37698] [Bug #3423]

Thu Sep  1 16:18:44 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* Release GVL while OpenSSL's public key generation.

	    t = Thread.new { print "."; sleep 0.1 }
	    key = OpenSSL::PKey::RSA.new(2048)
	    #=> Thread t works in parallel with public key generation if
		OS/machine allows it.

	  This works with OpenSSL >= 0.9.8. From this version, it has new
	  public key generation function which allows us to interrupt the
	  execution while pkey generation iterations.

	* ext/openssl/extconf.rb: Check existence of OpenSSL's new public key
	  generation function. (DH_generate_parameters_ex,
	  DSA_generate_parameters_ex and RSA_generate_key_ex.

	* ext/openssl/ossl_pkey.{h,c} (ossl_generate_cb_2,
	  ossl_generate_cb_stop): Added new callback function for OpenSSL pkey
	  generation which handles Thread interruption by Ruby.
	  ossl_generate_cb_stop is the unblock function(ubf) for Ruby which
	  sets a stop flag. New pkey generation callback ossl_generate_cb_2
	  checks the stop flag at each iterations of OpenSSL and interrupts
	  pkey generation when the flag is set.

	* ext/openssl/ossl_pkey_dsa.c (dsa_generate): Call
	  rb_thread_blocking_region with the above unblock function to release
	  GVL while pkey generation.

	* ext/openssl/ossl_pkey_rsa.c (rsa_generate): ditto.

	* ext/openssl/ossl_pkey_dh.c (dh_generate): ditto.

	* test/openssl/test_pkey_{dh,dsa,rsa}.rb: Test it.

Thu Sep  1 14:06:54 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_thread.rb (TestThread#test_no_valid_cfp): skip when
	  win32ole is required.  in such case, win32ole redefines
	  Thread#initialize, and the block argument becomes to be not the top
	  of the thread, then this testcase always fails.

Thu Sep  1 10:20:50 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_io_m17n.rb (TestIO_M17N#test_{default_mode_on_dosish,
	  default_mode_on_unix,text_mode,binary_mode}): sorry for wrong test
	  committed in r33144.  I'd misunderstood the spec of ruby's universal
	  newline.

Thu Sep  1 09:27:57 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* variable.c (rb_autoloading_value): Fix the order of definitions.
	  It is used by autoload_defined_p.

Wed Aug 31 17:28:23 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* variable.c (rb_autoload): There was a chance to run GC (from
	  rb_str_new2()) before finishing autoload_data_i construction. It
	  caused SEGV at rb_gc_mark() at autoload_i_mark.

	* variable.c (rb_autoload_load): Move RB_GC_GUARD() to proper
	  position based on suggestion by CHIKANAGA Tomoyuki at
	 http://d.hatena.ne.jp/nagachika/20110826/ruby_trunk_changes_33070_33078

	* variable.c (autoload_defined_p): Fix incompatible autoload behavior
	  that causes Rails crash. Class definition instruction defined in
	  'defineclass' in insns.def always invokes rb_autoload_load for a
	  constant. It's invoked for every class definition regardless of
	  existence of autoload definition. rb_autoload_load checks if a
	  constant is defined as autoloaded, but new thread-safe autoload
	  returned different value if the constant is under autoloading.

Wed Aug 31 17:20:56 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* Re-apply r33078, thread-safe autoload which is reverted at r33093.

Wed Aug 31 16:28:04 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_io_m17n.rb (TestIO_M17N#test_{default_mode_on_dosish,
	  default_mode_on_unix,text_mode,binary_mode}): tests for [Bug #5164].

Wed Aug 31 15:54:11 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/json: Merge json gem v1.5.4 (3dab4c5a6a97fac03dac).

Wed Aug 31 13:09:41 2011  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* numeric.c (flo_round): Avoid overflow by optimizing for trivial
	  cases [Bug #5227]

Wed Aug 31 00:50:01 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (rb_w32_select_with_thread): and my typo. we all must
	  be more careful.

Wed Aug 31 00:48:38 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* thread.c (rb_thread_select): critical typo in r33117.

Wed Aug 31 00:30:49 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/-ext-/old_thread_select/test_old_thread_select.rb
	  (TestOldThreadSelect#test_old_select_read_timeout): if the machine
	  is fast enough, the time used by code around IO.select may be smaller
	  than Time implement threshold.

Wed Aug 31 00:04:38 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* ext/-test-/old_thread_select/old_thread_select.c (old_thread_select):
	  typo.

	* test/-ext-/old_thread_select/test_old_thread_select.rb
	  (TestOldThreadSelect#test_old_select_signal_safe): use SIGINT instead
	  of SIGUSR1 because the former is general and the latter is platform
	  dependent.

Tue Aug 30 23:59:36 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c, include/ruby/intern.h (rb_w32_fd_copy): implement
	  for rb_thread_select() in thread.c.  the use of rb_fd_copy() is
	  introduced in r33117.
	  [Bug #5251] [ruby-core:39195]

	* thread.c (rb_thread_select): must call rb_fd_init() before using
	  rb_fdset_t.  see the implementations of rb_fd_init()s if you want to
	  know the reason.

Tue Aug 30 22:34:45 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* test/dl/test_callback.rb (test_callback_with_string): prevents
	  temporary string from GC.

Tue Aug 30 22:25:38 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* vm_insnhelper.c (vm_call_cfunc): revert r33112.  RB_GC_GUARD macro
	  protect a VALUE from GC.  It's not for general anti-optimizing
	  purpose.

Tue Aug 30 11:06:19 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/json: Merge json gem 1.5.4+ (2149f4185c598fb97db1).
	  [Bug #5173] [ruby-core:38866]

Tue Aug 30 09:57:50 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* lib/thread.rb (Queue#pop): fix a race against Thread.wakeup.
	  Patch by Masaki Matsushita <glass.saga at gmail dot com>
	  [Bug #5195] [ruby-dev:44400]

Tue Aug 30 09:48:07 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* cont.c (fiber_entry): fix stack allocation failure on Debian
	  GNU/kFreeBSD.
	  Patch by Lucas Nussbaum <lucas at lucas-nussbaum dot net>.
	  [Bug #5241] [ruby-core:39147]

Tue Aug 30 09:28:01 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread.c (rb_thread_select): rewrite by using
	  rb_thread_fd_select(). old one is EINTR unsafe.
	  Patch by Eric Wong. [Bug #5229] [ruby-core:39102]

	* test/-ext-/old_thread_select/test_old_thread_select.rb:
	  a testcase for rb_thread_select().
	* ext/-test-/old_thread_select/old_thread_select.c: ditto.
	* ext/-test-/old_thread_select/depend: ditto.
	* ext/-test-/old_thread_select/extconf.rb: ditto.

Tue Aug 30 09:08:22 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: fix a build failure on GNU Hurd.
	  Patch by Samuel Thibault <sthibault at debian dot org>. Thank you!
	  [Bug #5250] [ruby-core:39185]

Sun Aug 29 23:22:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* test/ruby/test_numeric.rb (test_num2long): modify a test against the
	  change by r33108.

Sun Aug 29 09:58:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* numeric.c (bit_coerce): A Fixnum and a Bignum are only permitted for
	 bitwise arithmetic with a Fixnum.  #1792

	* test/ruby/test_fixnum.rb: add tests for the above change.

	* bignum.c (bit_coerce): A Fixnum and a Bignum are only permitted for
	 bitwise arithmetic with a Bignum.  #1792

	* test/ruby/test_bignum.rb: add tests for the above change.

Sun Aug 28 15:38:17 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* ext/date/date_parse.c (date_zone_to_diff): keep a temporary string
	  stored in variable while the contents buffer is being used.

	* ext/date/date_parse.c (date_zone_to_diff): get rid of out of bounds
	  memory read. [ruby-dev:44409] [Bug #5213]

Sun Aug 28 05:29:50 2011  Ryan Davis  <ryand-ruby@zenspider.com>

	* lib/minitest/*: Imported minitest 2.5.1 (r6596)
	* test/minitest/*: ditto

Sat Aug 27 20:46:05 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm.c (rb_vm_rewrite_dfp_in_errinfo): change return type
	  to suppress a warning.

	* vm_core.h: ditto.

Sat Aug 27 19:04:06 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* internal.h (rb_strftime_timespec): moved from time.c and define only
	  if ruby/encoding.h is included.

	* internal.h (rb_strftime): ditto.

Sat Aug 27 18:53:51 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* proc.c (proc_new): force to rewrite errinfo when calling Proc.new in ensure.
	  [Bug #5234] [ruby-core:39125]
	  This code will be removed after changing throw mechanism (see r33064).

	* vm.c (rb_vm_rewrite_dfp_in_errinfo): new function.

	* vm.c (vm_make_env_each): changed accordingly.

	* vm_core.h: ditto.

	* bootstraptest/test_flow.rb: add tests for above.

Sat Aug 27 18:44:06 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* internal.h (rb_strftime_timespec): move to time.c because it depends
	  encoding.h.

Sat Aug 27 18:17:58 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* strftime.c (rb_strftime_with_timespec): get enc argument to specify
	  the encoding of the format. On Windows (at least Japanese Windows),
	  Time#strftime("%Z") includes non ASCII in locale encoding (CP932).
	  So convert locale to default internal. [ruby-core:39092] [Bug #5226]

	* strftime.c (rb_strftime): ditto.

	* strftime.c (rb_strftime_timespec): ditto.

	* internal.h (rb_strftime_timespec): follow above.

	* time.c (rb_strftime_alloc): ditto.

	* time.c (strftimev): ditto.

	* time.c (time_strftime): ditto.

	* time.c (time_to_s): the resulted string of Time#to_s is always
	  ascii only, so this should be US-ASCII.

	* time.c (time_asctime): ditto.

Sat Aug 27 11:18:12 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* Revert r33078. It caused a Rails application NoMethodError.

	 /home/nahi/git/emptyApp/ruby/1.9.1/gems/rack-mount-0.6.14/lib/rack/mount/utils.rb:157: warning: toplevel constant ScanError referenced by Regin::Parser::ScanError
	 /home/nahi/git/emptyApp/ruby/1.9.1/gems/rack-mount-0.6.14/lib/rack/mount/vendor/regin/regin/parser.rb:17:in `parse_regexp': undefined method `scan_str' for #<Regin::Parser:0x00000002344548> (NoMethodError)

Sat Aug 27 08:44:58 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc:  Import RDoc 3.9.4.  Typo and grammar fixes by Luke Gruber.
	  [Ruby 1.9 - Bug #5203]

Sat Aug 27 07:53:34 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/open-uri.rb:  Fix indentation of OpenURI::OpenRead#open.  Use ++
	  instead of `' for method arguments in open-uri.rb

Sat Aug 27 07:22:07 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/pathname/lib/pathname.rb:  Fix typos and grammar mistakes.  Patch
	  by Luke Gruber.  [#5203]
	* ext/pty/lib/expect.rb:  ditto
	* lib/mathn.rb:  ditto
	* lib/net/http.rb:  ditto
	* lib/open-uri.rb:  ditto
	* lib/ostruct.rb:  ditto
	* lib/tempfile.rb:  ditto
	* lib/thread.rb:  ditto
	* lib/weakref.rb:  ditto
	* sample/webrick/httpproxy.rb:  ditto

Sat Aug 27 04:03:18 2011  Koichi Sasada  <ko1@atdot.net>

	* iseq.c (iseq_data_to_ary): fix type of variable
	  (long -> unsigned long) to suppress a warning.

Sat Aug 27 04:02:11 2011  Koichi Sasada  <ko1@atdot.net>

	* vm_core.h: add a decl. of rb_autoloading_value().

Fri Aug 26 19:12:08 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* variable.c: Make autoload thread-safe. See #921.

	  What's the problem?
	    autoload is thread unsafe. When we define a constant to be
	    autoloaded, we expect the constant construction is invariant. But
	    current autoload implementation allows other threads to access the
	    constant while the first thread is loading a file.

	  What's happening inside?
	    The current implementation uses Qundef as a marker of autoload in
	    Constant table. Once the first thread find Qundef as a value at
	    constant lookup, it starts loading a defined feature. Generally a
	    loaded file overrides the Qundef in Constant table by module/class
	    declaration at very beginning lines of the file, so other threads
	    can see the new Module/Class object before feature loading is
	    finished. It breaks invariant construction.

	  How to solve?
	    To ensure invariant constant construction, we need to override
	    Qundef with defined Object after the feature loading. For keeping
	    Qundef in Constant table, I expanded autoload_data struct in
	    Module to have a slot for keeping the defined object while feature
	    loading. And changed Module's constant lookup/update logic a
	    little so that the slot is only visible from the thread which
	    invokes feature loading. (== the first thread which accessed the
	    autoload constant)

	  Evaluation?
	    All test passes (bootstrap test, test-all and RubySpec) and added
	    8 tests for threading behavior. Extra logics are executed only
	    when Qundef is found, so no perf drop should happen except
	    autoloading.

	* variable.c (rb_autoload): Prepare new autoload_data struct.

	* variable.c (rb_autoload_load): Load feature and update Constant
	  table after feature loading is finished.

	* variable.c (rb_const_get_0): When the fetched constant is under
	  autoloading, it returns the object only for the thread which starts
	  autoloading.

	* variable.c (rb_const_defined_0): Ditto.

	* variable.c (rb_const_set): When the specified constant is under
	  autoloading, it sets the object only for the thread which starts
	  autoloading. Otherwise, simply overrides Qundef with constant
	  override warning.

	* vm_insnhelper.c (vm_get_ev_const): Apply same change as
	  rb_const_get_0 in variable.c.

	* test/ruby/test_autoload.rb: Added tests for threading behavior.

Fri Aug 26 10:10:37 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems:  Update to RubyGems 1.8.10.  Fixes security issue in
	  creating ruby-format gemspecs.  Fixes Gem.dir not being at the front
	  of Gem.path to fix uninstall and cleanup commands.  Fixes gem
	  uninstall stopping on the first missing gem.

Fri Aug 26 08:21:10 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* time.c (strftimev): Make Time#to_s default to US-ASCII encoding but
	  respect Encoding.default_internal. [ruby-core:39092]
	* test/ruby/test_time.rb (class TestTime): Corresponding test.

Thu Aug 25 09:43:16 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/openssl/lib/openssl/bn.rb:  Hide copyright info from RDoc.
	* ext/openssl/lib/openssl/digest.rb:  ditto
	* ext/openssl/lib/openssl/x509.rb:  ditto
	* ext/openssl/lib/openssl/cipher.rb:  ditto

Thu Aug 25 09:25:48 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/openssl/ossl_digest.c:  Document OpenSSL::Digest::digest and add
	  an example to OpenSSL::Digest.  Patch by Sylvain Daubert.
	  [Ruby 1.9 - Bug #5166]
	* ext/openssl/lib/openssl/digest.rb (module OpenSSL):  ditto

Thu Aug 25 08:19:43 2011  Koichi Sasada  <ko1@atdot.net>

	* vm.c (vm_make_env_each): work around to solve Bug #2729.
	  fixes: Bug #2729
	  a patch from Kazuki Tsujimoto <kazuki@callcc.net>
	  This problem is caused by changing dfp (dynamic env pointer)
	  from saved dfp.  Saved dfp is pointed env in VM stack.  However,
	  the dfp can be moved because VM copies env from VM stack to
	  the heap.  At this copying, dfp was also changed.  To solve this
	  problem, I'll try to change throw mechanism (not save target dfp,
	  but save target cfp).

	* bootstraptest/test_flow.rb: add a test for above.

Thu Aug 25 07:57:33 2011  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* numeric.c (int_round): Fix Integer#round [ruby-core:39096]

Thu Aug 25 07:00:00 2011  Koichi Sasada  <ko1@atdot.net>

	* vm_insnhelper.h, vm_insnhelper.c, vm.c, vm_method.c, insns.def:
	  Manage a redefinition of special methods for each classes.
	  A patch from Joel Gouly <joel.gouly@gmail.com>.  Thanks!

Thu Aug 25 06:51:08 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb: Fixing psych version number.
	* ext/psych/psych.gemspec: updating the gemspec.

Thu Aug 25 06:11:35 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/nodes/node.rb: default `to_yaml` encoding to be
	  UTF-8.
	* test/psych/test_encoding.rb: test yaml dump encoding.

Thu Aug 25 01:24:33 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* test/fileutils/test_fileutils.rb (test_chmod_symbol_mode): Solaris
	  seems to behave the same as FreeBSD.

Thu Aug 25 01:11:36 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* test/ruby/test_rubyoptions.rb (test_script_from_stdin): slave pty
	  should be manipulated because master pty may not be a tty on some
	  environment (e.g. Solaris). [Bug:#5222] [ruby-dev:44420]

Wed Aug 24 15:13:56 2011  Koichi Sasada  <ko1@atdot.net>

	* iseq.h, iseq.c, compile.c: Change the line number data structure
	  to solve an issue reported at [ruby-dev:44413] [Ruby 1.9 - Bug #5217].
	  Before this fix, each instruction has an information including
	  line number (iseq::iseq_insn_info_table).  Instead of this data
	  structure, recording only line number changing places
	  (iseq::iseq_line_info_table).
	  The order of entries in iseq_line_info_table is ascending order of
	  iseq_line_info_table_entry::position.  You can get a line number
	  by an iseq and a program counter with this data structure.
	  This fix reduces memory consumption of iseq (bytecode).
	  On my measurement, a rails application consumes 21.8MB for
	  iseq with this fix on the 32bit CPU.  Without this fix, it
	  consumes 24.7MB for iseq [ruby-dev:44415].

	* proc.c: ditto.

	* vm_insnhelper.c: ditto.

	* vm_method.c: ditto.

	* vm.c (rb_vm_get_sourceline): change to use rb_iseq_line_no().

Wed Aug 24 09:49:10 2011  Koichi Sasada  <ko1@atdot.net>

	* insns.def (defined): fix to checking class variable.
	  A patch by Magnus Holm <judofyr@gmail.com>.  Thanks!

	* test/ruby/test_variable.rb: add a test for above.

Wed Aug 24 08:53:06 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc:  Update to RDoc 3.9.3.  Fixes RDoc with `ruby -Ku`.  Allows
	  HTTPS image paths to be turned into <img> tags.  Prevents special
	  markup inside <tt> from being processed.

Wed Aug 24 07:57:43 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems:  Update to RubyGems 1.8.9.  Fixes uninstalling multiple
	  gems and gem cleanup.

Wed Aug 24 06:45:20 2011  Ryan Davis  <ryand-ruby@zenspider.com>

	* lib/minitest/*: Imported minitest 2.5.0 (r6557)
	* test/minitest/*: ditto

Wed Aug 24 00:38:22 2011  Yusuke Endoh  <mame@tsg.ne.jp>

	* thread.c (update_coverage): skip coverage count up if the current
	  line is out of the way.  rb_sourceline() is unreliable when source
	  code is big.  [ruby-dev:44413]

	* test/coverage/test_coverage.rb: add a test for above.

Tue Aug 23 15:23:56 2011  Eric Hodel  <drbrain@segment7.net>

	* load.c (rb_f_require):  Improve documentation of Kernel#require.
	  [Ruby 1.9 - Bug #5210]

Tue Aug 23 11:27:26 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* ext/zlib/zlib.c (gzfile_read_header): Ensure that each section of
	  gzip header is readable to avoid SEGV.

	* test/zlib/test_zlib.rb (test_corrupted_header): Test it.

Mon Aug 22 23:43:33 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* sprintf.c (rb_str_format): add RB_GC_GUARD to prevent temporary
	  strings from GC.

Sun Aug 21 17:49:53 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* iseq.c (iseq_s_disasm): remove variable which is no longer used
	  since r33013.

Sun Aug 21 14:20:58 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* configure.in: use LD_LIBRARY_PATH_64 on 64-bit Solaris.

Sat Aug 20 13:19:52 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* iseq.c (iseq_s_disasm): fix a bug that may cause SEGV.

	* test/ruby/test_method.rb (test_body): add a test for the above change.

Sat Aug 20 10:43:24 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/stringio/stringio.c (strio_read): return new string if nil
	  is explicitly given as a buffer ([Bug #5207]), otherwise set the
	  encoding.  also removed dead code.

Fri Aug 19 14:25:51 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* process.c (proc_spawn_v, proc_spawn): should not wait the
	  spawned process.

	* process.c (proc_spawn_v): fix missing argument, and try with
	  /bin/sh only if failed with ENOEXEC.

Fri Aug 19 14:12:57 2011  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/imap.rb (idle): raises a Net::IMAP::Error when the
	  connection is closed.  based on the patch by Hugo Barauna.
	  [Bug #5190] [ruby-core:38930]

Fri Aug 19 13:18:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* configure.in: defines _DARWIN_UNLIMITED_SELECT if the target_os
	  is darwin.

Fri Aug 19 13:14:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* thread.c: add a description for the behavior of select(2) on
	  Mac OS X 10.7 (Lion).

Fri Aug 19 11:28:58 2011  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/net/imap.rb (msg_att): accepts extra space before ')'.
	  based on the patch by art lussos.  [Bug #5163] [ruby-core:38820]

Wed Aug 17 23:01:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/bigdecimal.c (cannot_be_coerced_into_BigDecimal):
	  remove duplication.

Wed Aug 17 15:27:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/bigdecimal.c (cannot_be_coerced_into_BigDecimal):
	  add a new function for raising error when an object cannot coerce
	  into BigDecimal.  [Bug #5172]

	* ext/bigdecimal/bigdecimal.c (BigDecimalValueWithPrec): use
	  cannot_be_coerced_into_BigDecimal function.

	* ext/bigdecimal/bigdecimal.c (BigMath_s_exp): ditto.

	* ext/bigdecimal/bigdecimal.c (BigMath_s_log): ditto.

	* test/bigdecimal/test_bigdecimal.rb: test for the above changes.

	* test/bigdecimal/testbase.rb (under_gc_stress): add a new utility
	  method to run tests under the condition of GC.stress = true.

Wed Aug 17 10:16:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* rational.c (nurat_coerce): Rational#coerce should converts itself
	  into Complex if the argument is a Complex with non-zero imaginary
	  part.  [Bug #5020] [ruby-dev:44088]

	* test/ruby/test_rational.rb (test_coerce): test for the above change.

Wed Aug 17 06:33:19 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_x509cert.c: Add class documentation for
	  OpenSSL::X509::Certificate.

Wed Aug 17 04:54:25 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_pkey.c: corrected docs, OpenSSL::PKey::DH does
	  *not* support #sign/verify.

Tue Aug 16 18:56:54 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm.c (ruby_threadptr_data_type): rename to hide.
	  [ruby-core:38972]

Tue Aug 16 18:52:08 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* win32/mkexports.rb (Exports::Mswin#each_export): exclude Init_
	  and _threadptr_ functions, as well as mingw.

Tue Aug 16 09:31:44 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/dl:  Add documentation.  Patch by Vincent Batts.
	  [Ruby 1.9 - Bug #5192]

Tue Aug 16 08:48:26 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/.document (fiddle):  Remove duplicate entry
	* ext/fiddle:  Complete documentation of Fiddle.  Patch by Vincent
	  Batts.  [#5192]

Tue Aug 16 08:00:15 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/socket:  Make Socket documentation appear.  Add documentation for
	  Socket, TCPServer, SOCKSSocket.  Patch by Sylvain Daubert.
	  [Ruby 1.9 - Feature #5182]

Mon Aug 15 09:58:55 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_ssl.c: Support disabling OpenSSL compression.

	* test/openssl/test_ssl.rb: Add a test for it.
	  Thanks to Eric Wong for the patch.
	  [Ruby 1.9 - Feature #5183] [ruby-core:38911]

Sun Aug 14 05:57:01 2011  Tanaka Akira  <akr@fsij.org>

	* test/socket/test_socket.rb (test_connect_timeout): added a test
	  based on a patch by Eric Wong.  [ruby-core:38910]

Sat Aug 13 22:17:27 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* tool/mkconfig.rb: do not make the entries related to sitedir and
	  verdordir if disabled by --without options.  [ruby-core:38922]
	  [Bug #5187]

Sat Aug 13 17:03:22 2011  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: [ruby-core:38861]

Sat Aug 13 09:39:07 2011  Tadayoshi Funaba  <tadf@dotrb.org>

	* test/date/test_*.rb: added tests.

Sat Aug 13 09:36:19 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* ext/date/date_parse.c (parse_ddd_cb): fix r32896. RB_GC_GUARD
	  insertion position was mistaken. [ruby-dev:44337] [Bug #5152]

Sat Aug 13 09:26:24 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/core_ext.rb: Make Kernel#y private.
	  [ruby-core:38913]

	* test/psych/test_yaml.rb: corresponding test.

Sat Aug 13 09:05:16 2011  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c (date_strftime_alloc): followed the change
	  of r32885.

	* doc/NEWS-1.9.3: followed the above change.

Sat Aug 13 08:55:38 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych/scalar_scanner.rb: Only consider strings
	  with fewer than 2 dots to be numbers. [ruby-core:38915]

Sat Aug 13 08:47:20 2011  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: [ruby-core:38855].

Sat Aug 13 03:41:37 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/uri/common.rb:  Fix documentation of URI::Parser.new.  Patch by
	  Steve Klabnik.  [Ruby 1.9 - Bug #5177]

Sat Aug 13 02:19:57 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/digest/digest.c:  Add documentation for the Digest module.  Patch
	  by Sylvain Daubert.  [Ruby 1.9 - Bug #5167]

Sat Aug 13 01:56:11 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rake:  Update to Rake 0.9.2.2.  Prevent pollution of toplevel
	  namespace by Commands.  Remove unused variable and debugging
	  statement in tests.

Fri Aug 12 11:39:35 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: Describe "no" configure option for site_ruby
	  and vendor_ruby. Patch by Vit Ondruch. [Bug #5187][ruby-core:38921]

Fri Aug 12 09:00:24 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems:  Import RubyGems 1.8.8.  Fixes encoding of YAML gemspec
	  from gems.  Github Issue #149

Fri Aug 12 08:17:46 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/ipsocket.c (init_inetsock_internal): use SOMAXCONN for
	  listen backlog.

	* ext/socket/unixsocket.c (rsock_init_unixsock): ditto.

	* ext/socket/lib/socket.rb (Addrinfo#listen): ditto.
	  (Socket.tcp_server_sockets_port0): ditto.

	* ext/socket/mkconstants.rb: define SOMAXCONN as 5 if not available.

	[ruby-core:38493]

Fri Aug 12 03:24:35 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc:  Import RDoc 3.9.2.  Fixes TIDYLINK for HTML output.

Thu Aug 11 15:37:42 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* variable.c (autoload_delete): An autoload entry is still in a
	  RCLASS_IV_TBL, not in a RCLASS_CONST_TBL, so take back the table
	  changed in r29600. And an autoload entry keeps not a
	  rb_const_entry_t but a NODE so remove rb_const_entry_t thing added
	  in r29602.

Thu Aug 11 15:07:36 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (link_command): use LIBRUBYARG in rbconfig for
	  unbundled extensions.  [ruby-core:38802] [Bug #5147]

	* lib/mkmf.rb (init_mkmf): revert r32902.  [ruby-core:38903]

Wed Aug 10 23:03:55 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/lib/socket.rb: fix argument check in the previous commit.

Wed Aug 10 22:12:28 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/lib/socket.rb (Socket.tcp): add :connect_timeout option.
	  (Addrinfo#connect_from): add :timeout option.
	  (Addrinfo#connect): ditto.
	  (Addrinfo#connect_to): ditto.
	  [ruby-core:38538]

Wed Aug 10 21:27:19 2011  Tanaka Akira  <akr@fsij.org>

	* lib/net/pop.rb: fix typo in document.

	* lib/net/http.rb: ditto.

	* lib/net/imap.rb: ditto.

Wed Aug 10 19:30:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* complex.c (nucomp_rationalize): calls rationalize of real part if
	  imaginary part is exactly zero.  The patch is made by Marc-Andre
	  Lafortune.  fixes [Bug #5178] [ruby-core:38885]

	* test/ruby/test_complex.rb (test_rationalize): add a test for the
	  above change.

	* complex.c (nucomp_to_r): fix RDoc comment.  The patch is made by
	  Marc-Andre Lafortune.

Wed Aug 10 14:11:07 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (init_mkmf): set $LIBRUBYARG regardless of shared
	  option.  [ruby-core:38802] [Bug #5147]

Wed Aug 10 02:53:27 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/net/http.rb: come back autoload. OpenSSL constant is used
	  some places, so it leads mistakes like HTTP.start.

Tue Aug  9 22:57:45 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* ext/date/date_parse.c (date_zone_to_diff): add RB_GC_GUARD.
	  [ruby-dev:44337] [Bug #5152]

	* ext/date/data_parse.c (parse_ddd_cb): ditto.

Tue Aug  9 14:25:47 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* ext/fiddle/conversions.c (generic_to_value): ffi_arg and ffi_sarg
	  should be used to handle shorter return value. fix [Bug #3861]
	  [ruby-core:32504]

	* ext/fiddle/closure.c (callback): ditto

	* ext/fiddle/conversions.h (fiddle_generic): ditto

	* ext/fiddle/conversions.c (value_to_generic): char, short and int
	  are strictly distinguished on big-endian CPU, e.g. sparc64.

Tue Aug  9 11:21:08 2011  Narihiro Nakamura  <authornari@gmail.com>

	* gc.c (gc_lazy_sweep): if sweep target slots are not found, we
	  try heap_increment() because it might be able to expand the
	  heap. [Bug #5127] [ruby-dev:44285]

	* gc.c (gc_clear_mark_on_sweep_slots): if a sweeping was
	  interrupted, we expand the heap if at all possible.

Tue Aug  9 12:20:33 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* test/fiddle/helper.rb (libc_so, libm_so): Solaris support added.
	  [ruby-core:38853] [Bug #5168]

	* test/dl/test_base.rb (libc_so, libm_so): on Solaris, remove libc
	  and libm version numbers for detecting default libc and libm.

Tue Aug  9 09:18:04 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/zlib/zlib.c (gzfile_wrap):  Document encoding options.

	* ext/zlib/zlib.c (rb_gzwriter_s_open): ditto

	* ext/zlib/zlib.c (rb_gzreader_s_open): ditto

Sun Aug  7 23:31:32 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* time.c (rb_strftime_alloc): raise ERANGE if width is too large.
	  Patch by Nobuyoshi Nakada. [Bug #4457] [ruby-dev:43285]

	* test/ruby/test_time.rb (class TestTime): add a test for the
	  above change.

Sun Aug  7 22:51:45 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* ext/openssl/ossl_asn1.c (decode_eoc): remove unused variables.
	  Patch by Eric Wong. [Feature #5157] [ruby-core:38798]

	* ext/openssl/ossl_asn1.c (ossl_asn1_decode): ditto.

	* ext/openssl/ossl_pkey.c (ossl_pkey_new_from_data): ditto.

Sun Aug  7 22:37:08 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* configure.in: add -Wunused-variable to default CFLAGS.
	  Patch by Eric Wong. [Feature #5157] [ruby-core:38798]

Sun Aug  7 15:37:35 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/digest/sha2/sha2ossl.c: use original SHA384_Final on DragonFly.

Sun Aug  7 14:08:16 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* ext/objspace/objspace.c: fix typos in a document.

Sun Aug  7 07:14:57 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* cont.c (HAVE_GETCONTEXT): see getcontext(3) because DragonFly BSD
	  x64 port doesn't have it.

Sun Aug  7 00:42:55 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/tk/lib/tk/wm.rb (Tk::Wm.command): Add the missing receiver
	  before calling epath. patched by flori
	 https://github.com/flori/ruby/commit/aa9474d32e5f2c57f8b0e2e0c528a03f06a4d433

Sat Aug  6 07:06:34 2011  Eric Hodel  <drbrain@segment7.net>

	* marshal.c (w_object):  Fix exception message when _dump_data is not
	  defined on a T_DATA object.

Fri Aug  5 22:16:20 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* numeric.c (rb_infinity, rb_nan): use WORDS_BIGENDIAN to get endian.
	  fix [Bug #5160] [ruby-dev:44356]

Fri Aug  5 17:14:11 2011  Akinori MUSHA  <knu@iDaemons.org>

	* test/test_syslog.rb (TestSyslog#test_log): Do not be too
	  specific about the log line format.  Fixes #5081.

Fri Aug  5 15:57:10 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* complex.c (f_signbit): fix compile error in gcc4 on Solaris with
	  CFLAGS="-std=gnu99".  [ruby-dev:44355] fix [Bug #5159]

	* math.c: ditto.

Fri Aug  5 15:55:33 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/ruby/test_object.rb: tests that respond_to? returns false.

Fri Aug  5 13:32:43 2011  Shugo Maeda  <shugo@ruby-lang.org>

	* lib/xmlrpc/client.rb, lib/xmlrpc/server.rb: should use
	  String#bytesize instead of String#size.

Fri Aug  5 12:18:20 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* vm_eval.c (check_funcall): try respond_to? first if redefined.
	  [Bug #5158]

Fri Aug  5 09:48:22 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems:  Import RubyGems 1.8.7:
	  Added missing require for `gem uninstall --format-executable`.

	  The correct name of the executable being uninstalled is now displayed
	  with --format-executable.

	  Fixed `gem unpack uninstalled_gem` default version picker.

	  RubyGems no longer claims a nonexistent gem can be uninstalled.

	  `gem which` no longer claims directories are requirable files.

	  `gem cleanup` continues cleaning up gems if one can't be uninstalled
	  due to permissions.  Issue #82.

	  Gem repository directories are no longer created world-writable.
	  Patch by Sakuro OZAWA.  [Ruby 1.9 - Bug #4930]

Fri Aug  5 07:00:31 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* test/io/console/test_io_console.rb (test_noctty): daemon() on
	  Fedora Rawhide seems not to detach the controlling terminal,
	  when the argument noclose is non-zero.  ref: [Bug #5135]

Thu Aug  4 23:48:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* thread_pthread.c (native_cond_signal): retry to call pthread_cond_signal
	  and pthread_cond_broadcast if they return EAGAIN in
	  native_cond_signal and native_cond_broadcast, respectively.
	  It is for the pthread implementation of Mac OS X 10.7 (Lion).
	  fixes #5155.  [ruby-dev:44342].

	* thread_pthread.c (native_cond_broadcast): ditto.

	* thread_pthread.c (struct cached_thread_entry): stop using
	  pthread_cond_t and its functions directly.

	* thread_pthread.c (register_cached_thread_and_wait): ditto.

	* thread_pthread.c (use_cached_thread): ditto.

Thu Aug  4 20:29:41 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* configure.in: when Solaris cc, use $(CC) to link shared libs.

Thu Aug  4 20:19:11 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* error.c (report_bug): use a small message buffer instead of BUFSIZ.
	  It is needed for avoiding nested SIGSEGV on Linux.
	  Note: BUFSIZ is not proper buffer size. It's unrelated with maximum
	  filename length. :-/
	  [Bug #5139] [ruby-dev:44315]

Thu Aug  4 16:08:45 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* tool/rbinstall.rb (gem): install all gemspecs under lib and ext.

	* tool/rbinstall.rb (Gem::Specification): may not be defined when
	  cross-compiling and BASERUBY is 1.8.

Thu Aug  4 11:30:36 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* include/ruby/missing.h: define __syscall on OpenBSD as r32702.

Thu Aug  4 03:02:54 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* tool/rbinstall.rb: use rubygems to load gemspecs, copy actual
	  gemspecs on install rather than generate fake ones for all gems.

Thu Aug  4 02:45:10 2011  Kenta Murata  <mrkn@mrkn.jp>

	* configure.in: set CXX variable to the C++ compiler that matches the
	  C compiler specified by CC variable (e.g. use g++-4.2 for gcc-4.2).

Thu Aug  4 02:21:10 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* lib/mkmf.rb (link_command): use static library only for bundled
	  extensions.  [Bug #5147]

Thu Aug  4 02:02:10 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/psych.gemspec: installing psych as a gem.

Wed Aug  3 16:01:35 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* util.c, include/ruby/util.h (ruby_add_suffix): remove the function.
	  [Bug #5153] [ruby-core:38736]

	* io.c (argf_next_argv): remove the call of above function.

	* ext/-test-/add_suffix, test/-ext-/test_add_suffix.rb: remove the test
	  extension module because this is only for testing ruby_add_suffix().

	* LEGAL: remove the mention about a part of util.c, because now we
	  removed the part.

	* io.c (argf_next_argv): now the new filename is not guaranteed to
	  use, so should check the return value of rename(2).

	* test/ruby/test_argf.rb (TestArgf#test_inplace_rename_impossible):
	  now we expect same result with other platforms on no_safe_rename
	  platforms (=Windows).

Wed Aug  3 09:18:08 2011  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* test/xmlrpc/webrick_testing.rb (WEBrick_Testing#start_server):
	  Like r32795, bind address should be specified.

Wed Aug  3 07:46:30 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* encoding.c (enc_find): mistakenly remained !.  [Bug #5150]

Wed Aug  3 00:11:08 2011  Tanaka Akira  <akr@fsij.org>

	* lib/prettyprint.rb: update document.  [ruby-core:36776]

Tue Aug  2 22:04:46 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* gc.c (init_heap): allocate sigaltstack after heaps are allocated.
	  [ruby-dev:44315] [Bug #5139]

	* vm.c (thread_free): use free because objspace is not ready.

	* vm.c (th_init): use malloc because objspace is not ready.

Tue Aug  2 20:10:16 2011  Shota Fukumori  <sorah@tubusu.net>

	* test/testunit/test_parallel.rb: pass "--ruby" option to
	  test/testunit/tests_for_parallel/runner.rb. [Bug #5132] [ruby-dev:44303]

Tue Aug  2 15:53:37 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* encoding.c (str_to_encoding): rename from to_encoding and
	  use str_to_encindex.

	* encoding.c (str_to_encindex): split from to_encoding.

	* encoding.c (rb_to_encoding): use str_to_encoding.

	* encoding.c (rb_obj_encoding): don't bypass rb_encoding*.
	  If it uses rb_encoding*, it bypass encindex. If it uses encindex,
	  it doesn't bypass.

	* encoding.c (enc_find): add shortcut for encoding object, use
	  str_to_encindex, and avoid bypass rb_encoding*.

Tue Aug  2 12:03:16 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* hash.c (recursive_hash): hash value of emptied hash should be
	  equal to an empty hash.  [ruby-core:38650]

Tue Aug  2 11:42:15 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (rb_enc_symname2_p): :! is valid symbol.  [Bug #5136]

Tue Aug  2 07:33:29 2011  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* test/net/http/test_http.rb (TestNetHTTP_version_1_1_methods#test_timeout_during_HTTP_session):
	  If you connect to localhost, you should listen localhost.

	* test/net/http/test_https.rb (TestNetHTTPS#test_timeout_during_SSL_handshake):
	  ditto.

Tue Aug  2 06:18:15 2011  Luis Lavena  <luislavena@gmail.com>

	* lib/rubygems/installer.rb (class Gem): Correct path check on Windows
	  Possible fix for [Ruby 1.9 - Bug #5111]
	* test/rubygems/test_gem_installer.rb (load Gem): ditto

Mon Aug  1 20:12:03 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/ruby/test_process.rb (TestProcess#windows?): new method.

	* test/ruby/test_process.rb (TestProcess#*): use above method.

	* test/ruby/test_process.rb (TestProcess#test_execopts_redirect):
	  windows doesn't support FD_CLOEXEC.

Mon Aug  1 15:45:23 2011  Eric Hodel  <drbrain@segment7.net>

	* test/rake/test_rake_functional.rb:  Don't assume the binary name of
	  ruby is "ruby".  [Ruby 1.9 - Bug #5114]
	* test/rake/helper.rb:  ditto

Mon Aug  1 15:31:14 2011  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* test/io/console/test_io_console.rb (TestIO_Console#test_sync):
	  Skip when PTY allocation failed (that's not our fault).

Mon Aug  1 15:04:12 2011  URABE Shyouhei  <shyouhei@ruby-lang.org>

	* test/xmlrpc/test_webrick_server.rb (Test_Webrick#setup_http_server):
	  XMLRPC::Client.new3(), when called without host: argument, tries
	  to  connect to  a host  where "localhost"  resolves to.   On the
	  other  hand  a  WEBrick::HTTPServer.new(), when  called  without
	  BindAddress:  argument, tries  to listen  all the  address where
	  getaddrinfo(AF_UNSPEC) resolves to.   This is a mismatch because
	  "localhost" might not resolve to one of those listening sockets.
	  We  would  better explicitly  specify  "localhost"  here and  if
	  failed, just skip the whole test.

Mon Aug  1 14:24:56 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc.rb:  Import RDoc 3.9.1.  Fixes bugs in the RDoc::Markup
	  parser.

Mon Aug  1 12:00:35 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* insns.def (concatstrings): don't use initial ASCII-8BIT string.
	  [ruby-core:38635] [Bug #5126]

Sun Jul 31 22:57:16 2011  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* enc/Makefile.in (ECHO1): Same as the recent fix in common.mk.
	  ":" in a make variable replacement cause a syntax error with
	  /usr/ccs/bin/make on Solaris.  Uses $(NULLCMD) instead.

Sun Jul 31 21:16:02 2011  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* complex.c (f_signbit): gcc4 on Solaris DOES have signbit but does
	  not have it on header.

	* math.c: ditto.

Sun Jul 31 21:09:04 2011  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* common.mk (node_name.inc): Use $(Q) for consistency.

	* Makefile.in (INSNS): ditto.

Sun Jul 31 21:19:51 2011  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* lib/mkmf.rb (configuration:ECHO1): Same as the recent fix in
	  common.mk.
	  ":" in a make variable replacement cause a syntax error with
	  /usr/ccs/bin/make on Solaris.  Uses $(NULLCMD) instead.

Sun Jul 31 20:39:12 2011  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* common.mk (ECHO1): nmake does not allow parenthesis in make variable
	  replacement.

Sun Jul 31 23:06:57 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm.c (check_env): print debug messages to stderr.
	[Feature #4871] [ruby-dev:43743]

Sun Jul 31 22:50:23 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm.c (vm_make_env_each): don't save prev env value.
	It is no longer used. [Feature #4871] [ruby-dev:43743]

	* vm.c (check_env): changed accordingly.

Sun Jul 31 20:21:36 2011  "Yuki Sonoda (Yugui)"  <yugui@yugui.jp>

	* common.mk (ECHO1): ":" in a make variable replacement cause a syntax
	  error with /usr/ccs/bin/make on Solaris.  Uses $(NULLCMD) instead.

	* configure.in (NULLCMD): new check.

	* Makefile.in (NULLCMD): Reflects checking in configure.

	* win32/Makefile.sub (NULLCMD): new assignment.

Sun Jul 31 18:58:59 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_pipe): pipe on cygwin can succeed half but fail
	  half.

Sun Jul 31 11:31:07 2011  Kazuki Tsujimoto  <kazuki@callcc.net>

	* vm.c: check if cfp is valid. [Bug #5083] [ruby-dev:44208]

Sun Jul 31 09:18:28 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rdoc:  Update to RDoc 3.9.  Fixed `ri []`, stopdoc creating an
	  object reference, nodoc for class aliases, verbatim === lines.

Sun Jul 31 01:29:08 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* io.c (rb_io_each_byte): remove unused variable e.

Sat Jul 31 01:23:45 2011  Kenta Murata  <mrkn@mrkn.jp>

	* test/bigdecimal/test_bigdecimal.rb (test_version): removed.

Sat Jul 30 23:19:09 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* defs/default_gems: separate from tool/rbinstall.rb.

Sat Jul 30 23:14:44 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* io.c (rb_io_each_byte): rbuf can be refreshed during yield.
	  [Bug #5119]

Sat Jul 30 22:35:50 2011  Naohisa Goto  <ngotogenome@gmail.com>

	* strftime.c (NEEDS): avoid SEGV due to integer overflow in
	  sparc-solaris2.10 and i686-linux.  fix [Bug #4456] [ruby-dev:43284]

Sat Jul 30 17:26:26 2011  Masaki Suketa <masaki.suketa@nifty.ne.jp>

	* test/win32ole/test_win32ole_variant.rb: use skip method to skip the test.

	* test/win32ole/test_win32ole_variant_outarg.rb: ditto.

Sat Jul 30 14:27:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/bigdecimal.c (BigDecimal_version): version 1.1.0.

	* ext/bigdecimal/bigdecimal.gemspec: turn into a default gem.

	* tool/rbinstall.rb: ditto.

Sat Jul 30 11:21:55 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* vm_core.h (ALT_STACK_SIZE): use MINSIGSTKSZ*2 instead of SIGSTKSZ*2.
	  [ruby-core:38607]

Sat Jul 30 10:39:14 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* vm.c (th_init): preallocate alternative stack.
	  NoMemoryError is better than rb_bug, of course.
	  Patch by Eric Wong. [ruby-core:38572][ruby-core:38594].

	* signal.c (rb_register_sigaltstack): ditto.

	* vm_core.h: moved ALT_STACK_SIZE definition from signal.c.
	* vm.c (thread_free): use xfree() instead of free().

Sat Jul 30 07:20:49 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/lib/socket.rb (udp_server_sockets): unused variable
	  removed.
	  patch by Jeremy Evans.  [ruby-core:38600]

Fri Jul 29 23:56:32 2011  Tanaka Akira  <akr@fsij.org>

	* lib/securerandom.rb: call OpenSSL::Random.seed at the
	  SecureRandom.random_bytes call.
	  based on the patch by Masahiro Tomita.  [ruby-dev:44270]

Fri Jul 29 23:53:48 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* array.c (rb_ary_set_len): new function to set array length.

	* vm_eval.c (method_missing): set the length of argv array, to mark
	  arguments.

	* vm_eval.c (rb_apply): get rid of too large alloca.

Fri Jul 29 20:48:39 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/mkconstants.rb: fix typos.

Fri Jul 29 20:28:56 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/mkconstants.rb: use whitespaces as a separator.

Fri Jul 29 18:59:07 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/mkconstants.rb: add documents for constants.
	  patch by Eric Hodel.  [ruby-core:37853] [Bug #4989]

Fri Jul 29 16:00:43 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* configure.in (enable_pthread): use -pthread on OpenBSD without
	  explicit option. patched by Jeremy Evans. [ruby-core:38572]

Thu Jul 28 23:36:28 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* ext/fiddle/closure.c (callback): use rb_ary_tmp_new() instead of
	  xmalloc() to allocate an array for arguments of callback procedure,
	  to prevent arguments from being swept by GC. [ruby-core:38546]
	  [Bug #4929]

Thu Jul 28 22:36:06 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* ext/openssl/ossl_cipher.c (ossl_cipher_initialize): Avoid possible
	  SEGV from AES encryption/decryption. Processing data by
	  Cipher#update without initializing key (meaningless usage of Cipher
	  object since we don't offer a way to export a key) could cause SEGV.

	  In OpenSSL, the EVP which has EVP_CIPH_RAND_KEY flag (such as DES3)
	  allows uninitialized key, but other EVPs (such as AES) does not
	  allow it. Calling EVP_CipherUpdate() without initializing key causes
	  SEGV so we set the data filled with "\0" as the key by default. See
	  #2768.

	* test/openssl/test_cipher.rb: test it.

Thu Jul 28 14:25:08 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* lib/rubygems/user_interaction.rb (Gem::StreamUI#tty?): typo.

Thu Jul 28 12:32:53 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/dl/callback/mkcallback.rb (gencallback): use PTR2NUM.

	* ext/dl/cptr.c (rb_dlptr_aref, rb_dlptr_aset): check NULL pointer
	  dereference.

	* ext/dl/cptr.c (rb_dlptr_s_to_ptr): use rb_check_funcall.

	* ext/dl/cptr.c (rb_dlptr_s_to_ptr): fix wrapping condition.

Thu Jul 28 04:53:31 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/delegate.rb:  Move file-level documentation to the appropriate
	  classes.

Thu Jul 28 02:15:04 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* ext/dl/cfunc.c (dlcfunc_mark), ext/dl/cptr.c (dlptr_mark):
	  workaround to mark wrapped object.  this is not a true fix,
	  because [Bug #4929] is caused by the interface design of DL.

Thu Jul 28 00:28:15 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* test/fileutils/test_fileutils.rb: add OpenBSD case.
	  patched by Jeremy Evans [ruby-core:38530] see #5097

	* test/ruby/test_process.rb: ditto.

Wed Jul 27 22:46:59 2011  CHIKANAGA Tomoyuki  <nagachika00@gmail.com>

	* test/rinda/test_rinda.rb (test_remote_array_and_hash):
	  add local variables to protect objects from GC. [ruby-dev:44253]
	  [Bug #5104]

Wed Jul 27 17:55:54 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* include/ruby/missing.h: define __syscall if the platform has
	  __syscall in the library but doesn't define it in headers
	  for example Mac OS X.

Wed Jul 27 15:39:14 2011  Eric Hodel  <drbrain@segment7.net>

	* object.c:  Add usage documentation for BasicObject.  Based on patch
	  by Thomas Sawyer.  [Ruby 1.9 - Bug #5067]

Wed Jul 27 12:24:17 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/uninstaller.rb:  Add missing require and update
	  messaging to avoid confusion with uninstall --format-executable.
	  [Ruby 1.9 - Bug #4062]

Wed Jul 27 09:34:24 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems:  Update to RubyGems 1.8.6.1.

Wed Jul 27 09:27:59 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_pkcs12.rb: Add test and intermediate certificates.
	  [ Ruby 1.9 - Feature #3793 ] [ruby-core:32088]

Wed Jul 27 01:05:32 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* eval_error.c (rb_print_undef_str): new function to raise
	  NameError for undefined method.

	* load.c (rb_mod_autoload_p), object.c (rb_mod_const_get),
	  variable.c (rb_f_untrace_var, set_const_visibility), vm_method.c
	  (rb_mod_{remove,undef,alias}_method, set_method_visibility):
	  remove inadvertent symbol creation.  based on the first patch by
	  Jeremy Evans at [ruby-core:38447].  [Feature #5089]

	* vm_method.c (obj_respond_to): fix the respond_to_missing? override
	  case.  based on the patch by Jeremy Evans at [ruby-core:38417].
	  [Feature #5072]

	* parse.y (rb_check_id): make the given name a symbol or a string.
	  based on the second patch by Jeremy Evans at [ruby-core:38447]

Wed Jul 27 00:50:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/lib/bigdecimal/util.rb (Rational#to_d):
	  zero or negative precision is error.  fixes #5098.
	  [ruby-dev:44210]

	* test/bigdecimal/test_bigdecimal_util.rb: add test for the above
	  change.

Wed Jul 27 00:48:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/lib/bigdecimal/util.rb (Float#to_d): modified for
	  specifying precision.  fixes #5098.  [ruby-dev:44210]

	* test/bigdecimal/test_bigdecimal_util.rb: add test for the above
	  change.

Wed Jul 27 00:45:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/lib/bigdecimal/util.rb (Integer#to_d): added
	  for symmetry to BigDecimal() function with an Integer.
	  fixes #5098.  [ruby-dev:44210]

	* test/bigdecimal/test_bigdecimal_util.rb: add test for the above
	  change.

Wed Jul 27 00:30:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* ext/bigdecimal/lib/bigdecimal/util.rb (BigDecimal#to_d): added
	  for adapting other Numeric subclasses.  [ruby-dev:44245]

	* test/bigdecimal/test_bigdecimal_util.rb: test for the above change.

Wed Jul 27 00:27:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* bigdecimal/bigdecimal.c (VpDup) a new function for duplicating
	  a BigDecimal.

	* bigdecimal/bigdecimal.c (BigDecimal_new): support generating a new
	  BigDecimal from another BigDecimal using BigDecimal global function
	  or constructor.  [ruby-dev:44245]

Tue Jul 26 23:33:24 2011  Igor Zubkov  <igor.zubkov@gmail.com>

	* array.c: Fix typo. https://github.com/ruby/ruby/pull/36

Mon Jul 25 23:51:01 2011  Yusuke Endoh  <mame@tsg.ne.jp>

	* proc.c: pre-allocate the unlinked_method_entry_list_entry struct to
	  avoid memory allocation during GC.  based on a patch from Eric Wong.
	  [ruby-core:38498]

Mon Jul 25 23:39:33 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* test/rake/test_rake_directory_task.rb (TestRakeDirectoryTask#
	  test_directory_win32): fixed wrong test.

Mon Jul 25 22:36:11 2011  Yusuke Endoh  <mame@tsg.ne.jp>

	* proc.c (struct METHOD), gc.c (gc_marks), vm_method.c
	  (rb_gc_mark_unlinked_live_method_entries): fix SEGV bug.
	  rb_method_entry_t was free'd even when the method is still on the
	  stack if it is BMETHOD (i.e., Method#call).  This is because
	  rb_method_entry_t is embedded in struct METHOD.  This commit
	  separates them and marks the live method entries.
	  See [ruby-core:38449] in detail.  fix [Bug #5047] [ruby-core:38171]

Mon Jul 25 22:14:37 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* lib/xmlrpc/client.rb: Fix possible HTTP header formatting failure by
	  'Basic' header. Long username caused the base64 String truncation in
	  HTTP header which is not allowed. See #5046.

	* test/xmlrpc/test_webrick_server.rb: test it.

Mon Jul 25 15:04:33 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* ext/openssl/lib/openssl.rb: End of transition period introduced by
	  [ruby-dev:38018]. From the next version of 1.9.3, you should use
	    require "openssl"
	  instead of
	    require "openssl/ssl"
	  and
	    require "openssl/x509"

Mon Jul 25 13:46:38 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* ext/openssl/lib/openssl/x509.rb: Cosmetic change: move definition
	  introduced in r30152 to x509-internal.rb.

Mon Jul 25 13:09:42 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* ext/openssl/ossl_ssl.c (ossl_ssl_shutdown): Avoid randomly generated
	  SSLError from SSLSocket just after invoking SSLSocket#close.
	  OpenSSL's SSL_shutdown could try to send alert packet and it might
	  set SSLerr(global error stack) as the result. It causes the next
	  SSL read/write operation to fail by unrelated reason.

	  By design, we're ignoring any error at SSL_shutdown() so we clear
	  global error stack after SSL_shutdown is called. See #5039.

Sun Jul 24 20:29:53 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/extconf.rb: refine the recvmsg test.

Sun Jul 24 20:02:31 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/extconf.rb: fix the recvmsg test.

Sun Jul 24 08:42:51 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/extconf.rb: test recvmsg allocates file descriptors for
	  fd passing even with MSG_PEEK.

	* ext/socket/ancdata.c: use the above test result.

Sun Jul 24 01:04:50 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/rubygems/specification.rb:  Restore behavior of
	  Gem::Specification#loaded.  [Ruby 1.9 - Bug #5032]

Sun Jul 24 00:05:00 2011  Jeremy Evans  <merch-redmine@jeremyevans.net>

	* error.c (rb_name_error_str): new function to raise NameError
	  with the name string but not ID.

	* object.c, proc.c, variable.c: more removal of inadvertent symbol
	  creation.  [Feature #5079]

Sat Jul 23 21:14:00 2011  Tadayoshi Funaba  <tadf@dotrb.org>

	* lib/cmath.rb (cbrt): should return a real number if possible.

Sat Jul 23 20:12:52 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* test/rake/test_rake_functional.rb (setup): Use __FILE__ for the base
	  directory. Current directory is not the top source directory when
	  the building process runs on other than there.

	* test/rake/test_rake_rake_test_loader.rb: ditto.

	* test/rake/test_rake_task_argument_parsing.rb
	  (test_terminal_width_using_hardcoded_80): hardcoded 80 is used
	  when app.unix? is false.

Sat Jul 23 20:11:50 2011  Tadayoshi Funaba  <tadf@dotrb.org>

	* ext/date/date_core.c: an issue that is same as  [ruby-dev:44071].
	* ext/date/date_strftime.c: identical to [ruby-dev:44112].

Sat Jul 23 19:12:53 2011  Masaki Suketa <masaki.suketa@nifty.ne.jp>

	* test/win32ole/test_err_in_callback.rb (test_err_in_callback):
	  skip test if ADODB.connection is not available.

Sat Jul 23 15:37:04 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* parse.y (rb_enc_symname_type): :$a!, @a! and so on are not
	  valid symbols, so they should be inspected with quotes.

Sat Jul 23 17:06:25 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_update_max_fd): validate fd.

	* ext/socket/rubysocket.h (rsock_discard_cmsg_resource): add
	  msg_peek_p argument for the declaration.

	* ext/socket/ancdata.c (discard_cmsg): add msg_peek_p argument.
	  assume FreeBSD, NetBSD and MacOS X doesn't generate passed fd
	  when MSG_PEEK.
	  (rsock_discard_cmsg_resource): add msg_peek_p argument.
	  (bsock_recvmsg_internal): call rsock_discard_cmsg_resource with
	  msg_peek_p argument.

	* ext/socket/unixsocket.c (unix_recv_io): call
	  rsock_discard_cmsg_resource with msg_peek_p argument.

Sat Jul 23 14:38:28 2011  Eric Hodel  <drbrain@segment7.net>

	* test/rake*: Remove dependencies on flexmock and session gems.
	  [Ruby 1.9 - Bug #4987]

Sat Jul 23 12:19:04 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (rb_check_id): take care of attrset ID created
	  implicitly by local ID.  [Bug #5084]

	* parse.y (rb_check_id): conversion condition was inverse.
	  [Bug #5084]

Fri Jul 22 21:46:54 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* vm_insnhelper.c (vm_call_cfunc): added volatile for a workaround
	  of cfp consistency error problem on OS X 10.7 (Lion). It's
	  suspected llvm optimization bug.
	  [Bug #5074] [ruby-dev:44185]

Fri Jul 22 21:18:20 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/uri/generic.rb (WFKV_): unroll the loop of regexp.

	* lib/uri/generic.rb (URI.decode_www_form_component): ditto.

Fri Jul 22 21:06:39 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* object.c (rb_mod_{const,cvar}_defined, rb_obj_ivar_defined):
	  avoid inadvertent symbol creation in reflection methods.  based
	  on a patch by Jeremy Evans at [ruby-core:38367].  [Feature #5072]

	* vm_method.c (rb_mod_method_defined)
	  (rb_mod_{public,private,protected}_method_defined)
	  (obj_respond_to): ditto.

	* parse.y (rb_check_id): new function returns already interned ID
	  or 0.

Fri Jul 22 20:44:49 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (rb_is_global_id, rb_is_attrset_id): add missing
	  predicates.

Fri Jul 22 20:24:38 2011  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* test/ruby/test_object.rb (TestObject#test_respond_to_missing):
	  2nd argument of respond_to_missing? is not optional.

Fri Jul 22 19:05:47 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* parse.y (rb_enc_symname2_p): get rid of potential out-of-bound
	  access.

Fri Jul 22 13:55:59 2011  Eric Hodel  <drbrain@segment7.net>

	* lib/net/http.rb:  Net::HTTP#finish is used to manually close
	  connections.  [Ruby 1.9 - Bug #5045]

Fri Jul 22 13:51:29 2011  Eric Hodel  <drbrain@segment7.net>

	* ext/readline/readline.c:  Add examples for Readline.completion_proc=.
	  [Ruby 1.9 - Bug #5057]

Fri Jul 22 13:03:12 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_hmac.c: Revert checking return type of
	  HMAC_Init_ex as it is not compatible with OpenSSL < 1.0.0.

Fri Jul 22 12:10:21 2011  Eric Hodel  <drbrain@segment7.net>

	* tool/rbinstall.rb (default gems):  Install executables into the fake
	  gem dir for Gem.bin_path.  [#4485]

Fri Jul 22 11:20:20 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_digest.c: Check return value of EVP_DigestInit_ex.
	* ext/openssl/ossl_hmac.c: Check return value of HMAC_Init_ex.
	  Thanks, Jared Jennings, for the patch.
	  [ Ruby 1.9 - Bug #4944 ] [ruby-core:37670]

Fri Jul 22 09:09:43 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* ext/openssl/ossl_engine.c: Avoid double free of ENGINE reference.
	* test/openssl/test_engine.rb: Add a test for it.
	  Thanks to Ippei Obayashi for providing the patch.
	  [ Ruby 1.9 - Bug #5062 ] [ruby-dev:44173]

Fri Jul 22 06:37:13 2011  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/csv.rb: Do not modify CSV.generate's argument [ruby-core:38356]

Thu Jul 21 20:59:59 2011  Tanaka Akira  <akr@fsij.org>

	* ext/socket/ancdata.c (discard_cmsg): workaround for MacOS X Lion.

Thu Jul 21 20:02:11 2011  Yusuke Endoh  <mame@tsg.ne.jp>

	* thread.c (set_trace_func, thread_set_trace_func_m): reset tracing
	  state when set_trace_func hook is removed.  This is workaround patch
	  to force to reset tracing state that is broken by continuation call.
	  a patch from James M. Lawrence.  [Feature #4347] [ruby-core:34998]

	* test/ruby/test_continuation.rb (class TestContinuation): add a test
	  for above.  a patch from James M. Lawrence.

Thu Jul 21 19:27:19 2011  Yusuke Endoh  <mame@tsg.ne.jp>

	* node.c (dump_node): add today's knowledge.  "init arguments (m)" and
	  "init arguments (p)" of compile.c indicates a Ruby code that
	  evaluates multiple assignments that is in method or block
	  parameters:  def foo((m1,m2), (m3,m4), *r, (p1,p2), (p3,p4)); end
	  The former (init arguments (m)) evaluates the multiple assignments
	  before rest argument, that are (m1,m2) and (m3,m4).  The letter
	  (init arguments (p)) does ones after rest argument, that are
	  (p1,p2) and (p3, p4).

Thu Jul 21 18:11:07 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* enum.c (enum_inject): remove empty line to notify rdoc
	  Enumerable#reduce is alias. patched by milki@github.
	  https://github.com/ruby/ruby/pull/26

Thu Jul 21 17:30:21 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* array.c (rb_ary_delete_at_m): use simple array literal in rdoc.
	  patched by samuel tonini. [ruby-core:38310] [Bug #5066]

Thu Jul 21 17:14:21 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* lib/webrick/httprequest.rb (WEBrick::HTTPRequest#each):
	  Allow HTTP/0.9 request which doesn't has any header or body.
	  patched by Felix Jodoin. [ruby-core:38040] [Bug #5022]

Wed Jul 20 23:02:18 2011  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* io.c (rb_update_max_fd): remove parentheses. they are not in
	  macro.

Wed Jul 20 22:22:23 2011  Tanaka Akira  <akr@fsij.org>

	* include/ruby/intern.h (rb_update_max_fd): declaration moved from
	  internal.h.

	* file.c: ditto.

	* io.c: call rb_update_max_fd for each new fds.

	* process.c: ditto.

	* random.c: ditto.

	* ruby.c: ditto.

	* ext/io/console/console.c: ditto.

	* ext/openssl/ossl_bio.c: ditto.

	* ext/pty/pty.c: ditto.

	* ext/socket/init.c: ditto.

	* ext/socket/socket.c: ditto.

	* ext/socket/ancdata.c: ditto.

	* ext/socket/unixsocket.c: ditto.

Wed Jul 20 15:16:22 2011  NARUSE, Yui  <naruse@ruby-lang.org>

	* ext/dl/handle.c (dlhandle_sym): clear previous error with dlerror()
	  before calling dlsym(). [ruby-dev:44091] [Bug #5021]

Wed Jul 20 07:16:26 2011  Kazuhiro NISHIYAMA  <zn@mbf.nifty.com>

	* NEWS: mention Kernel#warn.  [ruby-core:38119] [Feature #5029]

Tue Jul 19 16:40:45 2011  TAKANO Mitsuhiro (takano32)  <tak@no32.tk>

	* cont.c (cont_save_thread): fix missing semicolon.

Tue Jul 19 16:25:15 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (UPDATE_MAXFD): removed.

Tue Jul 19 16:07:45 2011  Tanaka Akira  <akr@fsij.org>

	* io.c (rb_update_max_fd): new function.

	* internal.h (rb_update_max_fd): declare rb_update_max_fd.

	* thread_pthread.c (rb_thread_create_timer_thread): update max fd when
	  timer thread pipe is created.

Mon Jul 18 13:36:47 2011  Aaron Patterson <aaron@tenderlovemaking.com>

	* ext/psych/lib/psych.rb: define a new BadAlias error class.

	* ext/psych/lib/psych/visitors/to_ruby.rb: raise an exception when
	  deserializing an alias that does not exist.

	* test/psych/test_merge_keys.rb: corresponding test.

Mon Jul 18 00:00:46 2011  Shugo Maeda  <shugo@ruby-lang.org>

	* ext/curses/curses.c: added the new class Curses::Pad, which
	  supports scrolling.  patch by Eric Hodel.  [Feature #4896]
	  [ruby-core:37206]

Sun Jul 17 16:26:40 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (rb_check_trusted): new function to check an object is
	  trusted.

	* struct.c (rb_struct_modify), time.c (time_modify): check by the
	  above function to show proper class names.  [Bug #5036]

Sun Jul 17 15:30:04 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* error.c (rb_warn_m): accept multiple args in like puts.  rdoc
	  patch by Erik Price at [ruby-core:38119].  [Feature #5029]

Sun Jul 17 07:56:31 2011  Martin Bosslet  <Martin.Bosslet@googlemail.com>

	* test/openssl/test_ssl_session.rb: add PEM SSL session without TLS
	  extensions. Use this as the default for the tests to ensure
	  compatibility with OpenSSL 0.9.7.
	  [ Ruby 1.9 - Bug #4961 ] [ruby-core:37726]

Sat Jul 16 17:29:20 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* configure.in (RUBY_UNIVERSAL_ARCH): restore arch flag.
	  Bug #4977

Sat Jul 16 06:27:51 2011  Marc-Andre Lafortune  <ruby-core@marc-andre.ca>

	* lib/uri/common.rb (module): Remove optional parser argument to
	  Kernel#URI
	  [ruby-core:38061]

	* lib/uri/generic.rb (module): ditto

Sat Jul 16 03:19:45 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c (is_socket, is_console): add prototypes to fix compile
	  problem with gcc introduced at r32549.
	  reported by Jon Forums. [Bug #5030] [ruby-core:38079]

Sat Jul 16 00:55:38 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* time.c (time_dup): used rb_obj_class() instead of CLASS_OF().
	  The patch is made by Kazuki Tsujimoto. [Bug #5012] [ruby-dev:44071]

	* test/ruby/test_time.rb (TestTime#test_getlocal_dont_share_eigenclass):
	  added a new test for eigenclass of time object.

Fri Jul 15 19:11:00 2011  Kenta Murata  <mrkn@mrkn.jp>

	* bignum.c (bigsub_int): add RB_GC_GUARD.  This patch is made by
	  Makoto Kishimoto.  fixes #4223 [ruby-dev:42907]

	* bignum.c (bigadd_int): ditto.

Fri Jul 15 14:27:53 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/win32.c, include/ruby/win32.h (rb_w32_io_cancelable_p): renamed
	  from rb_w32_has_cancel_io().  now it takes a parameter as fd to check
	  the fd is console or not, because we cannot cancel console input even
	  if we have cancel_io function.

	* io.c (WAIT_FD_IN_WIN32): call above function instead of the old one,
	  so now we can kill the thread which calls STDIN.gets.
	  the problem was reported by ko1 via IRC.

Fri Jul 15 09:10:41 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* ext/digest/sha2/sha2.c (SHA256_Update, SHA512_Update): avoid Bus
	  Error caused by unalignment access on Sparc-Solaris (and possibly on
	  other similar environment.) This patch just do memcpy always instead
	  of checking architecture. I see no perf drop on my 64bit env. For
	  more details, see #4320.

	* test/digest/test_digest.rb: add test for unalignment access.

Fri Jul 15 01:51:25 2011  Nobuyoshi Nakada  <nobu@ruby-lang.org>

	* regint.h (PLATFORM_UNALIGNED_WORD_ACCESS): Power PC does not
	  allow unaligned word access.

	* st.c (UNALIGNED_WORD_ACCESS): x86_64 allows unaligned word
	  access as well as i386.

Thu Jul 14 12:19:34 2011  Hiroshi Nakamura  <nahi@ruby-lang.org>

	* ext/openssl/ossl.c (ossl_verify_cb): trap the exception from
	  verify callback of SSLContext and X509Store and make the
	  verification fail normally. Raising exception directly from callback
	  causes orphan resources in OpenSSL stack. Patched by Ippei Obayashi.
	  See #4445.

	* test/openssl/test_ssl.rb
	  (test_exception_in_verify_callback_is_ignored): test it.

Tue Jul 12 23:41:49 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* NEWS: add a description of Signal.trap change.

Tue Jul 12 20:02:35 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* signal.c (reserved_signal_p): reverted a part of r32523.
	  chikanaga noticed trap(:CHLD) has some realworld usecase.
	* test/ruby/test_signal.rb (TestSignal#test_reserved_signal):
	  ditto.

Tue Jul 12 17:12:45 2011  Yukihiro Matsumoto  <matz@ruby-lang.org>

	* vm_method.c (rb_add_method): should not call method_added hook
	  for undef operation. [Bug #5015]

Tue Jul 12 16:58:44 2011  Shota Fukumori  <sorah@tubusu.net>

	* lib/test/unit.rb(Test::Unit::Options#process_args): Fix bug.
	  Fix process_args didn't return `@option` after r30939.

Tue Jul 12 14:07:46 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* signal.c (install_sighandler): fixed a race.

Tue Jul 12 13:49:32 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* signal.c (sig_trap): don't permit to change a signal handler which
	  the interpreter reserved.
	* signal.c (reserved_signal_p): ditto.
	  [Bug #2616] [ruby-core:27625]

	* test/ruby/test_signal.rb (TestSignal#test_reserved_signal):
	  added a test for reserved signal.

Tue Jul 12 11:58:28 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* win32/setup.mak: support x86-amd64 cross compile environment.

Mon Jul 11 23:22:28 2011  Yutaka Kanemoto  <kanemoto@ruby-lang.org>

	* time.c: can't compile time.c on AIX due to missing declaration for
	  ffs(). It is declared in strings.h on AIX.

Mon Jul 11 15:54:24 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* process.c: removed signal() macro. It's no longer used.

Mon Jul 11 15:02:24 2011  NAKAMURA Usaku  <usa@ruby-lang.org>

	* numeric.c (rb_num2ull): use FIX2LONG instead of FIX2ULONG. see
	  rb_num2ulong(). fixed the problem of ObjectSpace._id2ref of IL32LLP64
	  platforms, introduced at r32433.

Mon Jul 11 05:38:05 2011  Yutaka Kanemoto  <kanemoto@ruby-lang.org>

	* thread_pthread.c (get_stack): need to adjust stack addr for
	  [Bug #1813] on AIX.

Mon Jul 11 01:16:27 2011  KOSAKI Motohiro  <kosaki.motohiro@gmail.com>

	* thread_pthread.c (rb_thread_create_timer_thread): removed
	  rb_disable_interrupt()/rb_enable_interrupt().
	* vm_core.h: ditto.
	* process.c (static void before_exec): ditto.
	* process.c (static void after_exec): ditto.
	  [Bug #4765] [ruby-dev:43571]

	* eval_intern.h: removed rb_trap_restore_mask().
	* vm_eval.c (rb_throw_obj): ditto.
	* eval.c (setup_exception): ditto.

	* signal.c: removed trap_last_mask.
	* signal.c (trap_restore_mask): removed.
	* signal.c (init_sigchld): comment clarification why signal block
	  is needed. and removed trap_last_mask operation.
	* signal.c (trap_ensure): removed trap_last_mask operation.

	* signal.c (rb_disable_interrupt, rb_enable_interrupt): made
	  static and removed sigdelset(SIGVTALRM) and sigdelset(SIGSEGV).

	* process.c (rb_syswait): removed implicit signal handler change.

Sun Jul 10 23:49:12 2011  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* docs/NEWS-1.9.3: moved from NEWS.

	* docs/ChangeLog-1.9.3: merged ChangeLog for 1.9.3.

	* NEWS: NEWS for 1.9.4 that describes changes since 1.9.3

	* ChangeLog: new ChangeLog for 1.9.4.

Sun Jul 10 23:30:52 2011  Yuki Sonoda (Yugui)  <yugui@yugui.jp>

	* version.h (RUBY_VERSION): ruby_1_9_3 branch was forked.

For the changes before 1.9.3, see doc/ChangeLog-1.9.3
For the changes before 1.8.0, see doc/ChangeLog-1.8.0

Local variables:
coding: us-ascii
add-log-time-format: (lambda ()
  (let* ((time (current-time))
	 (system-time-locale "C")
	 (diff (+ (cadr time) 32400))
	 (lo (% diff 65536))
	 (hi (+ (car time) (/ diff 65536))))
  (format-time-string "%a %b %e %H:%M:%S %Y" (list hi lo) t)))
indent-tabs-mode: t
tab-width: 8
change-log-indent-text: 2
end:
vim: tabstop=8 shiftwidth=2
