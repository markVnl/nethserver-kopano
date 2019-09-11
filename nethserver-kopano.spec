Summary: Mail server implementation based on postfix and kopano-core packages
Name: nethserver-kopano
Version: 0.0.1
Release: 4%{?dist}
License: GPL
URL: %{url_prefix}/%{name} 
Source0: %{name}-%{version}.tar.gz
BuildArch: noarch

Conflicts: nethserver-mail-server
Conflicts: nethserver-mail2-server
# TODO: keeps pulling nethserver-mail2-common 2.x.x in, 
#       despite we are asking for nethserver-mail-common 1.6.7
Requires: nethserver-mail-common = 1.6.7-1.ns7
Requires: nethserver-mysql
Requires: kopano-server
Requires: kopano-dagent
Requires: kopano-spooler
Requires: kopano-gateway
Requires: cyrus-sasl
Requires: perl(Text::Unidecode)
Requires: postfix
Requires: nethserver-sssd

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