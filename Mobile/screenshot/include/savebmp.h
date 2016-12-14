
#ifndef SAVEBMP_H
#define SAVEBMP_H


//-------------------------------------------------------------------
/*
����λͼ�ļ������
�����ṹ���� �� ��
����λͼ�ļ�ͷ (bitmap-file header) BITMAPFILEHEADER bmfh
����λͼ��Ϣͷ (bitmap-information header) BITMAPINFOHEADER bmih
������ɫ��(color table) RGBQUAD aColors[]
����ͼ�����������ֽ� BYTE aBitmapBits[]
*/
typedef struct bmp_header 
{
	short twobyte			;//�����ֽڣ�������֤�����Ա�������У��������ַ�����д���ļ���
	//14B
	char bfType[2]			;//!�ļ�������,��ֵ������0x4D42��Ҳ�����ַ�'BM'
	unsigned int bfSize		;//!˵���ļ��Ĵ�С�����ֽ�Ϊ��λ
	unsigned int bfReserved1;//��������������Ϊ0
	unsigned int bfOffBits	;//!˵�����ļ�ͷ��ʼ��ʵ�ʵ�ͼ������֮����ֽڵ�ƫ����������Ϊ14B+sizeof()
}BMPHEADER;

typedef struct bmp_info
{
	//40B
	unsigned int biSize			;//!BMPINFO�ṹ����Ҫ������
	int biWidth					;//!ͼ��Ŀ�ȣ�������Ϊ��λ
	int biHeight				;//!ͼ��Ŀ�ȣ�������Ϊ��λ,�����ֵ��������˵��ͼ���ǵ���ģ������ֵ�Ǹ��������������
	unsigned short biPlanes		;//!Ŀ���豸˵��λ��������ֵ�����Ǳ���Ϊ1
	unsigned short biBitCount	;//!������/���أ���ֵΪ1��4��8��16��24����32
	unsigned int biCompression	;//˵��ͼ������ѹ��������
#define BI_RGB        0L	//û��ѹ��
#define BI_RLE8       1L	//ÿ������8���ص�RLEѹ�����룬ѹ����ʽ��2�ֽ���ɣ��ظ����ؼ�������ɫ��������
#define BI_RLE4       2L	//ÿ������4���ص�RLEѹ�����룬ѹ����ʽ��2�ֽ����
#define BI_BITFIELDS  3L	//ÿ�����صı�����ָ�������������
	unsigned int biSizeImage	;//ͼ��Ĵ�С�����ֽ�Ϊ��λ������BI_RGB��ʽʱ��������Ϊ0
	int biXPelsPerMeter			;//ˮƽ�ֱ��ʣ�������/�ױ�ʾ
	int biYPelsPerMeter			;//��ֱ�ֱ��ʣ�������/�ױ�ʾ
	unsigned int biClrUsed		;//λͼʵ��ʹ�õĲ�ɫ���е���ɫ����������Ϊ0�Ļ�����˵��ʹ�����е�ɫ���
	unsigned int biClrImportant	;//��ͼ����ʾ����ҪӰ�����ɫ��������Ŀ�������0����ʾ����Ҫ��
}BMPINFO;

typedef struct tagRGBQUAD {
	unsigned char rgbBlue;
	unsigned char rgbGreen;
	unsigned char rgbRed;
	unsigned char rgbReserved;
} RGBQUAD;

typedef struct tagBITMAPINFO {
    BMPINFO    bmiHeader;
    //RGBQUAD    bmiColors[1];
	unsigned int rgb[3];
} BITMAPINFO;

static int get_rgb888_header(int w, int h, BMPHEADER * head, BMPINFO * info);
static int save_bmp_rgb888(FILE * hfile, int w, int h, void * pdata);
static int save_bmp_rgb565(FILE * hfile, int w, int h, void * pdata);



#endif

