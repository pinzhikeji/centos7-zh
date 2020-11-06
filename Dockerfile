FROM pinzhikeji/centos-base

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
	&& yum -y install kde-l10n-Chinese \
	&& yum -y reinstall glibc-common \
	&& localedef -c -f GB18030 -i zh_CN zh_CN.GB18030 \
	&& echo 'LANG="zh_CN.GB18030"' > /etc/locale.conf \
	&& source /etc/locale.conf \
	&& yum clean all 
	
ENV LANG=zh_CN.GB18030 \
    LC_ALL=zh_CN.GB18030