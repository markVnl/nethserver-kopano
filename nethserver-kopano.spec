Summary: Mail server implementation based on postfix and kopano-core packages
Name: nethserver-kopano
Version: 0.0.3
Release: 1%{?dist}
License: GPL
URL: %{url_prefix}/%{name} 
Source0: %{name}-%{version}.tar.gz
BuildArch: noarch

Requires: nethserver-mail-common
Requires: nethserver-mysql
Requires: nethserver-sssd
Requires: perl(Text::Unidecode)
Requires: postfix
Requires: opendkim
Requires: kopano-server
Requires: kopano-dagent
Requires: kopano-spooler
Requires: kopano-gateway
Requires: cyrus-sasl
Conflicts: nethserver-mail-server
Conflicts: nethserver-mail2-server

BuildRequires: nethserver-devtools

%description
Mail server implementation based on postfix and kopano-core packages.

%prep
%setup -q

%build
%{makedocs}
mkdir -p root%{perl_vendorlib}
perl createlinks

%install
rm -rf %{buildroot}
(cd root; find . -depth -print | cpio -dump %{buildroot})
%{genfilelist} %{buildroot} > %{name}-%{version}-filelist

%files -f %{name}-%{version}-filelist
%defattr(-,root,root)
%doc COPYING
%doc README.rst
%dir %{_nseventsdir}/%{name}-update

%changelog