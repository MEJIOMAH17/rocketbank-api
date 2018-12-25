package android.support.v4.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.compat.C0886R;
import android.support.v4.provider.FontRequest;
import android.util.Base64;
import android.util.Xml;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo
public final class FontResourcesParserCompat implements Resource<GifBitmapWrapper> {
    private final GifBitmapWrapper data;

    public interface FamilyResourceEntry {
    }

    public static final class FontFileResourceEntry {
        private final String mFileName;
        private boolean mItalic;
        private int mResourceId;
        private int mWeight;

        public FontFileResourceEntry(String str, int i, boolean z, int i2) {
            this.mFileName = str;
            this.mWeight = i;
            this.mItalic = z;
            this.mResourceId = i2;
        }

        public final String getFileName() {
            return this.mFileName;
        }

        public final int getWeight() {
            return this.mWeight;
        }

        public final boolean isItalic() {
            return this.mItalic;
        }

        public final int getResourceId() {
            return this.mResourceId;
        }
    }

    public static final class FontFamilyFilesResourceEntry implements FamilyResourceEntry {
        private final FontFileResourceEntry[] mEntries;

        public FontFamilyFilesResourceEntry(FontFileResourceEntry[] fontFileResourceEntryArr) {
            this.mEntries = fontFileResourceEntryArr;
        }

        public final FontFileResourceEntry[] getEntries() {
            return this.mEntries;
        }
    }

    public static final class ProviderResourceEntry implements FamilyResourceEntry {
        private final FontRequest mRequest;
        private final int mStrategy;
        private final int mTimeoutMs;

        public ProviderResourceEntry(FontRequest fontRequest, int i, int i2) {
            this.mRequest = fontRequest;
            this.mStrategy = i;
            this.mTimeoutMs = i2;
        }

        public final FontRequest getRequest() {
            return this.mRequest;
        }

        public final int getFetchStrategy() {
            return this.mStrategy;
        }

        public final int getTimeout() {
            return this.mTimeoutMs;
        }
    }

    public static FamilyResourceEntry parse(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return readFamily(xmlPullParser, resources);
        }
        skip(xmlPullParser);
        return null;
    }

    private static FamilyResourceEntry readFamily(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0886R.styleable.FontFamily);
        String string = obtainAttributes.getString(C0886R.styleable.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(C0886R.styleable.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(C0886R.styleable.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(C0886R.styleable.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(C0886R.styleable.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(C0886R.styleable.FontFamily_fontProviderFetchTimeout, 500);
        obtainAttributes.recycle();
        if (string == null || string2 == null || string3 == null) {
            List arrayList = new ArrayList();
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("font")) {
                        arrayList.add(readFont(xmlPullParser, resources));
                    } else {
                        skip(xmlPullParser);
                    }
                }
            }
            if (arrayList.isEmpty() != null) {
                return null;
            }
            return new FontFamilyFilesResourceEntry((FontFileResourceEntry[]) arrayList.toArray(new FontFileResourceEntry[arrayList.size()]));
        }
        while (xmlPullParser.next() != 3) {
            skip(xmlPullParser);
        }
        return new ProviderResourceEntry(new FontRequest(string, string2, string3, readCerts(resources, resourceId)), integer, integer2);
    }

    public static List<List<byte[]>> readCerts(Resources resources, int i) {
        List<List<byte[]>> list = null;
        if (i != 0) {
            TypedArray obtainTypedArray = resources.obtainTypedArray(i);
            if (obtainTypedArray.length() > 0) {
                list = new ArrayList();
                if ((obtainTypedArray.getResourceId(0, 0) != 0 ? 1 : 0) != 0) {
                    for (i = 0; i < obtainTypedArray.length(); i++) {
                        list.add(toByteArrayList(resources.getStringArray(obtainTypedArray.getResourceId(i, 0))));
                    }
                } else {
                    list.add(toByteArrayList(resources.getStringArray(i)));
                }
            }
            obtainTypedArray.recycle();
        }
        if (list != null) {
            return list;
        }
        return Collections.emptyList();
    }

    private static List<byte[]> toByteArrayList(String[] strArr) {
        List<byte[]> arrayList = new ArrayList();
        for (String decode : strArr) {
            arrayList.add(Base64.decode(decode, 0));
        }
        return arrayList;
    }

    private static FontFileResourceEntry readFont(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        resources = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0886R.styleable.FontFamilyFont);
        int i = resources.getInt(resources.hasValue(C0886R.styleable.FontFamilyFont_fontWeight) ? C0886R.styleable.FontFamilyFont_fontWeight : C0886R.styleable.FontFamilyFont_android_fontWeight, 400);
        boolean z = true;
        if (1 != resources.getInt(resources.hasValue(C0886R.styleable.FontFamilyFont_fontStyle) ? C0886R.styleable.FontFamilyFont_fontStyle : C0886R.styleable.FontFamilyFont_android_fontStyle, 0)) {
            z = false;
        }
        int i2 = resources.hasValue(C0886R.styleable.FontFamilyFont_font) ? C0886R.styleable.FontFamilyFont_font : C0886R.styleable.FontFamilyFont_android_font;
        int resourceId = resources.getResourceId(i2, 0);
        String string = resources.getString(i2);
        resources.recycle();
        while (xmlPullParser.next() != 3) {
            skip(xmlPullParser);
        }
        return new FontFileResourceEntry(string, i, z, resourceId);
    }

    private static void skip(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = 1;
        while (i > 0) {
            switch (xmlPullParser.next()) {
                case 2:
                    i++;
                    break;
                case 3:
                    i--;
                    break;
                default:
                    break;
            }
        }
    }

    public FontResourcesParserCompat(GifBitmapWrapper gifBitmapWrapper) {
        if (gifBitmapWrapper == null) {
            throw new NullPointerException("Data must not be null");
        }
        this.data = gifBitmapWrapper;
    }

    public final int getSize() {
        return this.data.getSize();
    }

    public final void recycle() {
        Resource bitmapResource = this.data.getBitmapResource();
        if (bitmapResource != null) {
            bitmapResource.recycle();
        }
        bitmapResource = this.data.getGifResource();
        if (bitmapResource != null) {
            bitmapResource.recycle();
        }
    }

    public final /* bridge */ /* synthetic */ Object get() {
        return this.data;
    }
}
