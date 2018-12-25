.class public final Landroid/support/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroid/support/media/ExifInterface$ExifTag;,
        Landroid/support/media/ExifInterface$ExifAttribute;,
        Landroid/support/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field private static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field private static final BITS_PER_SAMPLE_RGB:[I

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field static final EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

.field private static final FLIPPED_ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_GPS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final IFD_THUMBNAIL_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/support/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroid/support/media/ExifInterface$ExifTag;

.field static final JPEG_SIGNATURE:[B

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final PEF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

.field private static final ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG_RAF_IMAGE_SIZE:Landroid/support/media/ExifInterface$ExifTag;

.field private static final sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/support/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/media/ExifInterface$ExifAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mExifOffset:I

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mIsSupportedFile:Z

.field private mMimeType:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mRw2JpgFromRawOffset:I

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x4

    .line 399
    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x6

    .line 400
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v5

    .line 399
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/support/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    .line 401
    new-array v1, v0, [Ljava/lang/Integer;

    .line 402
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v4

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v7

    const/4 v9, 0x5

    .line 403
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v5

    .line 401
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/support/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    .line 412
    new-array v1, v5, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 424
    new-array v1, v3, [B

    fill-array-data v1, :array_1

    sput-object v1, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v1, 0xa

    .line 426
    new-array v10, v1, [B

    fill-array-data v10, :array_2

    sput-object v10, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    const/16 v10, 0xd

    .line 471
    new-array v11, v10, [Ljava/lang/String;

    const-string v12, ""

    aput-object v12, v11, v4

    const-string v12, "BYTE"

    aput-object v12, v11, v2

    const-string v12, "STRING"

    aput-object v12, v11, v7

    const-string v12, "USHORT"

    aput-object v12, v11, v5

    const-string v12, "ULONG"

    aput-object v12, v11, v0

    const-string v12, "URATIONAL"

    aput-object v12, v11, v9

    const-string v12, "SBYTE"

    aput-object v12, v11, v3

    const-string v12, "UNDEFINED"

    aput-object v12, v11, v8

    const-string v12, "SSHORT"

    aput-object v12, v11, v6

    const-string v12, "SLONG"

    const/16 v13, 0x9

    aput-object v12, v11, v13

    const-string v12, "SRATIONAL"

    aput-object v12, v11, v1

    const-string v12, "SINGLE"

    const/16 v14, 0xb

    aput-object v12, v11, v14

    const-string v12, "DOUBLE"

    const/16 v15, 0xc

    aput-object v12, v11, v15

    sput-object v11, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v11, 0xe

    .line 476
    new-array v12, v11, [I

    fill-array-data v12, :array_3

    sput-object v12, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 479
    new-array v12, v6, [B

    fill-array-data v12, :array_4

    sput-object v12, Landroid/support/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 502
    new-array v12, v5, [I

    fill-array-data v12, :array_5

    sput-object v12, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 503
    new-array v12, v2, [I

    aput v0, v12, v4

    sput-object v12, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 504
    new-array v12, v2, [I

    aput v6, v12, v4

    sput-object v12, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    const/16 v12, 0x29

    .line 958
    new-array v12, v12, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v10, "NewSubfileType"

    const/16 v15, 0xfe

    invoke-direct {v11, v10, v15, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v12, v4

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "SubfileType"

    const/16 v15, 0xff

    invoke-direct {v10, v11, v15, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v12, v2

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "ImageWidth"

    const/16 v15, 0x100

    invoke-direct {v10, v11, v15, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    aput-object v10, v12, v7

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "ImageLength"

    const/16 v15, 0x101

    invoke-direct {v10, v11, v15, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    aput-object v10, v12, v5

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "BitsPerSample"

    const/16 v15, 0x102

    invoke-direct {v10, v11, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v12, v0

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "Compression"

    const/16 v15, 0x103

    invoke-direct {v10, v11, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v12, v9

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "PhotometricInterpretation"

    const/16 v15, 0x106

    invoke-direct {v10, v11, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v12, v3

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "ImageDescription"

    const/16 v15, 0x10e

    invoke-direct {v10, v11, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v12, v8

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "Make"

    const/16 v15, 0x10f

    invoke-direct {v10, v11, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v12, v6

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "Model"

    const/16 v15, 0x110

    invoke-direct {v10, v11, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v12, v13

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "StripOffsets"

    const/16 v15, 0x111

    invoke-direct {v10, v11, v15, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    aput-object v10, v12, v1

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "Orientation"

    const/16 v15, 0x112

    invoke-direct {v10, v11, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v12, v14

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "SamplesPerPixel"

    const/16 v15, 0x115

    invoke-direct {v10, v11, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0xc

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "RowsPerStrip"

    const/16 v15, 0x116

    invoke-direct {v10, v11, v15, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    const/16 v11, 0xd

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "StripByteCounts"

    const/16 v15, 0x117

    invoke-direct {v10, v11, v15, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    const/16 v11, 0xe

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v10, v11, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0xf

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "YResolution"

    const/16 v15, 0x11b

    invoke-direct {v10, v11, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x10

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "PlanarConfiguration"

    const/16 v15, 0x11c

    invoke-direct {v10, v11, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x11

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "ResolutionUnit"

    const/16 v15, 0x128

    invoke-direct {v10, v11, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x12

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "TransferFunction"

    const/16 v15, 0x12d

    invoke-direct {v10, v11, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x13

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "Software"

    const/16 v15, 0x131

    invoke-direct {v10, v11, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x14

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v10, v11, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x15

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v10, v11, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x16

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v10, v11, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x17

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "PrimaryChromaticities"

    const/16 v15, 0x13f

    invoke-direct {v10, v11, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x18

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v10, v11, v15, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x19

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v10, v11, v15, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x1a

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v10, v11, v15, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x1b

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v10, v11, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x1c

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v10, v11, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x1d

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v10, v11, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x1e

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v10, v11, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x1f

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "Copyright"

    const v15, 0x8298

    invoke-direct {v10, v11, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x20

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v10, v11, v15, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x21

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v10, v11, v15, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x22

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "SensorTopBorder"

    invoke-direct {v10, v11, v0, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x23

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "SensorLeftBorder"

    invoke-direct {v10, v11, v9, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x24

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "SensorBottomBorder"

    invoke-direct {v10, v11, v3, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x25

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "SensorRightBorder"

    invoke-direct {v10, v11, v8, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x26

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "ISO"

    const/16 v15, 0x17

    invoke-direct {v10, v11, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x27

    aput-object v10, v12, v11

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "JpgFromRaw"

    const/16 v15, 0x2e

    invoke-direct {v10, v11, v15, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v11, 0x28

    aput-object v10, v12, v11

    sput-object v12, Landroid/support/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    const/16 v10, 0x3b

    .line 1007
    new-array v10, v10, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExposureTime"

    const v15, 0x829a

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v4

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FNumber"

    const v15, 0x829d

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v2

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExposureProgram"

    const v15, 0x8822

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v7

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SpectralSensitivity"

    const v15, 0x8824

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v5

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ISOSpeedRatings"

    const v15, 0x8827

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v0

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "OECF"

    const v15, 0x8828

    invoke-direct {v11, v12, v15, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v9

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExifVersion"

    const v15, 0x9000

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v3

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DateTimeOriginal"

    const v15, 0x9003

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v8

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DateTimeDigitized"

    const v15, 0x9004

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v6

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ComponentsConfiguration"

    const v15, 0x9101

    invoke-direct {v11, v12, v15, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v13

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "CompressedBitsPerPixel"

    const v15, 0x9102

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v1

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ShutterSpeedValue"

    const v15, 0x9201

    invoke-direct {v11, v12, v15, v1, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v14

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ApertureValue"

    const v15, 0x9202

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0xc

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "BrightnessValue"

    const v15, 0x9203

    invoke-direct {v11, v12, v15, v1, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0xd

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExposureBiasValue"

    const v15, 0x9204

    invoke-direct {v11, v12, v15, v1, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0xe

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "MaxApertureValue"

    const v15, 0x9205

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0xf

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubjectDistance"

    const v15, 0x9206

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x10

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "MeteringMode"

    const v15, 0x9207

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x11

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "LightSource"

    const v15, 0x9208

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x12

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Flash"

    const v15, 0x9209

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x13

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FocalLength"

    const v15, 0x920a

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x14

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubjectArea"

    const v15, 0x9214

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x15

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "MakerNote"

    const v15, 0x927c

    invoke-direct {v11, v12, v15, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x16

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "UserComment"

    const v15, 0x9286

    invoke-direct {v11, v12, v15, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x17

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubSecTime"

    const v15, 0x9290

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x18

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubSecTimeOriginal"

    const v15, 0x9291

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x19

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubSecTimeDigitized"

    const v15, 0x9292

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1a

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FlashpixVersion"

    const v15, 0xa000

    invoke-direct {v11, v12, v15, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1b

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ColorSpace"

    const v15, 0xa001

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1c

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PixelXDimension"

    const v15, 0xa002

    invoke-direct {v11, v12, v15, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    const/16 v12, 0x1d

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PixelYDimension"

    const v15, 0xa003

    invoke-direct {v11, v12, v15, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    const/16 v12, 0x1e

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "RelatedSoundFile"

    const v15, 0xa004

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1f

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "InteroperabilityIFDPointer"

    const v15, 0xa005

    invoke-direct {v11, v12, v15, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x20

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FlashEnergy"

    const v15, 0xa20b

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x21

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SpatialFrequencyResponse"

    const v15, 0xa20c

    invoke-direct {v11, v12, v15, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x22

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FocalPlaneXResolution"

    const v15, 0xa20e

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x23

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FocalPlaneYResolution"

    const v15, 0xa20f

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x24

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FocalPlaneResolutionUnit"

    const v15, 0xa210

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x25

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubjectLocation"

    const v15, 0xa214

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x26

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExposureIndex"

    const v15, 0xa215

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x27

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SensingMethod"

    const v15, 0xa217

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x28

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FileSource"

    const v15, 0xa300

    invoke-direct {v11, v12, v15, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x29

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SceneType"

    const v15, 0xa301

    invoke-direct {v11, v12, v15, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x2a

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "CFAPattern"

    const v15, 0xa302

    invoke-direct {v11, v12, v15, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x2b

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "CustomRendered"

    const v15, 0xa401

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x2c

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExposureMode"

    const v15, 0xa402

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x2d

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "WhiteBalance"

    const v15, 0xa403

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x2e

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DigitalZoomRatio"

    const v15, 0xa404

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x2f

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "FocalLengthIn35mmFilm"

    const v15, 0xa405

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x30

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SceneCaptureType"

    const v15, 0xa406

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x31

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GainControl"

    const v15, 0xa407

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x32

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Contrast"

    const v15, 0xa408

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x33

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Saturation"

    const v15, 0xa409

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x34

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Sharpness"

    const v15, 0xa40a

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x35

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DeviceSettingDescription"

    const v15, 0xa40b

    invoke-direct {v11, v12, v15, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x36

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubjectDistanceRange"

    const v15, 0xa40c

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x37

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ImageUniqueID"

    const v15, 0xa420

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x38

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DNGVersion"

    const v15, 0xc612

    invoke-direct {v11, v12, v15, v2, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x39

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DefaultCropSize"

    const v15, 0xc620

    invoke-direct {v11, v12, v15, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    const/16 v12, 0x3a

    aput-object v11, v10, v12

    sput-object v10, Landroid/support/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    const/16 v10, 0x1f

    .line 1070
    new-array v10, v10, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSVersionID"

    invoke-direct {v11, v12, v4, v2, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v4

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSLatitudeRef"

    invoke-direct {v11, v12, v2, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v2

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSLatitude"

    invoke-direct {v11, v12, v7, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v7

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSLongitudeRef"

    invoke-direct {v11, v12, v5, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v5

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSLongitude"

    invoke-direct {v11, v12, v0, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v0

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSAltitudeRef"

    invoke-direct {v11, v12, v9, v2, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v9

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSAltitude"

    invoke-direct {v11, v12, v3, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v3

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSTimeStamp"

    invoke-direct {v11, v12, v8, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v8

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSSatellites"

    invoke-direct {v11, v12, v6, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v6

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSStatus"

    invoke-direct {v11, v12, v13, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v13

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSMeasureMode"

    invoke-direct {v11, v12, v1, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v1

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDOP"

    invoke-direct {v11, v12, v14, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v14

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSSpeedRef"

    const/16 v15, 0xc

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v15

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSSpeed"

    const/16 v15, 0xd

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v15

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSTrackRef"

    const/16 v15, 0xe

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v15

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSTrack"

    const/16 v15, 0xf

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0xf

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSImgDirectionRef"

    const/16 v15, 0x10

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x10

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSImgDirection"

    const/16 v15, 0x11

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x11

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSMapDatum"

    const/16 v15, 0x12

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x12

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestLatitudeRef"

    const/16 v15, 0x13

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x13

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestLatitude"

    const/16 v15, 0x14

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x14

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestLongitudeRef"

    const/16 v15, 0x15

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x15

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestLongitude"

    const/16 v15, 0x16

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x16

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestBearingRef"

    const/16 v15, 0x17

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x17

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestBearing"

    const/16 v15, 0x18

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x18

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestDistanceRef"

    const/16 v15, 0x19

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x19

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestDistance"

    const/16 v15, 0x1a

    invoke-direct {v11, v12, v15, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1a

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSProcessingMethod"

    const/16 v15, 0x1b

    invoke-direct {v11, v12, v15, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1b

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSAreaInformation"

    const/16 v15, 0x1c

    invoke-direct {v11, v12, v15, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1c

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDateStamp"

    const/16 v15, 0x1d

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1d

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSDifferential"

    const/16 v15, 0x1e

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1e

    aput-object v11, v10, v12

    sput-object v10, Landroid/support/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 1104
    new-array v10, v2, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "InteroperabilityIndex"

    invoke-direct {v11, v12, v2, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v4

    sput-object v10, Landroid/support/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    const/16 v10, 0x25

    .line 1108
    new-array v10, v10, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "NewSubfileType"

    const/16 v15, 0xfe

    invoke-direct {v11, v12, v15, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v4

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubfileType"

    const/16 v15, 0xff

    invoke-direct {v11, v12, v15, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v2

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ThumbnailImageWidth"

    const/16 v15, 0x100

    invoke-direct {v11, v12, v15, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    aput-object v11, v10, v7

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ThumbnailImageLength"

    const/16 v15, 0x101

    invoke-direct {v11, v12, v15, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    aput-object v11, v10, v5

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "BitsPerSample"

    const/16 v15, 0x102

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v0

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Compression"

    const/16 v15, 0x103

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v9

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PhotometricInterpretation"

    const/16 v15, 0x106

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v3

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ImageDescription"

    const/16 v15, 0x10e

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v8

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Make"

    const/16 v15, 0x10f

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v6

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Model"

    const/16 v15, 0x110

    invoke-direct {v11, v12, v15, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v13

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "StripOffsets"

    const/16 v15, 0x111

    invoke-direct {v11, v12, v15, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    aput-object v11, v10, v1

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Orientation"

    const/16 v15, 0x112

    invoke-direct {v11, v12, v15, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v14

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SamplesPerPixel"

    const/16 v14, 0x115

    invoke-direct {v11, v12, v14, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0xc

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "RowsPerStrip"

    const/16 v14, 0x116

    invoke-direct {v11, v12, v14, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    const/16 v12, 0xd

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "StripByteCounts"

    const/16 v14, 0x117

    invoke-direct {v11, v12, v14, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    const/16 v12, 0xe

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "XResolution"

    const/16 v14, 0x11a

    invoke-direct {v11, v12, v14, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0xf

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "YResolution"

    const/16 v14, 0x11b

    invoke-direct {v11, v12, v14, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x10

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PlanarConfiguration"

    const/16 v14, 0x11c

    invoke-direct {v11, v12, v14, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x11

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ResolutionUnit"

    const/16 v14, 0x128

    invoke-direct {v11, v12, v14, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x12

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "TransferFunction"

    const/16 v14, 0x12d

    invoke-direct {v11, v12, v14, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x13

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Software"

    const/16 v14, 0x131

    invoke-direct {v11, v12, v14, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x14

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DateTime"

    const/16 v14, 0x132

    invoke-direct {v11, v12, v14, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x15

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Artist"

    const/16 v14, 0x13b

    invoke-direct {v11, v12, v14, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x16

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "WhitePoint"

    const/16 v14, 0x13e

    invoke-direct {v11, v12, v14, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x17

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PrimaryChromaticities"

    const/16 v14, 0x13f

    invoke-direct {v11, v12, v14, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x18

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "SubIFDPointer"

    const/16 v14, 0x14a

    invoke-direct {v11, v12, v14, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x19

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "JPEGInterchangeFormat"

    const/16 v14, 0x201

    invoke-direct {v11, v12, v14, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1a

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "JPEGInterchangeFormatLength"

    const/16 v14, 0x202

    invoke-direct {v11, v12, v14, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1b

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrCoefficients"

    const/16 v14, 0x211

    invoke-direct {v11, v12, v14, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1c

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrSubSampling"

    const/16 v14, 0x212

    invoke-direct {v11, v12, v14, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1d

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrPositioning"

    const/16 v14, 0x213

    invoke-direct {v11, v12, v14, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1e

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ReferenceBlackWhite"

    const/16 v14, 0x214

    invoke-direct {v11, v12, v14, v9, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x1f

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "Copyright"

    const v14, 0x8298

    invoke-direct {v11, v12, v14, v7, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x20

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ExifIFDPointer"

    const v14, 0x8769

    invoke-direct {v11, v12, v14, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x21

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "GPSInfoIFDPointer"

    const v14, 0x8825

    invoke-direct {v11, v12, v14, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x22

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DNGVersion"

    const v14, 0xc612

    invoke-direct {v11, v12, v14, v2, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    const/16 v12, 0x23

    aput-object v11, v10, v12

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "DefaultCropSize"

    const v14, 0xc620

    invoke-direct {v11, v12, v14, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IB)V

    const/16 v12, 0x24

    aput-object v11, v10, v12

    sput-object v10, Landroid/support/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 1151
    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "StripOffsets"

    const/16 v12, 0x111

    invoke-direct {v10, v11, v12, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    sput-object v10, Landroid/support/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/support/media/ExifInterface$ExifTag;

    .line 1155
    new-array v10, v5, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ThumbnailImage"

    const/16 v14, 0x100

    invoke-direct {v11, v12, v14, v8, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v4

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "CameraSettingsIFDPointer"

    const/16 v14, 0x2020

    invoke-direct {v11, v12, v14, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v2

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ImageProcessingIFDPointer"

    const/16 v14, 0x2040

    invoke-direct {v11, v12, v14, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v7

    sput-object v10, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 1160
    new-array v10, v7, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PreviewImageStart"

    const/16 v14, 0x101

    invoke-direct {v11, v12, v14, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v4

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "PreviewImageLength"

    const/16 v14, 0x102

    invoke-direct {v11, v12, v14, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v2

    sput-object v10, Landroid/support/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 1164
    new-array v10, v2, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "AspectFrame"

    const/16 v14, 0x1113

    invoke-direct {v11, v12, v14, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v4

    sput-object v10, Landroid/support/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 1168
    new-array v10, v2, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/support/media/ExifInterface$ExifTag;

    const-string v12, "ColorSpace"

    const/16 v14, 0x37

    invoke-direct {v11, v12, v14, v5, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v11, v10, v4

    sput-object v10, Landroid/support/media/ExifInterface;->PEF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 1195
    new-array v10, v1, [[Landroid/support/media/ExifInterface$ExifTag;

    sget-object v11, Landroid/support/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v11, v10, v4

    sget-object v11, Landroid/support/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v11, v10, v2

    sget-object v11, Landroid/support/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v11, v10, v7

    sget-object v11, Landroid/support/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v11, v10, v5

    sget-object v11, Landroid/support/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v11, v10, v0

    sget-object v11, Landroid/support/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v11, v10, v9

    sget-object v11, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v11, v10, v3

    sget-object v11, Landroid/support/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v11, v10, v8

    sget-object v11, Landroid/support/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v11, v10, v6

    sget-object v11, Landroid/support/media/ExifInterface;->PEF_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aput-object v11, v10, v13

    sput-object v10, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    .line 1201
    new-array v3, v3, [Landroid/support/media/ExifInterface$ExifTag;

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "SubIFDPointer"

    const/16 v12, 0x14a

    invoke-direct {v10, v11, v12, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v3, v4

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "ExifIFDPointer"

    const v12, 0x8769

    invoke-direct {v10, v11, v12, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v3, v2

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v10, v11, v12, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v3, v7

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "InteroperabilityIFDPointer"

    const v12, 0xa005

    invoke-direct {v10, v11, v12, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v3, v5

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "CameraSettingsIFDPointer"

    const/16 v12, 0x2020

    invoke-direct {v10, v11, v12, v2, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v3, v0

    new-instance v10, Landroid/support/media/ExifInterface$ExifTag;

    const-string v11, "ImageProcessingIFDPointer"

    const/16 v12, 0x2040

    invoke-direct {v10, v11, v12, v2, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    aput-object v10, v3, v9

    sput-object v3, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    .line 1211
    new-instance v3, Landroid/support/media/ExifInterface$ExifTag;

    const-string v10, "JPEGInterchangeFormat"

    const/16 v11, 0x201

    invoke-direct {v3, v10, v11, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    sput-object v3, Landroid/support/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/support/media/ExifInterface$ExifTag;

    .line 1213
    new-instance v3, Landroid/support/media/ExifInterface$ExifTag;

    const-string v10, "JPEGInterchangeFormatLength"

    const/16 v11, 0x202

    invoke-direct {v3, v10, v11, v0, v4}, Landroid/support/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIB)V

    sput-object v3, Landroid/support/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/support/media/ExifInterface$ExifTag;

    .line 1218
    new-array v3, v1, [Ljava/util/HashMap;

    sput-object v3, Landroid/support/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 1222
    new-array v3, v1, [Ljava/util/HashMap;

    sput-object v3, Landroid/support/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 1224
    new-instance v3, Ljava/util/HashSet;

    new-array v10, v9, [Ljava/lang/String;

    const-string v11, "FNumber"

    aput-object v11, v10, v4

    const-string v11, "DigitalZoomRatio"

    aput-object v11, v10, v2

    const-string v11, "ExposureTime"

    aput-object v11, v10, v7

    const-string v11, "SubjectDistance"

    aput-object v11, v10, v5

    const-string v11, "GPSTimeStamp"

    aput-object v11, v10, v0

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Landroid/support/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 1229
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    const-string v3, "US-ASCII"

    .line 1236
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    sput-object v3, Landroid/support/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    const-string v3, "Exif\u0000\u0000"

    .line 1238
    sget-object v10, Landroid/support/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Landroid/support/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 1277
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v3, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1278
    sput-object v3, Landroid/support/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v10, "UTC"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1282
    sget-object v10, Landroid/support/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    aput-object v11, v10, v3

    .line 1283
    sget-object v10, Landroid/support/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    aput-object v11, v10, v3

    .line 1284
    sget-object v10, Landroid/support/media/ExifInterface;->EXIF_TAGS:[[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v10, v10, v3

    array-length v11, v10

    move v12, v4

    :goto_1
    if-ge v12, v11, :cond_0

    aget-object v13, v10, v12

    .line 1285
    sget-object v14, Landroid/support/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v14, v14, v3

    iget v15, v13, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    sget-object v14, Landroid/support/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v14, v14, v3

    iget-object v15, v13, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1291
    :cond_1
    sget-object v1, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    sget-object v1, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    sget-object v1, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v2, v2, v7

    iget v2, v2, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    sget-object v1, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    sget-object v1, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v0, v2, v0

    iget v0, v0, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    sget-object v0, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/support/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/support/media/ExifInterface$ExifTag;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/support/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    .line 1319
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/support/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 1322
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/support/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_3
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_4
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 1302
    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1304
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-nez p1, :cond_0

    .line 1329
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 1332
    iput-object v0, p0, Landroid/support/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1333
    iput-object p1, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1335
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1336
    :try_start_1
    invoke-direct {p0, v1}, Landroid/support/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4993
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    return-void

    :catch_1
    move-exception p1

    .line 4995
    throw p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_1

    .line 5993
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    move-exception p1

    .line 5995
    throw p1

    .line 1338
    :catch_3
    :cond_1
    :goto_1
    throw p1
.end method

.method static synthetic access$000()Ljava/nio/charset/Charset;
    .locals 1

    .line 67
    sget-object v0, Landroid/support/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .line 67
    sget-object v0, Landroid/support/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    .line 2796
    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    .line 2797
    invoke-direct {p0, v2}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2798
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v3, "DateTime"

    .line 2799
    invoke-static {v0}, Landroid/support/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 2798
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    .line 2803
    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    .line 2804
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v4, "ImageWidth"

    iget-object v5, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2805
    invoke-static {v2, v3, v5}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 2804
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    .line 2807
    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2808
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v4, "ImageLength"

    iget-object v5, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2809
    invoke-static {v2, v3, v5}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 2808
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    .line 2811
    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2812
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v1, "Orientation"

    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2813
    invoke-static {v2, v3, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 2812
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    .line 2815
    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2816
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "LightSource"

    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2817
    invoke-static {v2, v3, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 2816
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static convertToLongArray(Ljava/lang/Object;)[J
    .locals 4

    .line 4021
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 4022
    check-cast p0, [I

    .line 4023
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 4024
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4025
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 4028
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 4029
    check-cast p0, [J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1386
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1388
    sget-object v2, Landroid/support/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1389
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 1391
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1393
    iget p1, v0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    iget p1, v0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const-string p1, "ExifInterface"

    .line 1395
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GPS Timestamp format is not rational. format="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1398
    :cond_1
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/support/media/ExifInterface$Rational;

    if-eqz p1, :cond_3

    const/4 v0, 0x3

    .line 1399
    array-length v2, p1

    if-eq v2, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "%02d:%02d:%02d"

    .line 1403
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    iget-wide v3, v3, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-float v3, v3

    aget-object v4, p1, v2

    iget-wide v4, v4, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 1404
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aget-object v3, p1, v2

    iget-wide v3, v3, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-float v3, v3

    aget-object v4, p1, v2

    iget-wide v4, v4, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 1405
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aget-object v3, p1, v2

    iget-wide v3, v3, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-float v3, v3

    aget-object p1, p1, v2

    iget-wide v4, p1, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-float p1, v4

    div-float/2addr v3, p1

    float-to-int p1, v3

    .line 1406
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    .line 1403
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string v0, "ExifInterface"

    .line 1400
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid GPS Timestamp array. array="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1409
    :cond_4
    :try_start_0
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    :cond_5
    return-object v1
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1371
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2337
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    int-to-long v0, p2

    .line 2340
    invoke-virtual {p1, v0, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2344
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2345
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid marker: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v2, 0x1

    add-int/2addr p2, v2

    .line 2348
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v3

    const/16 v4, -0x28

    if-eq v3, v4, :cond_1

    .line 2349
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid marker: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/2addr p2, v2

    .line 2353
    :goto_0
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v0

    if-eq v0, v1, :cond_2

    .line 2355
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid marker:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/2addr p2, v2

    .line 2358
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v0

    add-int/2addr p2, v2

    const/16 v3, -0x27

    if-eq v0, v3, :cond_f

    const/16 v3, -0x26

    if-eq v0, v3, :cond_f

    .line 2369
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 p2, p2, 0x2

    if-gez v3, :cond_3

    .line 2376
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid length"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v4, -0x1f

    const/4 v5, 0x0

    if-eq v0, v4, :cond_8

    const/4 v4, -0x2

    if-eq v0, v4, :cond_5

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_2

    .line 2443
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 2444
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid SOFx"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2446
    :cond_4
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    const-string v4, "ImageLength"

    .line 2447
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2446
    invoke-static {v5, v6, v7}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    const-string v4, "ImageWidth"

    .line 2449
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2448
    invoke-static {v5, v6, v7}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x5

    goto/16 :goto_2

    .line 2418
    :cond_5
    new-array v0, v3, [B

    .line 2419
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-eq v4, v3, :cond_6

    .line 2420
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string v3, "UserComment"

    .line 2423
    invoke-direct {p0, v3}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    .line 2424
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    const-string v4, "UserComment"

    new-instance v6, Ljava/lang/String;

    sget-object v7, Landroid/support/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v6}, Landroid/support/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    move v3, v5

    goto :goto_2

    :cond_8
    const/4 v0, 0x6

    if-lt v3, v0, :cond_c

    .line 2387
    new-array v4, v0, [B

    .line 2388
    invoke-virtual {p1, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v6

    if-eq v6, v0, :cond_9

    .line 2389
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v3, v3, -0x6

    .line 2393
    sget-object v0, Landroid/support/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_c

    if-gtz v3, :cond_a

    .line 2398
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2404
    :cond_a
    iput p2, p0, Landroid/support/media/ExifInterface;->mExifOffset:I

    .line 2406
    new-array v0, v3, [B

    .line 2407
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-eq v4, v3, :cond_b

    .line 2408
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    add-int/2addr p2, v3

    .line 7784
    new-instance v3, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v3, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 7788
    array-length v0, v0

    invoke-direct {p0, v3, v0}, Landroid/support/media/ExifInterface;->parseTiffHeaders(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 7791
    invoke-direct {p0, v3, p3}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_1

    :cond_c
    :goto_2
    if-gez v3, :cond_d

    .line 2459
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid length"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2461
    :cond_d
    invoke-virtual {p1, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v0

    if-eq v0, v3, :cond_e

    .line 2462
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid JPEG segment"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    add-int/2addr p2, v3

    goto/16 :goto_0

    .line 2467
    :cond_f
    iget-object p2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getRafAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x54

    .line 2523
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v0, 0x4

    .line 2524
    new-array v1, v0, [B

    .line 2525
    new-array v2, v0, [B

    .line 2526
    invoke-virtual {p1, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 2528
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 2529
    invoke-virtual {p1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 2530
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 2531
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x5

    .line 2534
    invoke-direct {p0, p1, v0, v2}, Landroid/support/media/ExifInterface;->getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V

    int-to-long v0, v1

    .line 2537
    invoke-virtual {p1, v0, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2540
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2541
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2549
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    .line 2550
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    .line 2551
    sget-object v5, Landroid/support/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/support/media/ExifInterface$ExifTag;

    iget v5, v5, Landroid/support/media/ExifInterface$ExifTag;->number:I

    if-ne v3, v5, :cond_0

    .line 2552
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 2553
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    .line 2554
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2555
    invoke-static {v0, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 2556
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2557
    invoke-static {p1, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 2558
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2559
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v1, "ImageWidth"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2565
    :cond_0
    invoke-virtual {p1, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getRawAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2472
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->parseTiffHeaders(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x0

    .line 2475
    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2478
    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->updateImageSizeValues(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x5

    .line 2479
    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->updateImageSizeValues(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x4

    .line 2480
    invoke-direct {p0, p1, v0}, Landroid/support/media/ExifInterface;->updateImageSizeValues(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2483
    invoke-direct {p0}, Landroid/support/media/ExifInterface;->validateImages$71225a3e()V

    .line 2485
    iget p1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 2488
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 2489
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 2492
    new-instance v1, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object p1, p1, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 2494
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const-wide/16 v2, 0x6

    .line 2497
    invoke-virtual {v1, v2, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    const/16 p1, 0x9

    .line 2500
    invoke-direct {p0, v1, p1}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2503
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, v1, p1

    const-string v1, "ColorSpace"

    .line 2504
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 2506
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v1, v0

    const-string v1, "ColorSpace"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private handleThumbnailFromJfif(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    .line 3126
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    const-string v1, "JPEGInterchangeFormatLength"

    .line 3128
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 3131
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 3132
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 3135
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3136
    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3139
    :cond_0
    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 3141
    iget v1, p0, Landroid/support/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 3138
    :cond_1
    :goto_0
    iget v1, p0, Landroid/support/media/ExifInterface;->mExifOffset:I

    add-int/2addr v0, v1

    :cond_2
    :goto_1
    if-lez v0, :cond_3

    if-lez p2, :cond_3

    const/4 v1, 0x1

    .line 3148
    iput-boolean v1, p0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    .line 3149
    iput v0, p0, Landroid/support/media/ExifInterface;->mThumbnailOffset:I

    .line 3150
    iput p2, p0, Landroid/support/media/ExifInterface;->mThumbnailLength:I

    .line 3151
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 3153
    new-array p2, p2, [B

    int-to-long v0, v0

    .line 3154
    invoke-virtual {p1, v0, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3155
    invoke-virtual {p1, p2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3156
    iput-object p2, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    :cond_3
    return-void
.end method

.method private handleThumbnailFromStrips(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "StripOffsets"

    .line 3166
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    const-string v1, "StripByteCounts"

    .line 3168
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 3171
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3172
    invoke-static {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v0

    .line 3173
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3174
    invoke-static {p2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroid/support/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object p2

    if-nez v0, :cond_0

    const-string p1, "ExifInterface"

    const-string p2, "stripOffsets should not be null."

    .line 3177
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "ExifInterface"

    const-string p2, "stripByteCounts should not be null."

    .line 3181
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 3186
    array-length v4, p2

    move-wide v5, v1

    move v1, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-wide v7, p2, v1

    add-long v9, v5, v7

    add-int/lit8 v1, v1, 0x1

    move-wide v5, v9

    goto :goto_0

    :cond_2
    long-to-int v1, v5

    .line 3191
    new-array v1, v1, [B

    move v2, v3

    move v4, v2

    move v5, v4

    .line 3195
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_4

    .line 3196
    aget-wide v6, v0, v2

    long-to-int v6, v6

    .line 3197
    aget-wide v7, p2, v2

    long-to-int v7, v7

    sub-int/2addr v6, v4

    if-gez v6, :cond_3

    const-string v8, "ExifInterface"

    const-string v9, "Invalid strip offset value"

    .line 3202
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    int-to-long v8, v6

    .line 3204
    invoke-virtual {p1, v8, v9}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    add-int/2addr v4, v6

    .line 3208
    new-array v6, v7, [B

    .line 3209
    invoke-virtual {p1, v6}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    add-int/2addr v4, v7

    .line 3213
    array-length v7, v6

    invoke-static {v6, v3, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3215
    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 3218
    iput-boolean p1, p0, Landroid/support/media/ExifInterface;->mHasThumbnail:Z

    .line 3219
    iput-object v1, p0, Landroid/support/media/ExifInterface;->mThumbnailBytes:[B

    .line 3220
    array-length p1, v1

    iput p1, p0, Landroid/support/media/ExifInterface;->mThumbnailLength:I

    :cond_5
    return-void
.end method

.method private static isJpegFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 2258
    aget-byte v2, p0, v1

    sget-object v3, Landroid/support/media/ExifInterface;->JPEG_SIGNATURE:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isRafFormat([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FUJIFILMCCD-RAW"

    .line 2272
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 2273
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2274
    aget-byte v3, p0, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    .line 3262
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    const-string v1, "ImageWidth"

    .line 3263
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3266
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 3267
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 1753
    :try_start_0
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    .line 1757
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v3, 0x1388

    invoke-direct {v1, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1758
    move-object p1, v1

    check-cast p1, Ljava/io/BufferedInputStream;

    .line 6233
    invoke-virtual {p1, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 6234
    new-array v4, v3, [B

    .line 6235
    invoke-virtual {p1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 6236
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6238
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 6239
    invoke-static {v4}, Landroid/support/media/ExifInterface;->isJpegFormat([B)Z

    move-result p1

    const/4 v3, 0x7

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    move p1, v5

    goto :goto_4

    .line 6241
    :cond_2
    invoke-static {v4}, Landroid/support/media/ExifInterface;->isRafFormat([B)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x9

    goto :goto_4

    .line 6290
    :cond_3
    new-instance p1, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 6293
    invoke-static {p1}, Landroid/support/media/ExifInterface;->readByteOrder(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v7

    iput-object v7, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6295
    iget-object v7, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v7}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6297
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v7

    .line 6298
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/16 p1, 0x4f52

    if-eq v7, p1, :cond_5

    const/16 p1, 0x5352

    if-ne v7, p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    goto :goto_2

    :cond_5
    :goto_1
    move p1, v6

    :goto_2
    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_4

    .line 6307
    :cond_6
    new-instance p1, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 6310
    invoke-static {p1}, Landroid/support/media/ExifInterface;->readByteOrder(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v4

    iput-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6312
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v4}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6314
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v4

    .line 6315
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/16 p1, 0x55

    if-ne v4, p1, :cond_7

    move p1, v6

    goto :goto_3

    :cond_7
    move p1, v0

    :goto_3
    if-eqz p1, :cond_8

    move p1, v2

    goto :goto_4

    :cond_8
    move p1, v0

    .line 1758
    :goto_4
    iput p1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    .line 1761
    new-instance p1, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1763
    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/4 v4, 0x3

    const/4 v7, 0x5

    const/4 v8, 0x6

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    .line 6664
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getRawAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 6667
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    const-string v2, "JpgFromRaw"

    .line 6668
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_9

    .line 6670
    iget v1, p0, Landroid/support/media/ExifInterface;->mRw2JpgFromRawOffset:I

    invoke-direct {p0, p1, v1, v7}, Landroid/support/media/ExifInterface;->getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 6674
    :cond_9
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    const-string v2, "ISO"

    .line 6675
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 6676
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    const-string v3, "ISOSpeedRatings"

    .line 6677
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_10

    if-nez v2, :cond_10

    .line 6680
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    const-string v3, "ISOSpeedRatings"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1769
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getRafAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto/16 :goto_7

    .line 6582
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getRawAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 6587
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v6

    const-string v9, "MakerNote"

    .line 6588
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_10

    .line 6591
    new-instance v9, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v1, v1, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v9, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 6593
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6597
    new-array v1, v8, [B

    .line 6598
    invoke-virtual {v9, v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v10, 0x0

    .line 6599
    invoke-virtual {v9, v10, v11}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 6600
    new-array v2, v2, [B

    .line 6601
    invoke-virtual {v9, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6603
    sget-object v10, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    invoke-static {v1, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_a

    const-wide/16 v1, 0x8

    .line 6604
    invoke-virtual {v9, v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_5

    .line 6605
    :cond_a
    sget-object v1, Landroid/support/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_b

    const-wide/16 v1, 0xc

    .line 6606
    invoke-virtual {v9, v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 6610
    :cond_b
    :goto_5
    invoke-direct {p0, v9, v8}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 6613
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    const-string v2, "PreviewImageStart"

    .line 6614
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 6615
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v3

    const-string v3, "PreviewImageLength"

    .line 6616
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    .line 6619
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v7

    const-string v9, "JPEGInterchangeFormat"

    invoke-virtual {v3, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6621
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v7

    const-string v3, "JPEGInterchangeFormatLength"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6628
    :cond_c
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    const-string v2, "AspectFrame"

    .line 6629
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_10

    .line 6631
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_f

    .line 6632
    array-length v2, v1

    if-eq v2, v5, :cond_d

    goto :goto_6

    :cond_d
    const/4 v2, 0x2

    .line 6637
    aget v3, v1, v2

    aget v7, v1, v0

    if-le v3, v7, :cond_10

    aget v3, v1, v4

    aget v7, v1, v6

    if-le v3, v7, :cond_10

    .line 6639
    aget v2, v1, v2

    aget v3, v1, v0

    sub-int/2addr v2, v3

    add-int/2addr v2, v6

    .line 6640
    aget v3, v1, v4

    aget v1, v1, v6

    sub-int/2addr v3, v1

    add-int/2addr v3, v6

    if-ge v2, v3, :cond_e

    add-int/2addr v2, v3

    sub-int v3, v2, v3

    sub-int/2addr v2, v3

    .line 6647
    :cond_e
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6648
    invoke-static {v2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 6649
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6650
    invoke-static {v3, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 6652
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v0

    const-string v7, "ImageWidth"

    invoke-virtual {v3, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6653
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    const-string v3, "ImageLength"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_f
    :goto_6
    const-string v2, "ExifInterface"

    .line 6633
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Invalid aspect frame values. frame="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6634
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6633
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1765
    :pswitch_3
    invoke-direct {p0, p1, v0, v0}, Landroid/support/media/ExifInterface;->getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V

    goto :goto_7

    .line 1788
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getRawAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 7095
    :cond_10
    :goto_7
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v5

    const-string v2, "Compression"

    .line 7098
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_16

    .line 7100
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    .line 7101
    iget v2, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    if-eq v2, v6, :cond_11

    packed-switch v2, :pswitch_data_1

    goto :goto_a

    .line 7103
    :pswitch_5
    invoke-direct {p0, p1, v1}, Landroid/support/media/ExifInterface;->handleThumbnailFromJfif(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_a

    :cond_11
    :pswitch_6
    const-string v2, "BitsPerSample"

    .line 7227
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_15

    .line 7229
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v2, v3}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 7231
    sget-object v3, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    :goto_8
    move v2, v6

    goto :goto_9

    .line 7236
    :cond_13
    iget v3, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    if-ne v3, v4, :cond_15

    const-string v3, "PhotometricInterpretation"

    .line 7238
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_15

    .line 7240
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7241
    invoke-virtual {v3, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ne v3, v6, :cond_14

    .line 7242
    sget-object v4, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 7243
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_12

    :cond_14
    if-ne v3, v8, :cond_15

    sget-object v3, Landroid/support/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 7245
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_8

    :cond_15
    move v2, v0

    :goto_9
    if-eqz v2, :cond_17

    .line 7109
    invoke-direct {p0, p1, v1}, Landroid/support/media/ExifInterface;->handleThumbnailFromStrips(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_a

    .line 7116
    :cond_16
    iput v8, p0, Landroid/support/media/ExifInterface;->mThumbnailCompression:I

    .line 7117
    invoke-direct {p0, p1, v1}, Landroid/support/media/ExifInterface;->handleThumbnailFromJfif(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 1797
    :cond_17
    :goto_a
    iput-boolean v6, p0, Landroid/support/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    invoke-direct {p0}, Landroid/support/media/ExifInterface;->addDefaultValuesForCompatibility()V

    return-void

    .line 1801
    :catch_0
    :try_start_1
    iput-boolean v0, p0, Landroid/support/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1808
    invoke-direct {p0}, Landroid/support/media/ExifInterface;->addDefaultValuesForCompatibility()V

    return-void

    :goto_b
    invoke-direct {p0}, Landroid/support/media/ExifInterface;->addDefaultValuesForCompatibility()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private parseTiffHeaders(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2844
    invoke-static {p1}, Landroid/support/media/ExifInterface;->readByteOrder(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2846
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2849
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 2850
    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    .line 2851
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid start code: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2855
    :cond_0
    invoke-virtual {p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    if-lt v0, p2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_2

    .line 2861
    invoke-virtual {p1, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 2862
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t jump to first Ifd: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 2857
    :cond_3
    :goto_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid first Ifd offset: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static readByteOrder(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2824
    invoke-virtual {p0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p0

    const/16 v0, 0x4949

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_0

    .line 2837
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2835
    :cond_0
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0

    .line 2830
    :cond_1
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method private readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x4

    move/from16 v4, p2

    .line 2870
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$700(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v6

    if-le v5, v6, :cond_0

    return-void

    .line 2875
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v5

    .line 2879
    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$700(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v6

    mul-int/lit8 v7, v5, 0xc

    add-int/2addr v6, v7

    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v7

    if-le v6, v7, :cond_1

    return-void

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_18

    .line 2886
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 2887
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    .line 2888
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    .line 2890
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v12

    add-int/2addr v12, v3

    int-to-long v12, v12

    .line 2893
    sget-object v14, Landroid/support/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v14, v14, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/media/ExifInterface$ExifTag;

    const/4 v15, 0x7

    const-wide/16 v16, 0x0

    if-nez v14, :cond_2

    const-string v2, "ExifInterface"

    const-string v8, "Skip the tag entry since tag number is not defined: "

    .line 2904
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move/from16 v19, v4

    move/from16 v20, v5

    goto/16 :goto_5

    :cond_2
    if-lez v10, :cond_8

    const/16 v2, 0xe

    if-lt v10, v2, :cond_3

    goto :goto_4

    .line 2907
    :cond_3
    invoke-static {v14, v10}, Landroid/support/media/ExifInterface$ExifTag;->access$900(Landroid/support/media/ExifInterface$ExifTag;I)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ExifInterface"

    .line 2908
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Skip the tag entry since data format ("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") is unexpected for tag: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    if-ne v10, v15, :cond_5

    .line 2912
    iget v10, v14, Landroid/support/media/ExifInterface$ExifTag;->primaryFormat:I

    :cond_5
    move/from16 v19, v4

    int-to-long v3, v11

    .line 2914
    sget-object v2, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v2, v2, v10

    move/from16 v20, v5

    int-to-long v5, v2

    mul-long v2, v3, v5

    cmp-long v4, v2, v16

    if-ltz v4, :cond_7

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v2, v4

    if-lez v6, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x1

    goto :goto_7

    :cond_7
    :goto_3
    const-string v4, "ExifInterface"

    const-string v5, "Skip the tag entry since the number of components is invalid: "

    .line 2916
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_8
    :goto_4
    move/from16 v19, v4

    move/from16 v20, v5

    const-string v2, "ExifInterface"

    const-string v3, "Skip the tag entry since data format is invalid: "

    .line 2906
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-wide/from16 v2, v16

    :goto_6
    const/4 v6, 0x0

    :goto_7
    if-nez v6, :cond_9

    .line 2923
    invoke-virtual {v1, v12, v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    move/from16 v21, v7

    move/from16 v6, v19

    :goto_8
    const/4 v5, 0x0

    goto/16 :goto_d

    :cond_9
    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-lez v6, :cond_f

    .line 2930
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    .line 2934
    iget v5, v0, Landroid/support/media/ExifInterface;->mMimeType:I

    if-ne v5, v15, :cond_c

    const-string v5, "MakerNote"

    .line 2935
    iget-object v6, v14, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2937
    iput v4, v0, Landroid/support/media/ExifInterface;->mOrfMakerNoteOffset:I

    move/from16 v21, v7

    move/from16 v23, v10

    move/from16 v22, v11

    move/from16 v6, v19

    goto/16 :goto_9

    :cond_a
    const/4 v5, 0x6

    move/from16 v6, v19

    if-ne v6, v5, :cond_b

    const-string v8, "ThumbnailImage"

    .line 2938
    iget-object v15, v14, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 2939
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2941
    iput v4, v0, Landroid/support/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 2942
    iput v11, v0, Landroid/support/media/ExifInterface;->mOrfThumbnailLength:I

    .line 2944
    iget-object v8, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2945
    invoke-static {v5, v8}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 2946
    iget v8, v0, Landroid/support/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v21, v7

    int-to-long v7, v8

    iget-object v15, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2947
    invoke-static {v7, v8, v15}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 2948
    iget v8, v0, Landroid/support/media/ExifInterface;->mOrfThumbnailLength:I

    move/from16 v23, v10

    move/from16 v22, v11

    int-to-long v10, v8

    iget-object v8, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2949
    invoke-static {v10, v11, v8}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 2951
    iget-object v10, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    const-string v15, "Compression"

    invoke-virtual {v10, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2952
    iget-object v5, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v11

    const-string v10, "JPEGInterchangeFormat"

    invoke-virtual {v5, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2954
    iget-object v5, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v11

    const-string v7, "JPEGInterchangeFormatLength"

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_b
    move/from16 v21, v7

    move/from16 v23, v10

    move/from16 v22, v11

    goto :goto_9

    :cond_c
    move/from16 v21, v7

    move/from16 v23, v10

    move/from16 v22, v11

    move/from16 v6, v19

    .line 2957
    iget v5, v0, Landroid/support/media/ExifInterface;->mMimeType:I

    const/16 v7, 0xa

    if-ne v5, v7, :cond_d

    const-string v5, "JpgFromRaw"

    .line 2958
    iget-object v7, v14, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2959
    iput v4, v0, Landroid/support/media/ExifInterface;->mRw2JpgFromRawOffset:I

    :cond_d
    :goto_9
    int-to-long v7, v4

    add-long v10, v7, v2

    .line 2962
    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    move-object/from16 v24, v14

    int-to-long v14, v5

    cmp-long v5, v10, v14

    if-gtz v5, :cond_e

    .line 2963
    invoke-virtual {v1, v7, v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_a

    :cond_e
    const-string v2, "ExifInterface"

    const-string v3, "Skip the tag entry since data offset is invalid: "

    .line 2966
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    invoke-virtual {v1, v12, v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_8

    :cond_f
    move/from16 v21, v7

    move/from16 v23, v10

    move/from16 v22, v11

    move-object/from16 v24, v14

    move/from16 v6, v19

    .line 2973
    :goto_a
    sget-object v4, Landroid/support/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_11

    const-wide/16 v2, -0x1

    sparse-switch v23, :sswitch_data_0

    goto :goto_b

    .line 2996
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    goto :goto_b

    .line 2987
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    int-to-long v2, v2

    goto :goto_b

    .line 7839
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v7, 0xffffffffL

    and-long v9, v2, v7

    move-wide v2, v9

    goto :goto_b

    .line 2983
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v2

    int-to-long v2, v2

    :goto_b
    cmp-long v5, v2, v16

    if-lez v5, :cond_10

    .line 3007
    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    int-to-long v7, v5

    cmp-long v5, v2, v7

    if-gez v5, :cond_10

    .line 3008
    invoke-virtual {v1, v2, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3009
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/media/ExifInterface;->readImageFileDirectory(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_c

    :cond_10
    const-string v4, "ExifInterface"

    const-string v5, "Skip jump into the IFD since its offset is invalid: "

    .line 3011
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    :goto_c
    invoke-virtual {v1, v12, v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_8

    :cond_11
    long-to-int v2, v2

    .line 3018
    new-array v2, v2, [B

    .line 3019
    invoke-virtual {v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3020
    new-instance v3, Landroid/support/media/ExifInterface$ExifAttribute;

    move/from16 v4, v22

    move/from16 v10, v23

    const/4 v5, 0x0

    invoke-direct {v3, v10, v4, v2, v5}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[BB)V

    .line 3021
    iget-object v2, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    move-object/from16 v14, v24

    iget-object v4, v14, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DNGVersion"

    .line 3026
    iget-object v4, v14, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x3

    .line 3027
    iput v2, v0, Landroid/support/media/ExifInterface;->mMimeType:I

    :cond_12
    const-string v2, "Make"

    .line 3033
    iget-object v4, v14, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "Model"

    iget-object v4, v14, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    iget-object v2, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3034
    invoke-virtual {v3, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PENTAX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    const-string v2, "Compression"

    iget-object v4, v14, Landroid/support/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 3035
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3036
    invoke-virtual {v3, v2}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_16

    :cond_15
    const/16 v2, 0x8

    .line 3037
    iput v2, v0, Landroid/support/media/ExifInterface;->mMimeType:I

    .line 3041
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v12

    if-eqz v4, :cond_17

    .line 3042
    invoke-virtual {v1, v12, v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_17
    :goto_d
    add-int/lit8 v7, v21, 0x1

    int-to-short v7, v7

    move v4, v6

    move/from16 v5, v20

    const/4 v3, 0x4

    goto/16 :goto_1

    .line 3046
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    const/4 v11, 0x4

    add-int/2addr v2, v11

    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    if-gt v2, v3, :cond_1a

    .line 3047
    invoke-virtual/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_1a

    .line 3053
    invoke-static/range {p1 .. p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    if-ge v2, v3, :cond_1a

    int-to-long v2, v2

    .line 3054
    invoke-virtual {v1, v2, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3055
    iget-object v2, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    move v3, v11

    move v4, v3

    goto/16 :goto_0

    .line 3058
    :cond_19
    iget-object v2, v0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v18, 0x5

    aget-object v2, v2, v18

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    move v3, v11

    move/from16 v4, v18

    goto/16 :goto_0

    :cond_1a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private retrieveJpegImageSize(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3074
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    .line 3075
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 3076
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    .line 3077
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 3081
    :cond_0
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 3082
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_1

    .line 3084
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3085
    invoke-virtual {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 3088
    invoke-direct {p0, p1, v0, p2}, Landroid/support/media/ExifInterface;->getJpegAttributes(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_1
    return-void
.end method

.method private swapBasedOnImageSize(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3948
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3955
    :cond_0
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v1, "ImageLength"

    .line 3956
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 3957
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p1

    const-string v2, "ImageWidth"

    .line 3958
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 3959
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "ImageLength"

    .line 3960
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 3961
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "ImageWidth"

    .line 3962
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 3973
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 3974
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 3975
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 3976
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v2, :cond_1

    if-ge v1, v3, :cond_1

    .line 3980
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 3981
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v1, p2

    aput-object v2, v1, p1

    .line 3982
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aput-object v0, p1, p2

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private updateImageSizeValues(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3322
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 3323
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 3325
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 3326
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 3327
    iget-object v2, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 3328
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 3329
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 3330
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 3331
    iget-object v4, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 3332
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_5

    .line 3337
    iget p1, v0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p1, v1, :cond_2

    .line 3338
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3339
    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/support/media/ExifInterface$Rational;

    if-eqz p1, :cond_1

    .line 3340
    array-length v0, p1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 3345
    :cond_0
    aget-object v0, p1, v3

    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3346
    invoke-static {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->createURational(Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 3347
    aget-object p1, p1, v2

    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3348
    invoke-static {p1, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->createURational(Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "ExifInterface"

    .line 3341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid crop size values. cropSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3342
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3341
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3350
    :cond_2
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3351
    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    .line 3352
    array-length v0, p1

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 3357
    :cond_3
    aget v0, p1, v3

    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3358
    invoke-static {v0, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 3359
    aget p1, p1, v2

    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3360
    invoke-static {p1, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 3362
    :goto_1
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3363
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    const-string v0, "ImageLength"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    :goto_2
    const-string p2, "ExifInterface"

    .line 3353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid crop size values. cropSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3354
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3353
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 3367
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 3368
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 3369
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 3370
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_6

    if-le v1, v2, :cond_6

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 3374
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3375
    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 3376
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3377
    invoke-static {v1, v0}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 3378
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageLength"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3379
    iget-object p1, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    const-string p2, "ImageWidth"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void

    .line 3382
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/support/media/ExifInterface;->retrieveJpegImageSize(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;I)V

    return-void
.end method

.method private validateImages$71225a3e()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 3278
    invoke-direct {p0, v0, v1}, Landroid/support/media/ExifInterface;->swapBasedOnImageSize(II)V

    const/4 v2, 0x4

    .line 3279
    invoke-direct {p0, v0, v2}, Landroid/support/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 3280
    invoke-direct {p0, v1, v2}, Landroid/support/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 3285
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "PixelXDimension"

    .line 3286
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/media/ExifInterface$ExifAttribute;

    .line 3287
    iget-object v5, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    const-string v5, "PixelYDimension"

    .line 3288
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 3290
    iget-object v5, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    const-string v6, "ImageWidth"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3291
    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v3, v0

    const-string v3, "ImageLength"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3296
    :cond_0
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3297
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3298
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v3, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    .line 3299
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v0, v1

    .line 3304
    :cond_1
    iget-object v0, p0, Landroid/support/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ExifInterface"

    const-string v1, "No image meets the size requirements of a thumbnail image."

    .line 3305
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final getAttributeInt$505cff29(Ljava/lang/String;)I
    .locals 2

    .line 1426
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1432
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/support/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroid/support/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method
