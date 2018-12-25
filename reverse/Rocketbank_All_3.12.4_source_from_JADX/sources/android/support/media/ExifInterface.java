package android.support.media;

import android.content.res.AssetManager.AssetInputStream;
import android.support.v4.view.InputDeviceCompat;
import android.util.Log;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.TimeZone;
import java.util.regex.Pattern;
import ru.rocketbank.r2d2.root.chat.ChatFragment;
import ru.rocketbank.r2d2.root.operation.OperationAdapter;

public final class ExifInterface {
    private static final Charset ASCII = Charset.forName("US-ASCII");
    private static final int[] BITS_PER_SAMPLE_GREYSCALE_1 = new int[]{4};
    private static final int[] BITS_PER_SAMPLE_GREYSCALE_2 = new int[]{8};
    private static final int[] BITS_PER_SAMPLE_RGB = new int[]{8, 8, 8};
    private static final byte[] EXIF_ASCII_PREFIX = new byte[]{(byte) 65, (byte) 83, (byte) 67, (byte) 73, (byte) 73, (byte) 0, (byte) 0, (byte) 0};
    private static final ExifTag[] EXIF_POINTER_TAGS = new ExifTag[]{new ExifTag("SubIFDPointer", 330, 4), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("CameraSettingsIFDPointer", 8224, 1), new ExifTag("ImageProcessingIFDPointer", 8256, 1)};
    static final ExifTag[][] EXIF_TAGS = new ExifTag[][]{IFD_TIFF_TAGS, IFD_EXIF_TAGS, IFD_GPS_TAGS, IFD_INTEROPERABILITY_TAGS, IFD_THUMBNAIL_TAGS, IFD_TIFF_TAGS, ORF_MAKER_NOTE_TAGS, ORF_CAMERA_SETTINGS_TAGS, ORF_IMAGE_PROCESSING_TAGS, PEF_TAGS};
    private static final List<Integer> FLIPPED_ROTATION_ORDER = Arrays.asList(new Integer[]{Integer.valueOf(2), Integer.valueOf(7), Integer.valueOf(4), Integer.valueOf(5)});
    static final byte[] IDENTIFIER_EXIF_APP1 = "Exif\u0000\u0000".getBytes(ASCII);
    private static final ExifTag[] IFD_EXIF_TAGS = new ExifTag[]{new ExifTag("ExposureTime", 33434, 5), new ExifTag("FNumber", 33437, 5), new ExifTag("ExposureProgram", 34850, 3), new ExifTag("SpectralSensitivity", 34852, 2), new ExifTag("ISOSpeedRatings", 34855, 3), new ExifTag("OECF", 34856, 7), new ExifTag("ExifVersion", OperationAdapter.VIEW_TYPE_SHOP_ITEM, 2), new ExifTag("DateTimeOriginal", 36867, 2), new ExifTag("DateTimeDigitized", 36868, 2), new ExifTag("ComponentsConfiguration", 37121, 7), new ExifTag("CompressedBitsPerPixel", 37122, 5), new ExifTag("ShutterSpeedValue", 37377, 10), new ExifTag("ApertureValue", 37378, 5), new ExifTag("BrightnessValue", 37379, 10), new ExifTag("ExposureBiasValue", 37380, 10), new ExifTag("MaxApertureValue", 37381, 5), new ExifTag("SubjectDistance", 37382, 5), new ExifTag("MeteringMode", 37383, 3), new ExifTag("LightSource", 37384, 3), new ExifTag("Flash", 37385, 3), new ExifTag("FocalLength", 37386, 5), new ExifTag("SubjectArea", 37396, 3), new ExifTag("MakerNote", 37500, 7), new ExifTag("UserComment", 37510, 7), new ExifTag("SubSecTime", 37520, 2), new ExifTag("SubSecTimeOriginal", 37521, 2), new ExifTag("SubSecTimeDigitized", 37522, 2), new ExifTag("FlashpixVersion", OperationAdapter.VIEW_TYPE_PARENT_OPERATION, 7), new ExifTag("ColorSpace", 40961, 3), new ExifTag("PixelXDimension", 40962), new ExifTag("PixelYDimension", 40963), new ExifTag("RelatedSoundFile", 40964, 2), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("FlashEnergy", 41483, 5), new ExifTag("SpatialFrequencyResponse", 41484, 7), new ExifTag("FocalPlaneXResolution", 41486, 5), new ExifTag("FocalPlaneYResolution", 41487, 5), new ExifTag("FocalPlaneResolutionUnit", 41488, 3), new ExifTag("SubjectLocation", 41492, 3), new ExifTag("ExposureIndex", 41493, 5), new ExifTag("SensingMethod", 41495, 3), new ExifTag("FileSource", 41728, 7), new ExifTag("SceneType", 41729, 7), new ExifTag("CFAPattern", 41730, 7), new ExifTag("CustomRendered", 41985, 3), new ExifTag("ExposureMode", 41986, 3), new ExifTag("WhiteBalance", 41987, 3), new ExifTag("DigitalZoomRatio", 41988, 5), new ExifTag("FocalLengthIn35mmFilm", 41989, 3), new ExifTag("SceneCaptureType", 41990, 3), new ExifTag("GainControl", 41991, 3), new ExifTag("Contrast", 41992, 3), new ExifTag("Saturation", 41993, 3), new ExifTag("Sharpness", 41994, 3), new ExifTag("DeviceSettingDescription", 41995, 7), new ExifTag("SubjectDistanceRange", 41996, 3), new ExifTag("ImageUniqueID", 42016, 2), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720)};
    static final int[] IFD_FORMAT_BYTES_PER_FORMAT = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    static final String[] IFD_FORMAT_NAMES = new String[]{"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE"};
    private static final ExifTag[] IFD_GPS_TAGS = new ExifTag[]{new ExifTag("GPSVersionID", 0, 1), new ExifTag("GPSLatitudeRef", 1, 2), new ExifTag("GPSLatitude", 2, 5), new ExifTag("GPSLongitudeRef", 3, 2), new ExifTag("GPSLongitude", 4, 5), new ExifTag("GPSAltitudeRef", 5, 1), new ExifTag("GPSAltitude", 6, 5), new ExifTag("GPSTimeStamp", 7, 5), new ExifTag("GPSSatellites", 8, 2), new ExifTag("GPSStatus", 9, 2), new ExifTag("GPSMeasureMode", 10, 2), new ExifTag("GPSDOP", 11, 5), new ExifTag("GPSSpeedRef", 12, 2), new ExifTag("GPSSpeed", 13, 5), new ExifTag("GPSTrackRef", 14, 2), new ExifTag("GPSTrack", 15, 5), new ExifTag("GPSImgDirectionRef", 16, 2), new ExifTag("GPSImgDirection", 17, 5), new ExifTag("GPSMapDatum", 18, 2), new ExifTag("GPSDestLatitudeRef", 19, 2), new ExifTag("GPSDestLatitude", 20, 5), new ExifTag("GPSDestLongitudeRef", 21, 2), new ExifTag("GPSDestLongitude", 22, 5), new ExifTag("GPSDestBearingRef", 23, 2), new ExifTag("GPSDestBearing", 24, 5), new ExifTag("GPSDestDistanceRef", 25, 2), new ExifTag("GPSDestDistance", 26, 5), new ExifTag("GPSProcessingMethod", 27, 7), new ExifTag("GPSAreaInformation", 28, 7), new ExifTag("GPSDateStamp", 29, 2), new ExifTag("GPSDifferential", 30, 3)};
    private static final ExifTag[] IFD_INTEROPERABILITY_TAGS = new ExifTag[]{new ExifTag("InteroperabilityIndex", 1, 2)};
    private static final ExifTag[] IFD_THUMBNAIL_TAGS = new ExifTag[]{new ExifTag("NewSubfileType", 254, 4), new ExifTag("SubfileType", 255, 4), new ExifTag("ThumbnailImageWidth", 256), new ExifTag("ThumbnailImageLength", (int) InputDeviceCompat.SOURCE_KEYBOARD), new ExifTag("BitsPerSample", 258, 3), new ExifTag("Compression", 259, 3), new ExifTag("PhotometricInterpretation", 262, 3), new ExifTag("ImageDescription", SubsamplingScaleImageView.ORIENTATION_270, 2), new ExifTag("Make", 271, 2), new ExifTag("Model", 272, 2), new ExifTag("StripOffsets", 273), new ExifTag("Orientation", 274, 3), new ExifTag("SamplesPerPixel", 277, 3), new ExifTag("RowsPerStrip", 278), new ExifTag("StripByteCounts", 279), new ExifTag("XResolution", 282, 5), new ExifTag("YResolution", 283, 5), new ExifTag("PlanarConfiguration", 284, 3), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("TransferFunction", 301, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("Artist", 315, 2), new ExifTag("WhitePoint", 318, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("JPEGInterchangeFormat", InputDeviceCompat.SOURCE_DPAD, 4), new ExifTag("JPEGInterchangeFormatLength", 514, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", 532, 5), new ExifTag("Copyright", 33432, 2), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720)};
    private static final ExifTag[] IFD_TIFF_TAGS = new ExifTag[]{new ExifTag("NewSubfileType", 254, 4), new ExifTag("SubfileType", 255, 4), new ExifTag("ImageWidth", 256), new ExifTag("ImageLength", (int) InputDeviceCompat.SOURCE_KEYBOARD), new ExifTag("BitsPerSample", 258, 3), new ExifTag("Compression", 259, 3), new ExifTag("PhotometricInterpretation", 262, 3), new ExifTag("ImageDescription", SubsamplingScaleImageView.ORIENTATION_270, 2), new ExifTag("Make", 271, 2), new ExifTag("Model", 272, 2), new ExifTag("StripOffsets", 273), new ExifTag("Orientation", 274, 3), new ExifTag("SamplesPerPixel", 277, 3), new ExifTag("RowsPerStrip", 278), new ExifTag("StripByteCounts", 279), new ExifTag("XResolution", 282, 5), new ExifTag("YResolution", 283, 5), new ExifTag("PlanarConfiguration", 284, 3), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("TransferFunction", 301, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("Artist", 315, 2), new ExifTag("WhitePoint", 318, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("JPEGInterchangeFormat", InputDeviceCompat.SOURCE_DPAD, 4), new ExifTag("JPEGInterchangeFormatLength", 514, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", 532, 5), new ExifTag("Copyright", 33432, 2), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("SensorTopBorder", 4, 4), new ExifTag("SensorLeftBorder", 5, 4), new ExifTag("SensorBottomBorder", 6, 4), new ExifTag("SensorRightBorder", 7, 4), new ExifTag("ISO", 23, 3), new ExifTag("JpgFromRaw", 46, 7)};
    private static final ExifTag JPEG_INTERCHANGE_FORMAT_LENGTH_TAG = new ExifTag("JPEGInterchangeFormatLength", 514, 4);
    private static final ExifTag JPEG_INTERCHANGE_FORMAT_TAG = new ExifTag("JPEGInterchangeFormat", InputDeviceCompat.SOURCE_DPAD, 4);
    static final byte[] JPEG_SIGNATURE = new byte[]{(byte) -1, (byte) -40, (byte) -1};
    private static final ExifTag[] ORF_CAMERA_SETTINGS_TAGS = new ExifTag[]{new ExifTag("PreviewImageStart", InputDeviceCompat.SOURCE_KEYBOARD, 4), new ExifTag("PreviewImageLength", 258, 4)};
    private static final ExifTag[] ORF_IMAGE_PROCESSING_TAGS = new ExifTag[]{new ExifTag("AspectFrame", 4371, 3)};
    private static final byte[] ORF_MAKER_NOTE_HEADER_1 = new byte[]{(byte) 79, (byte) 76, (byte) 89, (byte) 77, (byte) 80, (byte) 0};
    private static final byte[] ORF_MAKER_NOTE_HEADER_2 = new byte[]{(byte) 79, (byte) 76, (byte) 89, (byte) 77, (byte) 80, (byte) 85, (byte) 83, (byte) 0, (byte) 73, (byte) 73};
    private static final ExifTag[] ORF_MAKER_NOTE_TAGS = new ExifTag[]{new ExifTag("ThumbnailImage", 256, 7), new ExifTag("CameraSettingsIFDPointer", 8224, 4), new ExifTag("ImageProcessingIFDPointer", 8256, 4)};
    private static final ExifTag[] PEF_TAGS = new ExifTag[]{new ExifTag("ColorSpace", 55, 3)};
    private static final List<Integer> ROTATION_ORDER = Arrays.asList(new Integer[]{Integer.valueOf(1), Integer.valueOf(6), Integer.valueOf(3), Integer.valueOf(8)});
    private static final ExifTag TAG_RAF_IMAGE_SIZE = new ExifTag("StripOffsets", 273, 3);
    private static final HashMap<Integer, Integer> sExifPointerTagMap = new HashMap();
    private static final HashMap<Integer, ExifTag>[] sExifTagMapsForReading = new HashMap[10];
    private static final HashMap<String, ExifTag>[] sExifTagMapsForWriting = new HashMap[10];
    private static SimpleDateFormat sFormatter;
    private static final Pattern sGpsTimestampPattern = Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
    private static final Pattern sNonZeroTimePattern = Pattern.compile(".*[1-9].*");
    private static final HashSet<String> sTagSetForCompatibility = new HashSet(Arrays.asList(new String[]{"FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"}));
    private final AssetInputStream mAssetInputStream;
    private final HashMap<String, ExifAttribute>[] mAttributes = new HashMap[10];
    private ByteOrder mExifByteOrder = ByteOrder.BIG_ENDIAN;
    private int mExifOffset;
    private final String mFilename;
    private boolean mHasThumbnail;
    private boolean mIsSupportedFile;
    private int mMimeType;
    private int mOrfMakerNoteOffset;
    private int mOrfThumbnailLength;
    private int mOrfThumbnailOffset;
    private int mRw2JpgFromRawOffset;
    private byte[] mThumbnailBytes;
    private int mThumbnailCompression;
    private int mThumbnailLength;
    private int mThumbnailOffset;

    static class ByteOrderedDataInputStream extends InputStream implements DataInput {
        private static final ByteOrder BIG_ENDIAN = ByteOrder.BIG_ENDIAN;
        private static final ByteOrder LITTLE_ENDIAN = ByteOrder.LITTLE_ENDIAN;
        private ByteOrder mByteOrder;
        private DataInputStream mDataInputStream;
        private final int mLength;
        private int mPosition;

        public ByteOrderedDataInputStream(InputStream inputStream) throws IOException {
            this.mByteOrder = ByteOrder.BIG_ENDIAN;
            this.mDataInputStream = new DataInputStream(inputStream);
            this.mLength = this.mDataInputStream.available();
            this.mPosition = null;
            this.mDataInputStream.mark(this.mLength);
        }

        public ByteOrderedDataInputStream(byte[] bArr) throws IOException {
            this(new ByteArrayInputStream(bArr));
        }

        public final void setByteOrder(ByteOrder byteOrder) {
            this.mByteOrder = byteOrder;
        }

        public final void seek(long j) throws IOException {
            if (((long) this.mPosition) > j) {
                this.mPosition = 0;
                this.mDataInputStream.reset();
                this.mDataInputStream.mark(this.mLength);
            } else {
                j -= (long) this.mPosition;
            }
            j = (int) j;
            if (skipBytes(j) != j) {
                throw new IOException("Couldn't seek up to the byteCount");
            }
        }

        public final int peek() {
            return this.mPosition;
        }

        public final int available() throws IOException {
            return this.mDataInputStream.available();
        }

        public final int read() throws IOException {
            this.mPosition++;
            return this.mDataInputStream.read();
        }

        public final int read(byte[] bArr, int i, int i2) throws IOException {
            bArr = this.mDataInputStream.read(bArr, i, i2);
            this.mPosition += bArr;
            return bArr;
        }

        public final int readUnsignedByte() throws IOException {
            this.mPosition++;
            return this.mDataInputStream.readUnsignedByte();
        }

        public final String readLine() throws IOException {
            Log.d("ExifInterface", "Currently unsupported");
            return null;
        }

        public final boolean readBoolean() throws IOException {
            this.mPosition++;
            return this.mDataInputStream.readBoolean();
        }

        public final char readChar() throws IOException {
            this.mPosition += 2;
            return this.mDataInputStream.readChar();
        }

        public final String readUTF() throws IOException {
            this.mPosition += 2;
            return this.mDataInputStream.readUTF();
        }

        public final void readFully(byte[] bArr, int i, int i2) throws IOException {
            this.mPosition += i2;
            if (this.mPosition > this.mLength) {
                throw new EOFException();
            } else if (this.mDataInputStream.read(bArr, i, i2) != i2) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        public final void readFully(byte[] bArr) throws IOException {
            this.mPosition += bArr.length;
            if (this.mPosition > this.mLength) {
                throw new EOFException();
            } else if (this.mDataInputStream.read(bArr, 0, bArr.length) != bArr.length) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        public final byte readByte() throws IOException {
            this.mPosition++;
            if (this.mPosition > this.mLength) {
                throw new EOFException();
            }
            int read = this.mDataInputStream.read();
            if (read >= 0) {
                return (byte) read;
            }
            throw new EOFException();
        }

        public final short readShort() throws IOException {
            this.mPosition += 2;
            if (this.mPosition > this.mLength) {
                throw new EOFException();
            }
            int read = this.mDataInputStream.read();
            int read2 = this.mDataInputStream.read();
            if ((read | read2) < 0) {
                throw new EOFException();
            } else if (this.mByteOrder == LITTLE_ENDIAN) {
                return (short) ((read2 << 8) + read);
            } else {
                if (this.mByteOrder == BIG_ENDIAN) {
                    return (short) ((read << 8) + read2);
                }
                StringBuilder stringBuilder = new StringBuilder("Invalid byte order: ");
                stringBuilder.append(this.mByteOrder);
                throw new IOException(stringBuilder.toString());
            }
        }

        public final int readInt() throws IOException {
            this.mPosition += 4;
            if (this.mPosition > this.mLength) {
                throw new EOFException();
            }
            int read = this.mDataInputStream.read();
            int read2 = this.mDataInputStream.read();
            int read3 = this.mDataInputStream.read();
            int read4 = this.mDataInputStream.read();
            if ((((read | read2) | read3) | read4) < 0) {
                throw new EOFException();
            } else if (this.mByteOrder == LITTLE_ENDIAN) {
                return (((read4 << 24) + (read3 << 16)) + (read2 << 8)) + read;
            } else {
                if (this.mByteOrder == BIG_ENDIAN) {
                    return (((read << 24) + (read2 << 16)) + (read3 << 8)) + read4;
                }
                StringBuilder stringBuilder = new StringBuilder("Invalid byte order: ");
                stringBuilder.append(this.mByteOrder);
                throw new IOException(stringBuilder.toString());
            }
        }

        public final int skipBytes(int i) throws IOException {
            i = Math.min(i, this.mLength - this.mPosition);
            int i2 = 0;
            while (i2 < i) {
                i2 += this.mDataInputStream.skipBytes(i - i2);
            }
            this.mPosition += i2;
            return i2;
        }

        public final int readUnsignedShort() throws IOException {
            this.mPosition += 2;
            if (this.mPosition > this.mLength) {
                throw new EOFException();
            }
            int read = this.mDataInputStream.read();
            int read2 = this.mDataInputStream.read();
            if ((read | read2) < 0) {
                throw new EOFException();
            } else if (this.mByteOrder == LITTLE_ENDIAN) {
                return (read2 << 8) + read;
            } else {
                if (this.mByteOrder == BIG_ENDIAN) {
                    return (read << 8) + read2;
                }
                StringBuilder stringBuilder = new StringBuilder("Invalid byte order: ");
                stringBuilder.append(this.mByteOrder);
                throw new IOException(stringBuilder.toString());
            }
        }

        public final long readLong() throws IOException {
            this.mPosition += 8;
            if (this.mPosition > this.mLength) {
                throw new EOFException();
            }
            int read = r0.mDataInputStream.read();
            int read2 = r0.mDataInputStream.read();
            int read3 = r0.mDataInputStream.read();
            int read4 = r0.mDataInputStream.read();
            int read5 = r0.mDataInputStream.read();
            int read6 = r0.mDataInputStream.read();
            int read7 = r0.mDataInputStream.read();
            int read8 = r0.mDataInputStream.read();
            if ((((((((read | read2) | read3) | read4) | read5) | read6) | read7) | read8) < 0) {
                throw new EOFException();
            } else if (r0.mByteOrder == LITTLE_ENDIAN) {
                return (((((((((long) read8) << 56) + (((long) read7) << 48)) + (((long) read6) << 40)) + (((long) read5) << 32)) + (((long) read4) << 24)) + (((long) read3) << 16)) + (((long) read2) << 8)) + ((long) read);
            } else {
                int i = read2;
                if (r0.mByteOrder == BIG_ENDIAN) {
                    return (((((((((long) read) << 56) + (((long) i) << 48)) + (((long) read3) << 40)) + (((long) read4) << 32)) + (((long) read5) << 24)) + (((long) read6) << 16)) + (((long) read7) << 8)) + ((long) read8);
                }
                StringBuilder stringBuilder = new StringBuilder("Invalid byte order: ");
                stringBuilder.append(r0.mByteOrder);
                throw new IOException(stringBuilder.toString());
            }
        }

        public final float readFloat() throws IOException {
            return Float.intBitsToFloat(readInt());
        }

        public final double readDouble() throws IOException {
            return Double.longBitsToDouble(readLong());
        }
    }

    static class ExifAttribute {
        public final byte[] bytes;
        public final int format;
        public final int numberOfComponents;

        private ExifAttribute(int i, int i2, byte[] bArr) {
            this.format = i;
            this.numberOfComponents = i2;
            this.bytes = bArr;
        }

        public static ExifAttribute createUShort(int i, ByteOrder byteOrder) {
            int[] iArr = new int[]{i};
            i = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[3]]);
            i.order(byteOrder);
            for (byteOrder = null; byteOrder <= null; byteOrder++) {
                i.putShort((short) iArr[0]);
            }
            return new ExifAttribute(3, 1, i.array());
        }

        public static ExifAttribute createULong(long j, ByteOrder byteOrder) {
            long[] jArr = new long[]{j};
            j = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[4]]);
            j.order(byteOrder);
            for (byteOrder = null; byteOrder <= null; byteOrder++) {
                j.putInt((int) jArr[0]);
            }
            return new ExifAttribute(4, 1, j.array());
        }

        public static ExifAttribute createString(String str) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(null);
            str = stringBuilder.toString().getBytes(ExifInterface.ASCII);
            return new ExifAttribute(2, str.length, str);
        }

        public static ExifAttribute createURational(Rational rational, ByteOrder byteOrder) {
            Rational[] rationalArr = new Rational[]{rational};
            rational = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[5]]);
            rational.order(byteOrder);
            for (byteOrder = null; byteOrder <= null; byteOrder++) {
                Rational rational2 = rationalArr[0];
                rational.putInt((int) rational2.numerator);
                rational.putInt((int) rational2.denominator);
            }
            return new ExifAttribute(5, 1, rational.array());
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("(");
            stringBuilder.append(ExifInterface.IFD_FORMAT_NAMES[this.format]);
            stringBuilder.append(", data length:");
            stringBuilder.append(this.bytes.length);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }

        private Object getValue(ByteOrder byteOrder) {
            ByteOrderedDataInputStream byteOrderedDataInputStream;
            try {
                byteOrderedDataInputStream = new ByteOrderedDataInputStream(this.bytes);
                try {
                    byteOrderedDataInputStream.setByteOrder(byteOrder);
                    int i = 1;
                    int i2 = 0;
                    switch (this.format) {
                        case 1:
                        case 6:
                            if (this.bytes.length != 1 || this.bytes[0] < null || this.bytes[0] > 1) {
                                byteOrder = new String(this.bytes, ExifInterface.ASCII);
                                try {
                                    byteOrderedDataInputStream.close();
                                } catch (Throwable e) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e);
                                }
                                return byteOrder;
                            }
                            byteOrder = new String(new char[]{(char) (this.bytes[0] + 48)});
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (Throwable e2) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e2);
                            }
                            return byteOrder;
                        case 2:
                        case 7:
                            if (this.numberOfComponents >= ExifInterface.EXIF_ASCII_PREFIX.length) {
                                byteOrder = null;
                                while (byteOrder < ExifInterface.EXIF_ASCII_PREFIX.length) {
                                    if (this.bytes[byteOrder] != ExifInterface.EXIF_ASCII_PREFIX[byteOrder]) {
                                        i = 0;
                                        if (i != 0) {
                                            i2 = ExifInterface.EXIF_ASCII_PREFIX.length;
                                        }
                                    } else {
                                        byteOrder++;
                                    }
                                }
                                if (i != 0) {
                                    i2 = ExifInterface.EXIF_ASCII_PREFIX.length;
                                }
                            }
                            byteOrder = new StringBuilder();
                            while (i2 < this.numberOfComponents) {
                                byte b = this.bytes[i2];
                                if (b != (byte) 0) {
                                    if (b >= (byte) 32) {
                                        byteOrder.append((char) b);
                                    } else {
                                        byteOrder.append('?');
                                    }
                                    i2++;
                                } else {
                                    byteOrder = byteOrder.toString();
                                    byteOrderedDataInputStream.close();
                                    return byteOrder;
                                }
                            }
                            byteOrder = byteOrder.toString();
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (Throwable e22) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e22);
                            }
                            return byteOrder;
                        case 3:
                            byteOrder = new int[this.numberOfComponents];
                            while (i2 < this.numberOfComponents) {
                                byteOrder[i2] = byteOrderedDataInputStream.readUnsignedShort();
                                i2++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (Throwable e222) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e222);
                            }
                            return byteOrder;
                        case 4:
                            byteOrder = new long[this.numberOfComponents];
                            while (i2 < this.numberOfComponents) {
                                byteOrder[i2] = ((long) byteOrderedDataInputStream.readInt()) & 4294967295L;
                                i2++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (Throwable e2222) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e2222);
                            }
                            return byteOrder;
                        case 5:
                            byteOrder = new Rational[this.numberOfComponents];
                            while (i2 < this.numberOfComponents) {
                                byteOrder[i2] = new Rational(((long) byteOrderedDataInputStream.readInt()) & 4294967295L, ((long) byteOrderedDataInputStream.readInt()) & 4294967295L);
                                i2++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (Throwable e22222) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e22222);
                            }
                            return byteOrder;
                        case 8:
                            byteOrder = new int[this.numberOfComponents];
                            while (i2 < this.numberOfComponents) {
                                byteOrder[i2] = byteOrderedDataInputStream.readShort();
                                i2++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (Throwable e222222) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e222222);
                            }
                            return byteOrder;
                        case 9:
                            byteOrder = new int[this.numberOfComponents];
                            while (i2 < this.numberOfComponents) {
                                byteOrder[i2] = byteOrderedDataInputStream.readInt();
                                i2++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (Throwable e2222222) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e2222222);
                            }
                            return byteOrder;
                        case 10:
                            byteOrder = new Rational[this.numberOfComponents];
                            while (i2 < this.numberOfComponents) {
                                byteOrder[i2] = new Rational((long) byteOrderedDataInputStream.readInt(), (long) byteOrderedDataInputStream.readInt());
                                i2++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (Throwable e22222222) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e22222222);
                            }
                            return byteOrder;
                        case 11:
                            byteOrder = new double[this.numberOfComponents];
                            while (i2 < this.numberOfComponents) {
                                byteOrder[i2] = (double) byteOrderedDataInputStream.readFloat();
                                i2++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (Throwable e222222222) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e222222222);
                            }
                            return byteOrder;
                        case 12:
                            byteOrder = new double[this.numberOfComponents];
                            while (i2 < this.numberOfComponents) {
                                byteOrder[i2] = byteOrderedDataInputStream.readDouble();
                                i2++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (Throwable e2222222222) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e2222222222);
                            }
                            return byteOrder;
                        default:
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (ByteOrder byteOrder2) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", byteOrder2);
                            }
                            return null;
                    }
                } catch (IOException e3) {
                    byteOrder2 = e3;
                }
                byteOrder2 = e3;
            } catch (IOException e4) {
                byteOrder2 = e4;
                byteOrderedDataInputStream = null;
            } catch (Throwable th) {
                byteOrder2 = th;
                byteOrderedDataInputStream = null;
                if (byteOrderedDataInputStream != null) {
                    try {
                        byteOrderedDataInputStream.close();
                    } catch (Throwable e22222222222) {
                        Log.e("ExifInterface", "IOException occurred while closing InputStream", e22222222222);
                    }
                }
                throw byteOrder2;
            }
            try {
                Log.w("ExifInterface", "IOException occurred during reading a value", byteOrder2);
                if (byteOrderedDataInputStream != null) {
                    try {
                        byteOrderedDataInputStream.close();
                    } catch (ByteOrder byteOrder22) {
                        Log.e("ExifInterface", "IOException occurred while closing InputStream", byteOrder22);
                    }
                }
                return null;
            } catch (Throwable th2) {
                byteOrder22 = th2;
                if (byteOrderedDataInputStream != null) {
                    byteOrderedDataInputStream.close();
                }
                throw byteOrder22;
            }
        }

        public final double getDoubleValue(ByteOrder byteOrder) {
            byteOrder = getValue(byteOrder);
            if (byteOrder == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            } else if (byteOrder instanceof String) {
                return Double.parseDouble((String) byteOrder);
            } else {
                if (byteOrder instanceof long[]) {
                    long[] jArr = (long[]) byteOrder;
                    if (jArr.length == 1) {
                        return (double) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (byteOrder instanceof int[]) {
                    int[] iArr = (int[]) byteOrder;
                    if (iArr.length == 1) {
                        return (double) iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (byteOrder instanceof double[]) {
                    double[] dArr = (double[]) byteOrder;
                    if (dArr.length == 1) {
                        return dArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (byteOrder instanceof Rational[]) {
                    Rational[] rationalArr = (Rational[]) byteOrder;
                    if (rationalArr.length == 1) {
                        byteOrder = rationalArr[0];
                        return ((double) byteOrder.numerator) / ((double) byteOrder.denominator);
                    }
                    throw new NumberFormatException("There are more than one component");
                } else {
                    throw new NumberFormatException("Couldn't find a double value");
                }
            }
        }

        public final int getIntValue(ByteOrder byteOrder) {
            byteOrder = getValue(byteOrder);
            if (byteOrder == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            } else if (byteOrder instanceof String) {
                return Integer.parseInt((String) byteOrder);
            } else {
                if (byteOrder instanceof long[]) {
                    long[] jArr = (long[]) byteOrder;
                    if (jArr.length == 1) {
                        return (int) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (byteOrder instanceof int[]) {
                    int[] iArr = (int[]) byteOrder;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else {
                    throw new NumberFormatException("Couldn't find a integer value");
                }
            }
        }

        public final String getStringValue(ByteOrder byteOrder) {
            byteOrder = getValue(byteOrder);
            if (byteOrder == null) {
                return null;
            }
            if (byteOrder instanceof String) {
                return (String) byteOrder;
            }
            StringBuilder stringBuilder = new StringBuilder();
            int i = 0;
            if (byteOrder instanceof long[]) {
                long[] jArr = (long[]) byteOrder;
                while (i < jArr.length) {
                    stringBuilder.append(jArr[i]);
                    i++;
                    if (i != jArr.length) {
                        stringBuilder.append(",");
                    }
                }
                return stringBuilder.toString();
            } else if (byteOrder instanceof int[]) {
                int[] iArr = (int[]) byteOrder;
                while (i < iArr.length) {
                    stringBuilder.append(iArr[i]);
                    i++;
                    if (i != iArr.length) {
                        stringBuilder.append(",");
                    }
                }
                return stringBuilder.toString();
            } else if (byteOrder instanceof double[]) {
                double[] dArr = (double[]) byteOrder;
                while (i < dArr.length) {
                    stringBuilder.append(dArr[i]);
                    i++;
                    if (i != dArr.length) {
                        stringBuilder.append(",");
                    }
                }
                return stringBuilder.toString();
            } else if (!(byteOrder instanceof Rational[])) {
                return null;
            } else {
                Rational[] rationalArr = (Rational[]) byteOrder;
                while (i < rationalArr.length) {
                    stringBuilder.append(rationalArr[i].numerator);
                    stringBuilder.append('/');
                    stringBuilder.append(rationalArr[i].denominator);
                    i++;
                    if (i != rationalArr.length) {
                        stringBuilder.append(",");
                    }
                }
                return stringBuilder.toString();
            }
        }
    }

    static class ExifTag {
        public final String name;
        public final int number;
        public final int primaryFormat;
        public final int secondaryFormat;

        private ExifTag(String str, int i, int i2) {
            this.name = str;
            this.number = i;
            this.primaryFormat = i2;
            this.secondaryFormat = -1;
        }

        private ExifTag(String str, int i) {
            this.name = str;
            this.number = i;
            this.primaryFormat = 3;
            this.secondaryFormat = 4;
        }

        static /* synthetic */ boolean access$900(ExifTag exifTag, int i) {
            if (exifTag.primaryFormat != 7) {
                if (i != 7) {
                    if (exifTag.primaryFormat != i) {
                        if (exifTag.secondaryFormat != i) {
                            if ((exifTag.primaryFormat == 4 || exifTag.secondaryFormat == 4) && i == 3) {
                                return true;
                            }
                            if ((exifTag.primaryFormat == 9 || exifTag.secondaryFormat == 9) && i == 8) {
                                return true;
                            }
                            if ((exifTag.primaryFormat == 12 || exifTag.secondaryFormat == 12) && i == 11) {
                                return true;
                            }
                            return null;
                        }
                    }
                    return true;
                }
            }
            return true;
        }
    }

    static class Rational {
        public final long denominator;
        public final long numerator;

        private Rational(long j, long j2) {
            if (j2 == 0) {
                this.numerator = 0;
                this.denominator = 1;
                return;
            }
            this.numerator = j;
            this.denominator = j2;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.numerator);
            stringBuilder.append("/");
            stringBuilder.append(this.denominator);
            return stringBuilder.toString();
        }
    }

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        sFormatter = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        for (int i = 0; i < 10; i++) {
            sExifTagMapsForReading[i] = new HashMap();
            sExifTagMapsForWriting[i] = new HashMap();
            for (ExifTag exifTag : EXIF_TAGS[i]) {
                sExifTagMapsForReading[i].put(Integer.valueOf(exifTag.number), exifTag);
                sExifTagMapsForWriting[i].put(exifTag.name, exifTag);
            }
        }
        sExifPointerTagMap.put(Integer.valueOf(EXIF_POINTER_TAGS[0].number), Integer.valueOf(5));
        sExifPointerTagMap.put(Integer.valueOf(EXIF_POINTER_TAGS[1].number), Integer.valueOf(1));
        sExifPointerTagMap.put(Integer.valueOf(EXIF_POINTER_TAGS[2].number), Integer.valueOf(2));
        sExifPointerTagMap.put(Integer.valueOf(EXIF_POINTER_TAGS[3].number), Integer.valueOf(3));
        sExifPointerTagMap.put(Integer.valueOf(EXIF_POINTER_TAGS[4].number), Integer.valueOf(7));
        sExifPointerTagMap.put(Integer.valueOf(EXIF_POINTER_TAGS[5].number), Integer.valueOf(8));
    }

    public ExifInterface(java.lang.String r3) throws java.io.IOException {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r2.<init>();
        r0 = 10;
        r0 = new java.util.HashMap[r0];
        r2.mAttributes = r0;
        r0 = java.nio.ByteOrder.BIG_ENDIAN;
        r2.mExifByteOrder = r0;
        if (r3 != 0) goto L_0x0017;
    L_0x000f:
        r3 = new java.lang.IllegalArgumentException;
        r0 = "filename cannot be null";
        r3.<init>(r0);
        throw r3;
    L_0x0017:
        r0 = 0;
        r2.mAssetInputStream = r0;
        r2.mFilename = r3;
        r1 = new java.io.FileInputStream;	 Catch:{ all -> 0x002e }
        r1.<init>(r3);	 Catch:{ all -> 0x002e }
        r2.loadAttributes(r1);	 Catch:{ all -> 0x002b }
        r1.close();	 Catch:{ RuntimeException -> 0x0029, Exception -> 0x0028 }
        return;
    L_0x0028:
        return;
    L_0x0029:
        r3 = move-exception;
        throw r3;
    L_0x002b:
        r3 = move-exception;
        r0 = r1;
        goto L_0x002f;
    L_0x002e:
        r3 = move-exception;
    L_0x002f:
        if (r0 == 0) goto L_0x0037;
    L_0x0031:
        r0.close();	 Catch:{ RuntimeException -> 0x0035, Exception -> 0x0037 }
        goto L_0x0037;
    L_0x0035:
        r3 = move-exception;
        throw r3;
    L_0x0037:
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.media.ExifInterface.<init>(java.lang.String):void");
    }

    private ExifAttribute getExifAttribute(String str) {
        for (int i = 0; i < 10; i++) {
            ExifAttribute exifAttribute = (ExifAttribute) this.mAttributes[i].get(str);
            if (exifAttribute != null) {
                return exifAttribute;
            }
        }
        return null;
    }

    private java.lang.String getAttribute(java.lang.String r7) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r6 = this;
        r0 = r6.getExifAttribute(r7);
        r1 = 0;
        if (r0 == 0) goto L_0x00b4;
    L_0x0007:
        r2 = sTagSetForCompatibility;
        r2 = r2.contains(r7);
        if (r2 != 0) goto L_0x0016;
    L_0x000f:
        r7 = r6.mExifByteOrder;
        r7 = r0.getStringValue(r7);
        return r7;
    L_0x0016:
        r2 = "GPSTimeStamp";
        r7 = r7.equals(r2);
        if (r7 == 0) goto L_0x00a8;
    L_0x001e:
        r7 = r0.format;
        r2 = 5;
        if (r7 == r2) goto L_0x003f;
    L_0x0023:
        r7 = r0.format;
        r2 = 10;
        if (r7 == r2) goto L_0x003f;
    L_0x0029:
        r7 = "ExifInterface";
        r2 = new java.lang.StringBuilder;
        r3 = "GPS Timestamp format is not rational. format=";
        r2.<init>(r3);
        r0 = r0.format;
        r2.append(r0);
        r0 = r2.toString();
        android.util.Log.w(r7, r0);
        return r1;
    L_0x003f:
        r7 = r6.mExifByteOrder;
        r7 = r0.getValue(r7);
        r7 = (android.support.media.ExifInterface.Rational[]) r7;
        if (r7 == 0) goto L_0x0090;
    L_0x0049:
        r0 = 3;
        r2 = r7.length;
        if (r2 == r0) goto L_0x004e;
    L_0x004d:
        goto L_0x0090;
    L_0x004e:
        r1 = "%02d:%02d:%02d";
        r0 = new java.lang.Object[r0];
        r2 = 0;
        r3 = r7[r2];
        r3 = r3.numerator;
        r3 = (float) r3;
        r4 = r7[r2];
        r4 = r4.denominator;
        r4 = (float) r4;
        r3 = r3 / r4;
        r3 = (int) r3;
        r3 = java.lang.Integer.valueOf(r3);
        r0[r2] = r3;
        r2 = 1;
        r3 = r7[r2];
        r3 = r3.numerator;
        r3 = (float) r3;
        r4 = r7[r2];
        r4 = r4.denominator;
        r4 = (float) r4;
        r3 = r3 / r4;
        r3 = (int) r3;
        r3 = java.lang.Integer.valueOf(r3);
        r0[r2] = r3;
        r2 = 2;
        r3 = r7[r2];
        r3 = r3.numerator;
        r3 = (float) r3;
        r7 = r7[r2];
        r4 = r7.denominator;
        r7 = (float) r4;
        r3 = r3 / r7;
        r7 = (int) r3;
        r7 = java.lang.Integer.valueOf(r7);
        r0[r2] = r7;
        r7 = java.lang.String.format(r1, r0);
        return r7;
    L_0x0090:
        r0 = "ExifInterface";
        r2 = new java.lang.StringBuilder;
        r3 = "Invalid GPS Timestamp array. array=";
        r2.<init>(r3);
        r7 = java.util.Arrays.toString(r7);
        r2.append(r7);
        r7 = r2.toString();
        android.util.Log.w(r0, r7);
        return r1;
    L_0x00a8:
        r7 = r6.mExifByteOrder;	 Catch:{ NumberFormatException -> 0x00b3 }
        r2 = r0.getDoubleValue(r7);	 Catch:{ NumberFormatException -> 0x00b3 }
        r7 = java.lang.Double.toString(r2);	 Catch:{ NumberFormatException -> 0x00b3 }
        return r7;
    L_0x00b3:
        return r1;
    L_0x00b4:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.media.ExifInterface.getAttribute(java.lang.String):java.lang.String");
    }

    public final int getAttributeInt$505cff29(java.lang.String r3) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r3 = r2.getExifAttribute(r3);
        r0 = 1;
        if (r3 != 0) goto L_0x0008;
    L_0x0007:
        return r0;
    L_0x0008:
        r1 = r2.mExifByteOrder;	 Catch:{ NumberFormatException -> 0x000f }
        r3 = r3.getIntValue(r1);	 Catch:{ NumberFormatException -> 0x000f }
        return r3;
    L_0x000f:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.media.ExifInterface.getAttributeInt$505cff29(java.lang.String):int");
    }

    private void loadAttributes(java.io.InputStream r13) throws java.io.IOException {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r12 = this;
        r0 = 0;
        r1 = r0;
    L_0x0002:
        r2 = 10;
        if (r1 >= r2) goto L_0x0015;
    L_0x0006:
        r2 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r3 = new java.util.HashMap;	 Catch:{ IOException -> 0x0250 }
        r3.<init>();	 Catch:{ IOException -> 0x0250 }
        r2[r1] = r3;	 Catch:{ IOException -> 0x0250 }
        r1 = r1 + 1;	 Catch:{ IOException -> 0x0250 }
        goto L_0x0002;	 Catch:{ IOException -> 0x0250 }
    L_0x0012:
        r13 = move-exception;	 Catch:{ IOException -> 0x0250 }
        goto L_0x0256;	 Catch:{ IOException -> 0x0250 }
    L_0x0015:
        r1 = new java.io.BufferedInputStream;	 Catch:{ IOException -> 0x0250 }
        r3 = 5000; // 0x1388 float:7.006E-42 double:2.4703E-320;	 Catch:{ IOException -> 0x0250 }
        r1.<init>(r13, r3);	 Catch:{ IOException -> 0x0250 }
        r13 = r1;	 Catch:{ IOException -> 0x0250 }
        r13 = (java.io.BufferedInputStream) r13;	 Catch:{ IOException -> 0x0250 }
        r13.mark(r3);	 Catch:{ IOException -> 0x0250 }
        r4 = new byte[r3];	 Catch:{ IOException -> 0x0250 }
        r5 = r13.read(r4);	 Catch:{ IOException -> 0x0250 }
        if (r5 == r3) goto L_0x0030;	 Catch:{ IOException -> 0x0250 }
    L_0x002a:
        r13 = new java.io.EOFException;	 Catch:{ IOException -> 0x0250 }
        r13.<init>();	 Catch:{ IOException -> 0x0250 }
        throw r13;	 Catch:{ IOException -> 0x0250 }
    L_0x0030:
        r13.reset();	 Catch:{ IOException -> 0x0250 }
        r13 = isJpegFormat(r4);	 Catch:{ IOException -> 0x0250 }
        r3 = 7;	 Catch:{ IOException -> 0x0250 }
        r5 = 4;	 Catch:{ IOException -> 0x0250 }
        r6 = 1;	 Catch:{ IOException -> 0x0250 }
        if (r13 == 0) goto L_0x003e;	 Catch:{ IOException -> 0x0250 }
    L_0x003c:
        r13 = r5;	 Catch:{ IOException -> 0x0250 }
        goto L_0x0091;	 Catch:{ IOException -> 0x0250 }
    L_0x003e:
        r13 = isRafFormat(r4);	 Catch:{ IOException -> 0x0250 }
        if (r13 == 0) goto L_0x0047;	 Catch:{ IOException -> 0x0250 }
    L_0x0044:
        r13 = 9;	 Catch:{ IOException -> 0x0250 }
        goto L_0x0091;	 Catch:{ IOException -> 0x0250 }
    L_0x0047:
        r13 = new android.support.media.ExifInterface$ByteOrderedDataInputStream;	 Catch:{ IOException -> 0x0250 }
        r13.<init>(r4);	 Catch:{ IOException -> 0x0250 }
        r7 = readByteOrder(r13);	 Catch:{ IOException -> 0x0250 }
        r12.mExifByteOrder = r7;	 Catch:{ IOException -> 0x0250 }
        r7 = r12.mExifByteOrder;	 Catch:{ IOException -> 0x0250 }
        r13.setByteOrder(r7);	 Catch:{ IOException -> 0x0250 }
        r7 = r13.readShort();	 Catch:{ IOException -> 0x0250 }
        r13.close();	 Catch:{ IOException -> 0x0250 }
        r13 = 20306; // 0x4f52 float:2.8455E-41 double:1.00325E-319;	 Catch:{ IOException -> 0x0250 }
        if (r7 == r13) goto L_0x0069;	 Catch:{ IOException -> 0x0250 }
    L_0x0062:
        r13 = 21330; // 0x5352 float:2.989E-41 double:1.05384E-319;	 Catch:{ IOException -> 0x0250 }
        if (r7 != r13) goto L_0x0067;	 Catch:{ IOException -> 0x0250 }
    L_0x0066:
        goto L_0x0069;	 Catch:{ IOException -> 0x0250 }
    L_0x0067:
        r13 = r0;	 Catch:{ IOException -> 0x0250 }
        goto L_0x006a;	 Catch:{ IOException -> 0x0250 }
    L_0x0069:
        r13 = r6;	 Catch:{ IOException -> 0x0250 }
    L_0x006a:
        if (r13 == 0) goto L_0x006e;	 Catch:{ IOException -> 0x0250 }
    L_0x006c:
        r13 = r3;	 Catch:{ IOException -> 0x0250 }
        goto L_0x0091;	 Catch:{ IOException -> 0x0250 }
    L_0x006e:
        r13 = new android.support.media.ExifInterface$ByteOrderedDataInputStream;	 Catch:{ IOException -> 0x0250 }
        r13.<init>(r4);	 Catch:{ IOException -> 0x0250 }
        r4 = readByteOrder(r13);	 Catch:{ IOException -> 0x0250 }
        r12.mExifByteOrder = r4;	 Catch:{ IOException -> 0x0250 }
        r4 = r12.mExifByteOrder;	 Catch:{ IOException -> 0x0250 }
        r13.setByteOrder(r4);	 Catch:{ IOException -> 0x0250 }
        r4 = r13.readShort();	 Catch:{ IOException -> 0x0250 }
        r13.close();	 Catch:{ IOException -> 0x0250 }
        r13 = 85;	 Catch:{ IOException -> 0x0250 }
        if (r4 != r13) goto L_0x008b;	 Catch:{ IOException -> 0x0250 }
    L_0x0089:
        r13 = r6;	 Catch:{ IOException -> 0x0250 }
        goto L_0x008c;	 Catch:{ IOException -> 0x0250 }
    L_0x008b:
        r13 = r0;	 Catch:{ IOException -> 0x0250 }
    L_0x008c:
        if (r13 == 0) goto L_0x0090;	 Catch:{ IOException -> 0x0250 }
    L_0x008e:
        r13 = r2;	 Catch:{ IOException -> 0x0250 }
        goto L_0x0091;	 Catch:{ IOException -> 0x0250 }
    L_0x0090:
        r13 = r0;	 Catch:{ IOException -> 0x0250 }
    L_0x0091:
        r12.mMimeType = r13;	 Catch:{ IOException -> 0x0250 }
        r13 = new android.support.media.ExifInterface$ByteOrderedDataInputStream;	 Catch:{ IOException -> 0x0250 }
        r13.<init>(r1);	 Catch:{ IOException -> 0x0250 }
        r1 = r12.mMimeType;	 Catch:{ IOException -> 0x0250 }
        r4 = 3;	 Catch:{ IOException -> 0x0250 }
        r7 = 5;	 Catch:{ IOException -> 0x0250 }
        r8 = 6;	 Catch:{ IOException -> 0x0250 }
        switch(r1) {
            case 0: goto L_0x01d4;
            case 1: goto L_0x01d4;
            case 2: goto L_0x01d4;
            case 3: goto L_0x01d4;
            case 4: goto L_0x01d0;
            case 5: goto L_0x01d4;
            case 6: goto L_0x01d4;
            case 7: goto L_0x00e4;
            case 8: goto L_0x01d4;
            case 9: goto L_0x00df;
            case 10: goto L_0x00a2;
            case 11: goto L_0x01d4;
            default: goto L_0x00a0;
        };	 Catch:{ IOException -> 0x0250 }
    L_0x00a0:
        goto L_0x01d7;	 Catch:{ IOException -> 0x0250 }
    L_0x00a2:
        r12.getRawAttributes(r13);	 Catch:{ IOException -> 0x0250 }
        r1 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r1 = r1[r0];	 Catch:{ IOException -> 0x0250 }
        r2 = "JpgFromRaw";	 Catch:{ IOException -> 0x0250 }
        r1 = r1.get(r2);	 Catch:{ IOException -> 0x0250 }
        r1 = (android.support.media.ExifInterface.ExifAttribute) r1;	 Catch:{ IOException -> 0x0250 }
        if (r1 == 0) goto L_0x00b8;	 Catch:{ IOException -> 0x0250 }
    L_0x00b3:
        r1 = r12.mRw2JpgFromRawOffset;	 Catch:{ IOException -> 0x0250 }
        r12.getJpegAttributes(r13, r1, r7);	 Catch:{ IOException -> 0x0250 }
    L_0x00b8:
        r1 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r1 = r1[r0];	 Catch:{ IOException -> 0x0250 }
        r2 = "ISO";	 Catch:{ IOException -> 0x0250 }
        r1 = r1.get(r2);	 Catch:{ IOException -> 0x0250 }
        r1 = (android.support.media.ExifInterface.ExifAttribute) r1;	 Catch:{ IOException -> 0x0250 }
        r2 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r2 = r2[r6];	 Catch:{ IOException -> 0x0250 }
        r3 = "ISOSpeedRatings";	 Catch:{ IOException -> 0x0250 }
        r2 = r2.get(r3);	 Catch:{ IOException -> 0x0250 }
        r2 = (android.support.media.ExifInterface.ExifAttribute) r2;	 Catch:{ IOException -> 0x0250 }
        if (r1 == 0) goto L_0x01d7;	 Catch:{ IOException -> 0x0250 }
    L_0x00d2:
        if (r2 != 0) goto L_0x01d7;	 Catch:{ IOException -> 0x0250 }
    L_0x00d4:
        r2 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r2 = r2[r6];	 Catch:{ IOException -> 0x0250 }
        r3 = "ISOSpeedRatings";	 Catch:{ IOException -> 0x0250 }
        r2.put(r3, r1);	 Catch:{ IOException -> 0x0250 }
        goto L_0x01d7;	 Catch:{ IOException -> 0x0250 }
    L_0x00df:
        r12.getRafAttributes(r13);	 Catch:{ IOException -> 0x0250 }
        goto L_0x01d7;	 Catch:{ IOException -> 0x0250 }
    L_0x00e4:
        r12.getRawAttributes(r13);	 Catch:{ IOException -> 0x0250 }
        r1 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r1 = r1[r6];	 Catch:{ IOException -> 0x0250 }
        r9 = "MakerNote";	 Catch:{ IOException -> 0x0250 }
        r1 = r1.get(r9);	 Catch:{ IOException -> 0x0250 }
        r1 = (android.support.media.ExifInterface.ExifAttribute) r1;	 Catch:{ IOException -> 0x0250 }
        if (r1 == 0) goto L_0x01d7;	 Catch:{ IOException -> 0x0250 }
    L_0x00f5:
        r9 = new android.support.media.ExifInterface$ByteOrderedDataInputStream;	 Catch:{ IOException -> 0x0250 }
        r1 = r1.bytes;	 Catch:{ IOException -> 0x0250 }
        r9.<init>(r1);	 Catch:{ IOException -> 0x0250 }
        r1 = r12.mExifByteOrder;	 Catch:{ IOException -> 0x0250 }
        r9.setByteOrder(r1);	 Catch:{ IOException -> 0x0250 }
        r1 = new byte[r8];	 Catch:{ IOException -> 0x0250 }
        r9.readFully(r1);	 Catch:{ IOException -> 0x0250 }
        r10 = 0;	 Catch:{ IOException -> 0x0250 }
        r9.seek(r10);	 Catch:{ IOException -> 0x0250 }
        r2 = new byte[r2];	 Catch:{ IOException -> 0x0250 }
        r9.readFully(r2);	 Catch:{ IOException -> 0x0250 }
        r10 = ORF_MAKER_NOTE_HEADER_1;	 Catch:{ IOException -> 0x0250 }
        r1 = java.util.Arrays.equals(r1, r10);	 Catch:{ IOException -> 0x0250 }
        if (r1 == 0) goto L_0x011e;	 Catch:{ IOException -> 0x0250 }
    L_0x0118:
        r1 = 8;	 Catch:{ IOException -> 0x0250 }
        r9.seek(r1);	 Catch:{ IOException -> 0x0250 }
        goto L_0x012b;	 Catch:{ IOException -> 0x0250 }
    L_0x011e:
        r1 = ORF_MAKER_NOTE_HEADER_2;	 Catch:{ IOException -> 0x0250 }
        r1 = java.util.Arrays.equals(r2, r1);	 Catch:{ IOException -> 0x0250 }
        if (r1 == 0) goto L_0x012b;	 Catch:{ IOException -> 0x0250 }
    L_0x0126:
        r1 = 12;	 Catch:{ IOException -> 0x0250 }
        r9.seek(r1);	 Catch:{ IOException -> 0x0250 }
    L_0x012b:
        r12.readImageFileDirectory(r9, r8);	 Catch:{ IOException -> 0x0250 }
        r1 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r1 = r1[r3];	 Catch:{ IOException -> 0x0250 }
        r2 = "PreviewImageStart";	 Catch:{ IOException -> 0x0250 }
        r1 = r1.get(r2);	 Catch:{ IOException -> 0x0250 }
        r1 = (android.support.media.ExifInterface.ExifAttribute) r1;	 Catch:{ IOException -> 0x0250 }
        r2 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r2 = r2[r3];	 Catch:{ IOException -> 0x0250 }
        r3 = "PreviewImageLength";	 Catch:{ IOException -> 0x0250 }
        r2 = r2.get(r3);	 Catch:{ IOException -> 0x0250 }
        r2 = (android.support.media.ExifInterface.ExifAttribute) r2;	 Catch:{ IOException -> 0x0250 }
        if (r1 == 0) goto L_0x015c;	 Catch:{ IOException -> 0x0250 }
    L_0x0148:
        if (r2 == 0) goto L_0x015c;	 Catch:{ IOException -> 0x0250 }
    L_0x014a:
        r3 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r3 = r3[r7];	 Catch:{ IOException -> 0x0250 }
        r9 = "JPEGInterchangeFormat";	 Catch:{ IOException -> 0x0250 }
        r3.put(r9, r1);	 Catch:{ IOException -> 0x0250 }
        r1 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r1 = r1[r7];	 Catch:{ IOException -> 0x0250 }
        r3 = "JPEGInterchangeFormatLength";	 Catch:{ IOException -> 0x0250 }
        r1.put(r3, r2);	 Catch:{ IOException -> 0x0250 }
    L_0x015c:
        r1 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r2 = 8;	 Catch:{ IOException -> 0x0250 }
        r1 = r1[r2];	 Catch:{ IOException -> 0x0250 }
        r2 = "AspectFrame";	 Catch:{ IOException -> 0x0250 }
        r1 = r1.get(r2);	 Catch:{ IOException -> 0x0250 }
        r1 = (android.support.media.ExifInterface.ExifAttribute) r1;	 Catch:{ IOException -> 0x0250 }
        if (r1 == 0) goto L_0x01d7;	 Catch:{ IOException -> 0x0250 }
    L_0x016c:
        r2 = r12.mExifByteOrder;	 Catch:{ IOException -> 0x0250 }
        r1 = r1.getValue(r2);	 Catch:{ IOException -> 0x0250 }
        r1 = (int[]) r1;	 Catch:{ IOException -> 0x0250 }
        if (r1 == 0) goto L_0x01b8;	 Catch:{ IOException -> 0x0250 }
    L_0x0176:
        r2 = r1.length;	 Catch:{ IOException -> 0x0250 }
        if (r2 == r5) goto L_0x017a;	 Catch:{ IOException -> 0x0250 }
    L_0x0179:
        goto L_0x01b8;	 Catch:{ IOException -> 0x0250 }
    L_0x017a:
        r2 = 2;	 Catch:{ IOException -> 0x0250 }
        r3 = r1[r2];	 Catch:{ IOException -> 0x0250 }
        r7 = r1[r0];	 Catch:{ IOException -> 0x0250 }
        if (r3 <= r7) goto L_0x01d7;	 Catch:{ IOException -> 0x0250 }
    L_0x0181:
        r3 = r1[r4];	 Catch:{ IOException -> 0x0250 }
        r7 = r1[r6];	 Catch:{ IOException -> 0x0250 }
        if (r3 <= r7) goto L_0x01d7;	 Catch:{ IOException -> 0x0250 }
    L_0x0187:
        r2 = r1[r2];	 Catch:{ IOException -> 0x0250 }
        r3 = r1[r0];	 Catch:{ IOException -> 0x0250 }
        r2 = r2 - r3;	 Catch:{ IOException -> 0x0250 }
        r2 = r2 + r6;	 Catch:{ IOException -> 0x0250 }
        r3 = r1[r4];	 Catch:{ IOException -> 0x0250 }
        r1 = r1[r6];	 Catch:{ IOException -> 0x0250 }
        r3 = r3 - r1;	 Catch:{ IOException -> 0x0250 }
        r3 = r3 + r6;	 Catch:{ IOException -> 0x0250 }
        if (r2 >= r3) goto L_0x0199;	 Catch:{ IOException -> 0x0250 }
    L_0x0195:
        r2 = r2 + r3;	 Catch:{ IOException -> 0x0250 }
        r3 = r2 - r3;	 Catch:{ IOException -> 0x0250 }
        r2 = r2 - r3;	 Catch:{ IOException -> 0x0250 }
    L_0x0199:
        r1 = r12.mExifByteOrder;	 Catch:{ IOException -> 0x0250 }
        r1 = android.support.media.ExifInterface.ExifAttribute.createUShort(r2, r1);	 Catch:{ IOException -> 0x0250 }
        r2 = r12.mExifByteOrder;	 Catch:{ IOException -> 0x0250 }
        r2 = android.support.media.ExifInterface.ExifAttribute.createUShort(r3, r2);	 Catch:{ IOException -> 0x0250 }
        r3 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r3 = r3[r0];	 Catch:{ IOException -> 0x0250 }
        r7 = "ImageWidth";	 Catch:{ IOException -> 0x0250 }
        r3.put(r7, r1);	 Catch:{ IOException -> 0x0250 }
        r1 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r1 = r1[r0];	 Catch:{ IOException -> 0x0250 }
        r3 = "ImageLength";	 Catch:{ IOException -> 0x0250 }
        r1.put(r3, r2);	 Catch:{ IOException -> 0x0250 }
        goto L_0x01d7;	 Catch:{ IOException -> 0x0250 }
    L_0x01b8:
        r2 = "ExifInterface";	 Catch:{ IOException -> 0x0250 }
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0250 }
        r7 = "Invalid aspect frame values. frame=";	 Catch:{ IOException -> 0x0250 }
        r3.<init>(r7);	 Catch:{ IOException -> 0x0250 }
        r1 = java.util.Arrays.toString(r1);	 Catch:{ IOException -> 0x0250 }
        r3.append(r1);	 Catch:{ IOException -> 0x0250 }
        r1 = r3.toString();	 Catch:{ IOException -> 0x0250 }
        android.util.Log.w(r2, r1);	 Catch:{ IOException -> 0x0250 }
        goto L_0x01d7;	 Catch:{ IOException -> 0x0250 }
    L_0x01d0:
        r12.getJpegAttributes(r13, r0, r0);	 Catch:{ IOException -> 0x0250 }
        goto L_0x01d7;	 Catch:{ IOException -> 0x0250 }
    L_0x01d4:
        r12.getRawAttributes(r13);	 Catch:{ IOException -> 0x0250 }
    L_0x01d7:
        r1 = r12.mAttributes;	 Catch:{ IOException -> 0x0250 }
        r1 = r1[r5];	 Catch:{ IOException -> 0x0250 }
        r2 = "Compression";	 Catch:{ IOException -> 0x0250 }
        r2 = r1.get(r2);	 Catch:{ IOException -> 0x0250 }
        r2 = (android.support.media.ExifInterface.ExifAttribute) r2;	 Catch:{ IOException -> 0x0250 }
        if (r2 == 0) goto L_0x0245;	 Catch:{ IOException -> 0x0250 }
    L_0x01e5:
        r3 = r12.mExifByteOrder;	 Catch:{ IOException -> 0x0250 }
        r2 = r2.getIntValue(r3);	 Catch:{ IOException -> 0x0250 }
        r12.mThumbnailCompression = r2;	 Catch:{ IOException -> 0x0250 }
        r2 = r12.mThumbnailCompression;	 Catch:{ IOException -> 0x0250 }
        if (r2 == r6) goto L_0x01f9;	 Catch:{ IOException -> 0x0250 }
    L_0x01f1:
        switch(r2) {
            case 6: goto L_0x01f5;
            case 7: goto L_0x01f9;
            default: goto L_0x01f4;
        };	 Catch:{ IOException -> 0x0250 }
    L_0x01f4:
        goto L_0x024a;	 Catch:{ IOException -> 0x0250 }
    L_0x01f5:
        r12.handleThumbnailFromJfif(r13, r1);	 Catch:{ IOException -> 0x0250 }
        goto L_0x024a;	 Catch:{ IOException -> 0x0250 }
    L_0x01f9:
        r2 = "BitsPerSample";	 Catch:{ IOException -> 0x0250 }
        r2 = r1.get(r2);	 Catch:{ IOException -> 0x0250 }
        r2 = (android.support.media.ExifInterface.ExifAttribute) r2;	 Catch:{ IOException -> 0x0250 }
        if (r2 == 0) goto L_0x023e;	 Catch:{ IOException -> 0x0250 }
    L_0x0203:
        r3 = r12.mExifByteOrder;	 Catch:{ IOException -> 0x0250 }
        r2 = r2.getValue(r3);	 Catch:{ IOException -> 0x0250 }
        r2 = (int[]) r2;	 Catch:{ IOException -> 0x0250 }
        r3 = BITS_PER_SAMPLE_RGB;	 Catch:{ IOException -> 0x0250 }
        r3 = java.util.Arrays.equals(r3, r2);	 Catch:{ IOException -> 0x0250 }
        if (r3 == 0) goto L_0x0215;	 Catch:{ IOException -> 0x0250 }
    L_0x0213:
        r2 = r6;	 Catch:{ IOException -> 0x0250 }
        goto L_0x023f;	 Catch:{ IOException -> 0x0250 }
    L_0x0215:
        r3 = r12.mMimeType;	 Catch:{ IOException -> 0x0250 }
        if (r3 != r4) goto L_0x023e;	 Catch:{ IOException -> 0x0250 }
    L_0x0219:
        r3 = "PhotometricInterpretation";	 Catch:{ IOException -> 0x0250 }
        r3 = r1.get(r3);	 Catch:{ IOException -> 0x0250 }
        r3 = (android.support.media.ExifInterface.ExifAttribute) r3;	 Catch:{ IOException -> 0x0250 }
        if (r3 == 0) goto L_0x023e;	 Catch:{ IOException -> 0x0250 }
    L_0x0223:
        r4 = r12.mExifByteOrder;	 Catch:{ IOException -> 0x0250 }
        r3 = r3.getIntValue(r4);	 Catch:{ IOException -> 0x0250 }
        if (r3 != r6) goto L_0x0233;	 Catch:{ IOException -> 0x0250 }
    L_0x022b:
        r4 = BITS_PER_SAMPLE_GREYSCALE_2;	 Catch:{ IOException -> 0x0250 }
        r4 = java.util.Arrays.equals(r2, r4);	 Catch:{ IOException -> 0x0250 }
        if (r4 != 0) goto L_0x0213;	 Catch:{ IOException -> 0x0250 }
    L_0x0233:
        if (r3 != r8) goto L_0x023e;	 Catch:{ IOException -> 0x0250 }
    L_0x0235:
        r3 = BITS_PER_SAMPLE_RGB;	 Catch:{ IOException -> 0x0250 }
        r2 = java.util.Arrays.equals(r2, r3);	 Catch:{ IOException -> 0x0250 }
        if (r2 == 0) goto L_0x023e;	 Catch:{ IOException -> 0x0250 }
    L_0x023d:
        goto L_0x0213;	 Catch:{ IOException -> 0x0250 }
    L_0x023e:
        r2 = r0;	 Catch:{ IOException -> 0x0250 }
    L_0x023f:
        if (r2 == 0) goto L_0x024a;	 Catch:{ IOException -> 0x0250 }
    L_0x0241:
        r12.handleThumbnailFromStrips(r13, r1);	 Catch:{ IOException -> 0x0250 }
        goto L_0x024a;	 Catch:{ IOException -> 0x0250 }
    L_0x0245:
        r12.mThumbnailCompression = r8;	 Catch:{ IOException -> 0x0250 }
        r12.handleThumbnailFromJfif(r13, r1);	 Catch:{ IOException -> 0x0250 }
    L_0x024a:
        r12.mIsSupportedFile = r6;	 Catch:{ IOException -> 0x0250 }
        r12.addDefaultValuesForCompatibility();
        return;
    L_0x0250:
        r12.mIsSupportedFile = r0;	 Catch:{ all -> 0x0012 }
        r12.addDefaultValuesForCompatibility();
        return;
    L_0x0256:
        r12.addDefaultValuesForCompatibility();
        throw r13;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.media.ExifInterface.loadAttributes(java.io.InputStream):void");
    }

    private static boolean isJpegFormat(byte[] bArr) throws IOException {
        for (int i = 0; i < 3; i++) {
            if (bArr[i] != JPEG_SIGNATURE[i]) {
                return false;
            }
        }
        return 1;
    }

    private static boolean isRafFormat(byte[] bArr) throws IOException {
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        for (int i = 0; i < bytes.length; i++) {
            if (bArr[i] != bytes[i]) {
                return false;
            }
        }
        return 1;
    }

    private void getJpegAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream, int i, int i2) throws IOException {
        byteOrderedDataInputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        byteOrderedDataInputStream.seek((long) i);
        byte readByte = byteOrderedDataInputStream.readByte();
        if (readByte != (byte) -1) {
            i = new StringBuilder("Invalid marker: ");
            i.append(Integer.toHexString(readByte & 255));
            throw new IOException(i.toString());
        }
        i++;
        if (byteOrderedDataInputStream.readByte() != (byte) -40) {
            i = new StringBuilder("Invalid marker: ");
            i.append(Integer.toHexString(readByte & 255));
            throw new IOException(i.toString());
        }
        i++;
        while (true) {
            readByte = byteOrderedDataInputStream.readByte();
            if (readByte != (byte) -1) {
                i = new StringBuilder("Invalid marker:");
                i.append(Integer.toHexString(readByte & 255));
                throw new IOException(i.toString());
            }
            i++;
            readByte = byteOrderedDataInputStream.readByte();
            i++;
            if (readByte == (byte) -39 || readByte == (byte) -38) {
                byteOrderedDataInputStream.setByteOrder(this.mExifByteOrder);
                return;
            }
            int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort() - 2;
            i += 2;
            if (readUnsignedShort < 0) {
                throw new IOException("Invalid length");
            }
            byte[] bArr;
            if (readByte == (byte) -31) {
                if (readUnsignedShort >= 6) {
                    byte[] bArr2 = new byte[6];
                    if (byteOrderedDataInputStream.read(bArr2) != 6) {
                        throw new IOException("Invalid exif");
                    }
                    i += 6;
                    readUnsignedShort -= 6;
                    if (Arrays.equals(bArr2, IDENTIFIER_EXIF_APP1)) {
                        if (readUnsignedShort <= 0) {
                            throw new IOException("Invalid exif");
                        }
                        this.mExifOffset = i;
                        bArr = new byte[readUnsignedShort];
                        if (byteOrderedDataInputStream.read(bArr) != readUnsignedShort) {
                            throw new IOException("Invalid exif");
                        }
                        i += readUnsignedShort;
                        ByteOrderedDataInputStream byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(bArr);
                        parseTiffHeaders(byteOrderedDataInputStream2, bArr.length);
                        readImageFileDirectory(byteOrderedDataInputStream2, i2);
                    }
                }
                if (readUnsignedShort >= 0) {
                    throw new IOException("Invalid length");
                } else if (byteOrderedDataInputStream.skipBytes(readUnsignedShort) != readUnsignedShort) {
                    i += readUnsignedShort;
                } else {
                    throw new IOException("Invalid JPEG segment");
                }
            } else if (readByte != (byte) -2) {
                switch (readByte) {
                    case (byte) -64:
                    case (byte) -63:
                    case (byte) -62:
                    case (byte) -61:
                        if (byteOrderedDataInputStream.skipBytes(1) != 1) {
                            this.mAttributes[i2].put("ImageLength", ExifAttribute.createULong((long) byteOrderedDataInputStream.readUnsignedShort(), this.mExifByteOrder));
                            this.mAttributes[i2].put("ImageWidth", ExifAttribute.createULong((long) byteOrderedDataInputStream.readUnsignedShort(), this.mExifByteOrder));
                            readUnsignedShort -= 5;
                            break;
                        }
                        throw new IOException("Invalid SOFx");
                    default:
                        switch (readByte) {
                            case (byte) -59:
                            case (byte) -58:
                            case (byte) -57:
                                break;
                            default:
                                switch (readByte) {
                                    case (byte) -55:
                                    case (byte) -54:
                                    case (byte) -53:
                                        break;
                                    default:
                                        switch (readByte) {
                                            case (byte) -51:
                                            case (byte) -50:
                                            case (byte) -49:
                                                break;
                                            default:
                                                break;
                                        }
                                }
                        }
                        if (byteOrderedDataInputStream.skipBytes(1) != 1) {
                            this.mAttributes[i2].put("ImageLength", ExifAttribute.createULong((long) byteOrderedDataInputStream.readUnsignedShort(), this.mExifByteOrder));
                            this.mAttributes[i2].put("ImageWidth", ExifAttribute.createULong((long) byteOrderedDataInputStream.readUnsignedShort(), this.mExifByteOrder));
                            readUnsignedShort -= 5;
                            break;
                        }
                        throw new IOException("Invalid SOFx");
                }
                if (readUnsignedShort >= 0) {
                    throw new IOException("Invalid length");
                } else if (byteOrderedDataInputStream.skipBytes(readUnsignedShort) != readUnsignedShort) {
                    throw new IOException("Invalid JPEG segment");
                } else {
                    i += readUnsignedShort;
                }
            } else {
                bArr = new byte[readUnsignedShort];
                if (byteOrderedDataInputStream.read(bArr) != readUnsignedShort) {
                    throw new IOException("Invalid exif");
                } else if (getAttribute("UserComment") == null) {
                    this.mAttributes[1].put("UserComment", ExifAttribute.createString(new String(bArr, ASCII)));
                }
            }
            readUnsignedShort = 0;
            if (readUnsignedShort >= 0) {
                throw new IOException("Invalid length");
            } else if (byteOrderedDataInputStream.skipBytes(readUnsignedShort) != readUnsignedShort) {
                throw new IOException("Invalid JPEG segment");
            } else {
                i += readUnsignedShort;
            }
        }
    }

    private void getRawAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        parseTiffHeaders(byteOrderedDataInputStream, byteOrderedDataInputStream.available());
        readImageFileDirectory(byteOrderedDataInputStream, 0);
        updateImageSizeValues(byteOrderedDataInputStream, 0);
        updateImageSizeValues(byteOrderedDataInputStream, 5);
        updateImageSizeValues(byteOrderedDataInputStream, 4);
        validateImages$71225a3e();
        if (this.mMimeType == 8) {
            ExifAttribute exifAttribute = (ExifAttribute) this.mAttributes[1].get("MakerNote");
            if (exifAttribute != null) {
                ByteOrderedDataInputStream byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(exifAttribute.bytes);
                byteOrderedDataInputStream2.setByteOrder(this.mExifByteOrder);
                byteOrderedDataInputStream2.seek(6);
                readImageFileDirectory(byteOrderedDataInputStream2, 9);
                exifAttribute = (ExifAttribute) this.mAttributes[9].get("ColorSpace");
                if (exifAttribute != null) {
                    this.mAttributes[1].put("ColorSpace", exifAttribute);
                }
            }
        }
    }

    private void getRafAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        byteOrderedDataInputStream.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byteOrderedDataInputStream.read(bArr);
        byteOrderedDataInputStream.skipBytes(4);
        byteOrderedDataInputStream.read(bArr2);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        getJpegAttributes(byteOrderedDataInputStream, i, 5);
        byteOrderedDataInputStream.seek((long) i2);
        byteOrderedDataInputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        i = byteOrderedDataInputStream.readInt();
        for (int i3 = 0; i3 < i; i3++) {
            int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
            int readUnsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
            if (readUnsignedShort == TAG_RAF_IMAGE_SIZE.number) {
                short readShort = byteOrderedDataInputStream.readShort();
                byteOrderedDataInputStream = byteOrderedDataInputStream.readShort();
                ExifAttribute createUShort = ExifAttribute.createUShort(readShort, this.mExifByteOrder);
                byteOrderedDataInputStream = ExifAttribute.createUShort(byteOrderedDataInputStream, this.mExifByteOrder);
                this.mAttributes[0].put("ImageLength", createUShort);
                this.mAttributes[0].put("ImageWidth", byteOrderedDataInputStream);
                return;
            }
            byteOrderedDataInputStream.skipBytes(readUnsignedShort2);
        }
    }

    private void addDefaultValuesForCompatibility() {
        String attribute = getAttribute("DateTimeOriginal");
        if (attribute != null && getAttribute("DateTime") == null) {
            this.mAttributes[0].put("DateTime", ExifAttribute.createString(attribute));
        }
        if (getAttribute("ImageWidth") == null) {
            this.mAttributes[0].put("ImageWidth", ExifAttribute.createULong(0, this.mExifByteOrder));
        }
        if (getAttribute("ImageLength") == null) {
            this.mAttributes[0].put("ImageLength", ExifAttribute.createULong(0, this.mExifByteOrder));
        }
        if (getAttribute("Orientation") == null) {
            this.mAttributes[0].put("Orientation", ExifAttribute.createULong(0, this.mExifByteOrder));
        }
        if (getAttribute("LightSource") == null) {
            this.mAttributes[1].put("LightSource", ExifAttribute.createULong(0, this.mExifByteOrder));
        }
    }

    private static ByteOrder readByteOrder(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        byteOrderedDataInputStream = byteOrderedDataInputStream.readShort();
        if (byteOrderedDataInputStream == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (byteOrderedDataInputStream == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        StringBuilder stringBuilder = new StringBuilder("Invalid byte order: ");
        stringBuilder.append(Integer.toHexString(byteOrderedDataInputStream));
        throw new IOException(stringBuilder.toString());
    }

    private void parseTiffHeaders(ByteOrderedDataInputStream byteOrderedDataInputStream, int i) throws IOException {
        this.mExifByteOrder = readByteOrder(byteOrderedDataInputStream);
        byteOrderedDataInputStream.setByteOrder(this.mExifByteOrder);
        int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
        if (this.mMimeType == 7 || this.mMimeType == 10 || readUnsignedShort == 42) {
            readUnsignedShort = byteOrderedDataInputStream.readInt();
            if (readUnsignedShort >= 8) {
                if (readUnsignedShort < i) {
                    readUnsignedShort -= 8;
                    if (readUnsignedShort > 0 && byteOrderedDataInputStream.skipBytes(readUnsignedShort) != readUnsignedShort) {
                        throw new IOException("Couldn't jump to first Ifd: ".concat(String.valueOf(readUnsignedShort)));
                    }
                    return;
                }
            }
            throw new IOException("Invalid first Ifd offset: ".concat(String.valueOf(readUnsignedShort)));
        }
        i = new StringBuilder("Invalid start code: ");
        i.append(Integer.toHexString(readUnsignedShort));
        throw new IOException(i.toString());
    }

    private void readImageFileDirectory(ByteOrderedDataInputStream byteOrderedDataInputStream, int i) throws IOException {
        ExifInterface exifInterface = this;
        ByteOrderedDataInputStream byteOrderedDataInputStream2 = byteOrderedDataInputStream;
        int i2 = 4;
        int i3 = i;
        while (byteOrderedDataInputStream.mPosition + 2 <= byteOrderedDataInputStream.mLength) {
            short readShort = byteOrderedDataInputStream.readShort();
            if (byteOrderedDataInputStream.mPosition + (readShort * 12) <= byteOrderedDataInputStream.mLength) {
                short s = (short) 0;
                while (s < readShort) {
                    int i4;
                    short s2;
                    long j;
                    Object obj;
                    int i5;
                    int i6;
                    int i7;
                    int i8;
                    long j2;
                    ExifTag exifTag;
                    Integer num;
                    byte[] bArr;
                    ExifAttribute exifAttribute;
                    int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
                    int readUnsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
                    int readInt = byteOrderedDataInputStream.readInt();
                    long peek = (long) (byteOrderedDataInputStream.peek() + i2);
                    ExifTag exifTag2 = (ExifTag) sExifTagMapsForReading[i3].get(Integer.valueOf(readUnsignedShort));
                    if (exifTag2 == null) {
                        Log.w("ExifInterface", "Skip the tag entry since tag number is not defined: ".concat(String.valueOf(readUnsignedShort)));
                    } else {
                        if (readUnsignedShort2 > 0) {
                            if (readUnsignedShort2 < 14) {
                                if (ExifTag.access$900(exifTag2, readUnsignedShort2)) {
                                    if (readUnsignedShort2 == 7) {
                                        readUnsignedShort2 = exifTag2.primaryFormat;
                                    }
                                    i4 = i3;
                                    s2 = readShort;
                                    j = ((long) readInt) * ((long) IFD_FORMAT_BYTES_PER_FORMAT[readUnsignedShort2]);
                                    if (j >= 0) {
                                        if (j <= 2147483647L) {
                                            obj = 1;
                                            if (obj != null) {
                                                byteOrderedDataInputStream2.seek(peek);
                                                i5 = s;
                                                i6 = i4;
                                            } else {
                                                if (j <= 4) {
                                                    i3 = byteOrderedDataInputStream.readInt();
                                                    if (exifInterface.mMimeType != 7) {
                                                        i5 = s;
                                                        i7 = readUnsignedShort2;
                                                        i8 = readInt;
                                                        i6 = i4;
                                                        if (exifInterface.mMimeType == 10 && "JpgFromRaw".equals(exifTag2.name)) {
                                                            exifInterface.mRw2JpgFromRawOffset = i3;
                                                        }
                                                    } else if ("MakerNote".equals(exifTag2.name)) {
                                                        i6 = i4;
                                                        if (i6 == 6 || !"ThumbnailImage".equals(exifTag2.name)) {
                                                            i5 = s;
                                                            i7 = readUnsignedShort2;
                                                            i8 = readInt;
                                                        } else {
                                                            exifInterface.mOrfThumbnailOffset = i3;
                                                            exifInterface.mOrfThumbnailLength = readInt;
                                                            ExifAttribute createUShort = ExifAttribute.createUShort(6, exifInterface.mExifByteOrder);
                                                            i5 = s;
                                                            ExifAttribute createULong = ExifAttribute.createULong((long) exifInterface.mOrfThumbnailOffset, exifInterface.mExifByteOrder);
                                                            i7 = readUnsignedShort2;
                                                            i8 = readInt;
                                                            ExifAttribute createULong2 = ExifAttribute.createULong((long) exifInterface.mOrfThumbnailLength, exifInterface.mExifByteOrder);
                                                            exifInterface.mAttributes[4].put("Compression", createUShort);
                                                            exifInterface.mAttributes[4].put("JPEGInterchangeFormat", createULong);
                                                            exifInterface.mAttributes[4].put("JPEGInterchangeFormatLength", createULong2);
                                                        }
                                                    } else {
                                                        exifInterface.mOrfMakerNoteOffset = i3;
                                                        i5 = s;
                                                        i7 = readUnsignedShort2;
                                                        i8 = readInt;
                                                        i6 = i4;
                                                    }
                                                    j2 = (long) i3;
                                                    exifTag = exifTag2;
                                                    if (j2 + j > ((long) byteOrderedDataInputStream.mLength)) {
                                                        byteOrderedDataInputStream2.seek(j2);
                                                    } else {
                                                        Log.w("ExifInterface", "Skip the tag entry since data offset is invalid: ".concat(String.valueOf(i3)));
                                                        byteOrderedDataInputStream2.seek(peek);
                                                    }
                                                } else {
                                                    i5 = s;
                                                    i7 = readUnsignedShort2;
                                                    i8 = readInt;
                                                    exifTag = exifTag2;
                                                    i6 = i4;
                                                }
                                                num = (Integer) sExifPointerTagMap.get(Integer.valueOf(readUnsignedShort));
                                                if (num == null) {
                                                    j = -1;
                                                    switch (i7) {
                                                        case 3:
                                                            j = (long) byteOrderedDataInputStream.readUnsignedShort();
                                                            break;
                                                        case 4:
                                                            j = ((long) byteOrderedDataInputStream.readInt()) & 4294967295L;
                                                            break;
                                                        case 8:
                                                            j = (long) byteOrderedDataInputStream.readShort();
                                                            break;
                                                        case 9:
                                                        case 13:
                                                            j = (long) byteOrderedDataInputStream.readInt();
                                                            break;
                                                        default:
                                                            break;
                                                    }
                                                    if (j > 0 || j >= ((long) byteOrderedDataInputStream.mLength)) {
                                                        Log.w("ExifInterface", "Skip jump into the IFD since its offset is invalid: ".concat(String.valueOf(j)));
                                                    } else {
                                                        byteOrderedDataInputStream2.seek(j);
                                                        readImageFileDirectory(byteOrderedDataInputStream2, num.intValue());
                                                    }
                                                    byteOrderedDataInputStream2.seek(peek);
                                                } else {
                                                    bArr = new byte[((int) j)];
                                                    byteOrderedDataInputStream2.readFully(bArr);
                                                    exifAttribute = new ExifAttribute(i7, i8, bArr);
                                                    exifTag2 = exifTag;
                                                    exifInterface.mAttributes[i6].put(exifTag2.name, exifAttribute);
                                                    if ("DNGVersion".equals(exifTag2.name)) {
                                                        exifInterface.mMimeType = 3;
                                                    }
                                                    if ((("Make".equals(exifTag2.name) || "Model".equals(exifTag2.name)) && exifAttribute.getStringValue(exifInterface.mExifByteOrder).contains("PENTAX")) || ("Compression".equals(exifTag2.name) && exifAttribute.getIntValue(exifInterface.mExifByteOrder) == ChatFragment.TYPE_MESSAGE_TYPING)) {
                                                        exifInterface.mMimeType = 8;
                                                    }
                                                    if (((long) byteOrderedDataInputStream.peek()) == peek) {
                                                        byteOrderedDataInputStream2.seek(peek);
                                                    }
                                                    s = (short) (i5 + 1);
                                                    i3 = i6;
                                                    readShort = s2;
                                                    i2 = 4;
                                                }
                                            }
                                            s = (short) (i5 + 1);
                                            i3 = i6;
                                            readShort = s2;
                                            i2 = 4;
                                        }
                                    }
                                    Log.w("ExifInterface", "Skip the tag entry since the number of components is invalid: ".concat(String.valueOf(readInt)));
                                    obj = null;
                                    if (obj != null) {
                                        if (j <= 4) {
                                            i5 = s;
                                            i7 = readUnsignedShort2;
                                            i8 = readInt;
                                            exifTag = exifTag2;
                                            i6 = i4;
                                        } else {
                                            i3 = byteOrderedDataInputStream.readInt();
                                            if (exifInterface.mMimeType != 7) {
                                                i5 = s;
                                                i7 = readUnsignedShort2;
                                                i8 = readInt;
                                                i6 = i4;
                                                exifInterface.mRw2JpgFromRawOffset = i3;
                                            } else if ("MakerNote".equals(exifTag2.name)) {
                                                i6 = i4;
                                                if (i6 == 6) {
                                                }
                                                i5 = s;
                                                i7 = readUnsignedShort2;
                                                i8 = readInt;
                                            } else {
                                                exifInterface.mOrfMakerNoteOffset = i3;
                                                i5 = s;
                                                i7 = readUnsignedShort2;
                                                i8 = readInt;
                                                i6 = i4;
                                            }
                                            j2 = (long) i3;
                                            exifTag = exifTag2;
                                            if (j2 + j > ((long) byteOrderedDataInputStream.mLength)) {
                                                Log.w("ExifInterface", "Skip the tag entry since data offset is invalid: ".concat(String.valueOf(i3)));
                                                byteOrderedDataInputStream2.seek(peek);
                                            } else {
                                                byteOrderedDataInputStream2.seek(j2);
                                            }
                                        }
                                        num = (Integer) sExifPointerTagMap.get(Integer.valueOf(readUnsignedShort));
                                        if (num == null) {
                                            bArr = new byte[((int) j)];
                                            byteOrderedDataInputStream2.readFully(bArr);
                                            exifAttribute = new ExifAttribute(i7, i8, bArr);
                                            exifTag2 = exifTag;
                                            exifInterface.mAttributes[i6].put(exifTag2.name, exifAttribute);
                                            if ("DNGVersion".equals(exifTag2.name)) {
                                                exifInterface.mMimeType = 3;
                                            }
                                            exifInterface.mMimeType = 8;
                                            if (((long) byteOrderedDataInputStream.peek()) == peek) {
                                                byteOrderedDataInputStream2.seek(peek);
                                            }
                                            s = (short) (i5 + 1);
                                            i3 = i6;
                                            readShort = s2;
                                            i2 = 4;
                                        } else {
                                            j = -1;
                                            switch (i7) {
                                                case 3:
                                                    j = (long) byteOrderedDataInputStream.readUnsignedShort();
                                                    break;
                                                case 4:
                                                    j = ((long) byteOrderedDataInputStream.readInt()) & 4294967295L;
                                                    break;
                                                case 8:
                                                    j = (long) byteOrderedDataInputStream.readShort();
                                                    break;
                                                case 9:
                                                case 13:
                                                    j = (long) byteOrderedDataInputStream.readInt();
                                                    break;
                                                default:
                                                    break;
                                            }
                                            if (j > 0) {
                                            }
                                            Log.w("ExifInterface", "Skip jump into the IFD since its offset is invalid: ".concat(String.valueOf(j)));
                                            byteOrderedDataInputStream2.seek(peek);
                                        }
                                    } else {
                                        byteOrderedDataInputStream2.seek(peek);
                                        i5 = s;
                                        i6 = i4;
                                    }
                                    s = (short) (i5 + 1);
                                    i3 = i6;
                                    readShort = s2;
                                    i2 = 4;
                                } else {
                                    StringBuilder stringBuilder = new StringBuilder("Skip the tag entry since data format (");
                                    stringBuilder.append(IFD_FORMAT_NAMES[readUnsignedShort2]);
                                    stringBuilder.append(") is unexpected for tag: ");
                                    stringBuilder.append(exifTag2.name);
                                    Log.w("ExifInterface", stringBuilder.toString());
                                }
                            }
                        }
                        i4 = i3;
                        s2 = readShort;
                        Log.w("ExifInterface", "Skip the tag entry since data format is invalid: ".concat(String.valueOf(readUnsignedShort2)));
                        j = 0;
                        obj = null;
                        if (obj != null) {
                            byteOrderedDataInputStream2.seek(peek);
                            i5 = s;
                            i6 = i4;
                        } else {
                            if (j <= 4) {
                                i3 = byteOrderedDataInputStream.readInt();
                                if (exifInterface.mMimeType != 7) {
                                    i5 = s;
                                    i7 = readUnsignedShort2;
                                    i8 = readInt;
                                    i6 = i4;
                                    exifInterface.mRw2JpgFromRawOffset = i3;
                                } else if ("MakerNote".equals(exifTag2.name)) {
                                    exifInterface.mOrfMakerNoteOffset = i3;
                                    i5 = s;
                                    i7 = readUnsignedShort2;
                                    i8 = readInt;
                                    i6 = i4;
                                } else {
                                    i6 = i4;
                                    if (i6 == 6) {
                                    }
                                    i5 = s;
                                    i7 = readUnsignedShort2;
                                    i8 = readInt;
                                }
                                j2 = (long) i3;
                                exifTag = exifTag2;
                                if (j2 + j > ((long) byteOrderedDataInputStream.mLength)) {
                                    byteOrderedDataInputStream2.seek(j2);
                                } else {
                                    Log.w("ExifInterface", "Skip the tag entry since data offset is invalid: ".concat(String.valueOf(i3)));
                                    byteOrderedDataInputStream2.seek(peek);
                                }
                            } else {
                                i5 = s;
                                i7 = readUnsignedShort2;
                                i8 = readInt;
                                exifTag = exifTag2;
                                i6 = i4;
                            }
                            num = (Integer) sExifPointerTagMap.get(Integer.valueOf(readUnsignedShort));
                            if (num == null) {
                                j = -1;
                                switch (i7) {
                                    case 3:
                                        j = (long) byteOrderedDataInputStream.readUnsignedShort();
                                        break;
                                    case 4:
                                        j = ((long) byteOrderedDataInputStream.readInt()) & 4294967295L;
                                        break;
                                    case 8:
                                        j = (long) byteOrderedDataInputStream.readShort();
                                        break;
                                    case 9:
                                    case 13:
                                        j = (long) byteOrderedDataInputStream.readInt();
                                        break;
                                    default:
                                        break;
                                }
                                if (j > 0) {
                                }
                                Log.w("ExifInterface", "Skip jump into the IFD since its offset is invalid: ".concat(String.valueOf(j)));
                                byteOrderedDataInputStream2.seek(peek);
                            } else {
                                bArr = new byte[((int) j)];
                                byteOrderedDataInputStream2.readFully(bArr);
                                exifAttribute = new ExifAttribute(i7, i8, bArr);
                                exifTag2 = exifTag;
                                exifInterface.mAttributes[i6].put(exifTag2.name, exifAttribute);
                                if ("DNGVersion".equals(exifTag2.name)) {
                                    exifInterface.mMimeType = 3;
                                }
                                exifInterface.mMimeType = 8;
                                if (((long) byteOrderedDataInputStream.peek()) == peek) {
                                    byteOrderedDataInputStream2.seek(peek);
                                }
                                s = (short) (i5 + 1);
                                i3 = i6;
                                readShort = s2;
                                i2 = 4;
                            }
                        }
                        s = (short) (i5 + 1);
                        i3 = i6;
                        readShort = s2;
                        i2 = 4;
                    }
                    i4 = i3;
                    s2 = readShort;
                    j = 0;
                    obj = null;
                    if (obj != null) {
                        if (j <= 4) {
                            i5 = s;
                            i7 = readUnsignedShort2;
                            i8 = readInt;
                            exifTag = exifTag2;
                            i6 = i4;
                        } else {
                            i3 = byteOrderedDataInputStream.readInt();
                            if (exifInterface.mMimeType != 7) {
                                i5 = s;
                                i7 = readUnsignedShort2;
                                i8 = readInt;
                                i6 = i4;
                                exifInterface.mRw2JpgFromRawOffset = i3;
                            } else if ("MakerNote".equals(exifTag2.name)) {
                                i6 = i4;
                                if (i6 == 6) {
                                }
                                i5 = s;
                                i7 = readUnsignedShort2;
                                i8 = readInt;
                            } else {
                                exifInterface.mOrfMakerNoteOffset = i3;
                                i5 = s;
                                i7 = readUnsignedShort2;
                                i8 = readInt;
                                i6 = i4;
                            }
                            j2 = (long) i3;
                            exifTag = exifTag2;
                            if (j2 + j > ((long) byteOrderedDataInputStream.mLength)) {
                                Log.w("ExifInterface", "Skip the tag entry since data offset is invalid: ".concat(String.valueOf(i3)));
                                byteOrderedDataInputStream2.seek(peek);
                            } else {
                                byteOrderedDataInputStream2.seek(j2);
                            }
                        }
                        num = (Integer) sExifPointerTagMap.get(Integer.valueOf(readUnsignedShort));
                        if (num == null) {
                            bArr = new byte[((int) j)];
                            byteOrderedDataInputStream2.readFully(bArr);
                            exifAttribute = new ExifAttribute(i7, i8, bArr);
                            exifTag2 = exifTag;
                            exifInterface.mAttributes[i6].put(exifTag2.name, exifAttribute);
                            if ("DNGVersion".equals(exifTag2.name)) {
                                exifInterface.mMimeType = 3;
                            }
                            exifInterface.mMimeType = 8;
                            if (((long) byteOrderedDataInputStream.peek()) == peek) {
                                byteOrderedDataInputStream2.seek(peek);
                            }
                            s = (short) (i5 + 1);
                            i3 = i6;
                            readShort = s2;
                            i2 = 4;
                        } else {
                            j = -1;
                            switch (i7) {
                                case 3:
                                    j = (long) byteOrderedDataInputStream.readUnsignedShort();
                                    break;
                                case 4:
                                    j = ((long) byteOrderedDataInputStream.readInt()) & 4294967295L;
                                    break;
                                case 8:
                                    j = (long) byteOrderedDataInputStream.readShort();
                                    break;
                                case 9:
                                case 13:
                                    j = (long) byteOrderedDataInputStream.readInt();
                                    break;
                                default:
                                    break;
                            }
                            if (j > 0) {
                            }
                            Log.w("ExifInterface", "Skip jump into the IFD since its offset is invalid: ".concat(String.valueOf(j)));
                            byteOrderedDataInputStream2.seek(peek);
                        }
                    } else {
                        byteOrderedDataInputStream2.seek(peek);
                        i5 = s;
                        i6 = i4;
                    }
                    s = (short) (i5 + 1);
                    i3 = i6;
                    readShort = s2;
                    i2 = 4;
                }
                if (byteOrderedDataInputStream.peek() + 4 <= byteOrderedDataInputStream.mLength) {
                    int readInt2 = byteOrderedDataInputStream.readInt();
                    if (readInt2 > 8 && readInt2 < byteOrderedDataInputStream.mLength) {
                        byteOrderedDataInputStream2.seek((long) readInt2);
                        if (exifInterface.mAttributes[4].isEmpty()) {
                            i2 = 4;
                            i3 = i2;
                        } else if (exifInterface.mAttributes[5].isEmpty()) {
                            i2 = 4;
                            i3 = 5;
                        }
                    }
                }
                return;
            }
            return;
        }
    }

    private void retrieveJpegImageSize(ByteOrderedDataInputStream byteOrderedDataInputStream, int i) throws IOException {
        ExifAttribute exifAttribute = (ExifAttribute) this.mAttributes[i].get("ImageWidth");
        if (((ExifAttribute) this.mAttributes[i].get("ImageLength")) == null || exifAttribute == null) {
            ExifAttribute exifAttribute2 = (ExifAttribute) this.mAttributes[i].get("JPEGInterchangeFormat");
            if (exifAttribute2 != null) {
                getJpegAttributes(byteOrderedDataInputStream, exifAttribute2.getIntValue(this.mExifByteOrder), i);
            }
        }
    }

    private void handleThumbnailFromJfif(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap hashMap) throws IOException {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get("JPEGInterchangeFormat");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("JPEGInterchangeFormatLength");
        if (exifAttribute != null && exifAttribute2 != null) {
            int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
            hashMap = Math.min(exifAttribute2.getIntValue(this.mExifByteOrder), byteOrderedDataInputStream.available() - intValue);
            if (!(this.mMimeType == 4 || this.mMimeType == 9)) {
                if (this.mMimeType != 10) {
                    if (this.mMimeType == 7) {
                        intValue += this.mOrfMakerNoteOffset;
                    }
                    if (intValue > 0 && hashMap > null) {
                        this.mHasThumbnail = true;
                        this.mThumbnailOffset = intValue;
                        this.mThumbnailLength = hashMap;
                        if (this.mFilename == null) {
                            hashMap = new byte[hashMap];
                            byteOrderedDataInputStream.seek((long) intValue);
                            byteOrderedDataInputStream.readFully(hashMap);
                            this.mThumbnailBytes = hashMap;
                            return;
                        }
                        return;
                    }
                }
            }
            intValue += this.mExifOffset;
            if (intValue > 0) {
            }
        }
    }

    private void handleThumbnailFromStrips(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap hashMap) throws IOException {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get("StripOffsets");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("StripByteCounts");
        if (!(exifAttribute == null || exifAttribute2 == null)) {
            long[] convertToLongArray = convertToLongArray(exifAttribute.getValue(this.mExifByteOrder));
            hashMap = convertToLongArray(exifAttribute2.getValue(this.mExifByteOrder));
            if (convertToLongArray == null) {
                Log.w("ExifInterface", "stripOffsets should not be null.");
            } else if (hashMap == null) {
                Log.w("ExifInterface", "stripByteCounts should not be null.");
            } else {
                long j = 0;
                int i = 0;
                while (i < hashMap.length) {
                    i++;
                    j += hashMap[i];
                }
                Object obj = new byte[((int) j)];
                int i2 = 0;
                int i3 = i2;
                int i4 = i3;
                while (i2 < convertToLongArray.length) {
                    int i5 = (int) hashMap[i2];
                    int i6 = ((int) convertToLongArray[i2]) - i3;
                    if (i6 < 0) {
                        Log.d("ExifInterface", "Invalid strip offset value");
                    }
                    byteOrderedDataInputStream.seek((long) i6);
                    i3 += i6;
                    Object obj2 = new byte[i5];
                    byteOrderedDataInputStream.read(obj2);
                    i3 += i5;
                    System.arraycopy(obj2, 0, obj, i4, obj2.length);
                    i4 += obj2.length;
                    i2++;
                }
                this.mHasThumbnail = true;
                this.mThumbnailBytes = obj;
                this.mThumbnailLength = obj.length;
            }
        }
    }

    private boolean isThumbnail(HashMap hashMap) throws IOException {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get("ImageLength");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("ImageWidth");
        if (!(exifAttribute == null || exifAttribute2 == null)) {
            int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
            hashMap = exifAttribute2.getIntValue(this.mExifByteOrder);
            if (intValue <= 512 && hashMap <= 512) {
                return true;
            }
        }
        return null;
    }

    private void validateImages$71225a3e() throws IOException {
        swapBasedOnImageSize(0, 5);
        swapBasedOnImageSize(0, 4);
        swapBasedOnImageSize(5, 4);
        ExifAttribute exifAttribute = (ExifAttribute) this.mAttributes[1].get("PixelXDimension");
        ExifAttribute exifAttribute2 = (ExifAttribute) this.mAttributes[1].get("PixelYDimension");
        if (!(exifAttribute == null || exifAttribute2 == null)) {
            this.mAttributes[0].put("ImageWidth", exifAttribute);
            this.mAttributes[0].put("ImageLength", exifAttribute2);
        }
        if (this.mAttributes[4].isEmpty() && isThumbnail(this.mAttributes[5])) {
            this.mAttributes[4] = this.mAttributes[5];
            this.mAttributes[5] = new HashMap();
        }
        if (!isThumbnail(this.mAttributes[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
    }

    private void updateImageSizeValues(ByteOrderedDataInputStream byteOrderedDataInputStream, int i) throws IOException {
        ExifAttribute exifAttribute = (ExifAttribute) this.mAttributes[i].get("DefaultCropSize");
        ExifAttribute exifAttribute2 = (ExifAttribute) this.mAttributes[i].get("SensorTopBorder");
        ExifAttribute exifAttribute3 = (ExifAttribute) this.mAttributes[i].get("SensorLeftBorder");
        ExifAttribute exifAttribute4 = (ExifAttribute) this.mAttributes[i].get("SensorBottomBorder");
        ExifAttribute exifAttribute5 = (ExifAttribute) this.mAttributes[i].get("SensorRightBorder");
        if (exifAttribute != null) {
            Object createURational;
            StringBuilder stringBuilder;
            if (exifAttribute.format == 5) {
                Rational[] rationalArr = (Rational[]) exifAttribute.getValue(this.mExifByteOrder);
                if (rationalArr != null) {
                    if (rationalArr.length == 2) {
                        createURational = ExifAttribute.createURational(rationalArr[0], this.mExifByteOrder);
                        byteOrderedDataInputStream = ExifAttribute.createURational(rationalArr[1], this.mExifByteOrder);
                    }
                }
                stringBuilder = new StringBuilder("Invalid crop size values. cropSize=");
                stringBuilder.append(Arrays.toString(rationalArr));
                Log.w("ExifInterface", stringBuilder.toString());
                return;
            }
            int[] iArr = (int[]) exifAttribute.getValue(this.mExifByteOrder);
            if (iArr != null) {
                if (iArr.length == 2) {
                    createURational = ExifAttribute.createUShort(iArr[0], this.mExifByteOrder);
                    byteOrderedDataInputStream = ExifAttribute.createUShort(iArr[1], this.mExifByteOrder);
                }
            }
            stringBuilder = new StringBuilder("Invalid crop size values. cropSize=");
            stringBuilder.append(Arrays.toString(iArr));
            Log.w("ExifInterface", stringBuilder.toString());
            return;
            this.mAttributes[i].put("ImageWidth", createURational);
            this.mAttributes[i].put("ImageLength", byteOrderedDataInputStream);
        } else if (exifAttribute2 == null || exifAttribute3 == null || exifAttribute4 == null || exifAttribute5 == null) {
            retrieveJpegImageSize(byteOrderedDataInputStream, i);
        } else {
            byteOrderedDataInputStream = exifAttribute2.getIntValue(this.mExifByteOrder);
            int intValue = exifAttribute4.getIntValue(this.mExifByteOrder);
            int intValue2 = exifAttribute5.getIntValue(this.mExifByteOrder);
            int intValue3 = exifAttribute3.getIntValue(this.mExifByteOrder);
            if (intValue > byteOrderedDataInputStream && intValue2 > intValue3) {
                intValue2 -= intValue3;
                byteOrderedDataInputStream = ExifAttribute.createUShort(intValue - byteOrderedDataInputStream, this.mExifByteOrder);
                exifAttribute = ExifAttribute.createUShort(intValue2, this.mExifByteOrder);
                this.mAttributes[i].put("ImageLength", byteOrderedDataInputStream);
                this.mAttributes[i].put("ImageWidth", exifAttribute);
            }
        }
    }

    private void swapBasedOnImageSize(int i, int i2) throws IOException {
        if (!this.mAttributes[i].isEmpty()) {
            if (!this.mAttributes[i2].isEmpty()) {
                ExifAttribute exifAttribute = (ExifAttribute) this.mAttributes[i].get("ImageLength");
                ExifAttribute exifAttribute2 = (ExifAttribute) this.mAttributes[i].get("ImageWidth");
                ExifAttribute exifAttribute3 = (ExifAttribute) this.mAttributes[i2].get("ImageLength");
                ExifAttribute exifAttribute4 = (ExifAttribute) this.mAttributes[i2].get("ImageWidth");
                if (!(exifAttribute == null || exifAttribute2 == null || exifAttribute3 == null || exifAttribute4 == null)) {
                    int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
                    int intValue2 = exifAttribute2.getIntValue(this.mExifByteOrder);
                    int intValue3 = exifAttribute3.getIntValue(this.mExifByteOrder);
                    int intValue4 = exifAttribute4.getIntValue(this.mExifByteOrder);
                    if (intValue < intValue3 && intValue2 < intValue4) {
                        HashMap hashMap = this.mAttributes[i];
                        HashMap[] hashMapArr = this.mAttributes;
                        hashMapArr[i] = hashMapArr[i2];
                        this.mAttributes[i2] = hashMap;
                    }
                }
            }
        }
    }

    private static long[] convertToLongArray(Object obj) {
        if (!(obj instanceof int[])) {
            return obj instanceof long[] ? (long[]) obj : null;
        } else {
            int[] iArr = (int[]) obj;
            long[] jArr = new long[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                jArr[i] = (long) iArr[i];
            }
            return jArr;
        }
    }
}
