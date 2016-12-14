#pragma once
#ifdef USEWINDOW
#include <winsock2.h>
#include <winsock.h>
#else
#endif

#define USE_TEST


void	API_ExitSocket();
int		API_InitSocket();

SOCKET API_CreateBaseSocket(int nType);
int		API_BindSocket(SOCKET sk, WORD wPort, BOOL bSwap);
SOCKET	API_CreateSocket(WORD wPort, BOOL bTcp, BOOL bSwap);
SOCKET	API_CreateSocketEx(WORD & wPort, BOOL bTcp, BOOL bSwap, DWORD dwTryNum);

int		API_UdpSendToIp(SOCKET s1, char * chip, WORD wPort, const LPBYTE pData, DWORD dwLen);


int API_RecDataInTime(SOCKET sk,
	LPVOID pvData,
	int nLen,
	DWORD dwWaitTime,
	sockaddr_in* padd = NULL,
	int * pnStart = NULL);
int API_SendDataInTime(SOCKET sk,
	LPVOID pvData,
	int nLen,
	DWORD dwWaitTime,
	sockaddr_in* padd = NULL,
	int * pnStart = NULL);


char *	API_GetIpFromeYM(char * YM);

BOOL	API_IsSocketOK(SOCKET sk);

DWORD API_GetLoaclIp(DWORD * pOut, DWORD dwMaxNum);



//#ifdef USE_TEST
void	testUdpClient(char *, unsigned short);
void	testUdpServer(unsigned short);
void	testTcpClient(char *, unsigned short);
void	testTcpServer(unsigned short);
//#endif


INT API_CheckSend(SOCKET sk);
INT API_CheckRecv(SOCKET sk);


#define SETLINK(SSK) {linger li;li.l_onoff = 0;li.l_linger = 0;setsockopt((SSK), SOL_SOCKET, SO_LINGER, (char*)&li,sizeof(li));}
#define SETLINK1(SSK) {linger li;li.l_onoff = 1;li.l_linger = 200;setsockopt((SSK), SOL_SOCKET, SO_LINGER, (char*)&li,sizeof(li));}


int API_get_mac(char* pMac, int nbuffsz);




////////////////////////////////////////////////////////////////////







typedef   struct   tag_ip_hdr
{
	unsigned   char   ip_verlen;
	unsigned   char   ip_tos;
	unsigned   short   ip_totallength;
	unsigned   short   ip_id;
	unsigned   short   ip_offset;
	unsigned   char   ip_ttl;
	unsigned   char   ip_protocol;
	unsigned   short   ip_checksum;
	unsigned   int   ip_srcaddr;
	unsigned   int   ip_destaddr;
}   IP_HDR;
typedef struct ip_hdr //����IP�ײ�
{
	unsigned char h_verlen; //4λ�ײ�����,4λIP�汾��
	unsigned char tos; //8λ��������TOS
	unsigned short total_len; //16λ�ܳ��ȣ��ֽڣ�
	unsigned short ident; //16λ��ʶ
	unsigned short frag_and_flags; //3λ��־λ
	unsigned char ttl; //8λ����ʱ�� TTL
	unsigned char proto; //8λЭ�� (TCP, UDP ������)
	unsigned short checksum; //16λIP�ײ�У���
	unsigned int sourceIP; //32λԴIP��ַ
	unsigned int destIP; //32λĿ��IP��ַ
}IPHEADER;

typedef struct tsd_hdr //����TCPα�ײ�
{
	DWORD saddr; //Դ��ַ
	DWORD daddr; //Ŀ�ĵ�ַ
	char mbz;
	char ptcl; //Э������
	unsigned short tcpl; //TCP����
}PSDHEADER;

typedef struct tcp_hdr //����TCP�ײ�
{
	BYTE th_sport; //16λԴ�˿�
	BYTE th_dport; //16λĿ�Ķ˿�
	unsigned int th_seq; //32λ���к�
	unsigned int th_ack; //32λȷ�Ϻ�
	unsigned char th_lenres; //4λ�ײ�����/6λ������
	unsigned char th_flag; //6λ��־λ
	BYTE th_win; //16λ���ڴ�С
	BYTE th_sum; //16λУ���
	BYTE th_urp; //16λ��������ƫ����
}TCPHEADER;




typedef   struct   tag_udp_hdr
{
	unsigned   short   src_portno;
	unsigned   short   dst_portno;
	unsigned   short   udp_length;
	unsigned   short   udp_checksum;
}   UDP_HDR;
typedef struct udp_hdr //����TCP�ײ�
{
	BYTE th_sport; //16λԴ�˿�
	BYTE th_dport; //16λĿ�Ķ˿�
	BYTE th_win; //16λ���ڴ�С
	BYTE th_sum; //16λУ���
}UDPHEADER;

//CheckSum:����У��͵��Ӻ���
BYTE checksum(BYTE *buffer, int size);



int		tryRaw_SocketUdp(char * ipDst, WORD wDstPort,
	char * ipSrc, WORD wSrcPort,
	char * pData, DWORD dwLen);


int tryRaw_SocketTcp(char * ipDst, WORD wDstPort,
	char * ipSrc, WORD wSrcPort,
	char * pData, DWORD dwLen);



