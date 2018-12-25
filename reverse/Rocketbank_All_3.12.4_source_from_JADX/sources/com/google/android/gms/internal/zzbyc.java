package com.google.android.gms.internal;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

public final class zzbyc {
    private final ByteBuffer zzcwB;

    public static class zza extends IOException {
        zza(int i, int i2) {
            StringBuilder stringBuilder = new StringBuilder(108);
            stringBuilder.append("CodedOutputStream was writing to a flat byte array and ran out of space (pos ");
            stringBuilder.append(i);
            stringBuilder.append(" limit ");
            stringBuilder.append(i2);
            stringBuilder.append(").");
            super(stringBuilder.toString());
        }
    }

    private zzbyc(ByteBuffer byteBuffer) {
        this.zzcwB = byteBuffer;
        this.zzcwB.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzbyc(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    public static int zzL(int i, int i2) {
        return zzro(i) + zzrl(i2);
    }

    public static int zzM(int i, int i2) {
        return zzro(i) + zzrm(i2);
    }

    private static int zza(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 'ࠀ') {
                i2 += (127 - charAt) >>> 31;
            } else {
                i2 += 2;
                if ('?' <= charAt && charAt <= '?') {
                    if (Character.codePointAt(charSequence, i) < 65536) {
                        StringBuilder stringBuilder = new StringBuilder(39);
                        stringBuilder.append("Unpaired surrogate at index ");
                        stringBuilder.append(i);
                        throw new IllegalArgumentException(stringBuilder.toString());
                    }
                    i++;
                }
            }
            i++;
        }
        return i2;
    }

    private static int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int length = charSequence.length();
        i2 += i;
        int i3 = 0;
        while (i3 < length) {
            int i4 = i3 + i;
            if (i4 >= i2) {
                break;
            }
            char charAt = charSequence.charAt(i3);
            if (charAt >= '') {
                break;
            }
            bArr[i4] = (byte) charAt;
            i3++;
        }
        if (i3 == length) {
            return i + length;
        }
        i += i3;
        while (i3 < length) {
            int i5;
            char charAt2 = charSequence.charAt(i3);
            if (charAt2 < '' && i < i2) {
                i5 = i + 1;
                bArr[i] = (byte) charAt2;
            } else if (charAt2 < 'ࠀ' && i <= i2 - 2) {
                i5 = i + 1;
                bArr[i] = (byte) (960 | (charAt2 >>> 6));
                i = i5 + 1;
                bArr[i5] = (byte) ((charAt2 & 63) | 128);
                i3++;
            } else if ((charAt2 < '?' || '?' < charAt2) && i <= i2 - 3) {
                i5 = i + 1;
                bArr[i] = (byte) (480 | (charAt2 >>> 12));
                i = i5 + 1;
                bArr[i5] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i5 = i + 1;
                bArr[i] = (byte) ((charAt2 & 63) | 128);
            } else if (i <= i2 - 4) {
                i5 = i3 + 1;
                if (i5 != charSequence.length()) {
                    char charAt3 = charSequence.charAt(i5);
                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                        i3 = Character.toCodePoint(charAt2, charAt3);
                        i4 = i + 1;
                        bArr[i] = (byte) (240 | (i3 >>> 18));
                        i = i4 + 1;
                        bArr[i4] = (byte) (((i3 >>> 12) & 63) | 128);
                        i4 = i + 1;
                        bArr[i] = (byte) (((i3 >>> 6) & 63) | 128);
                        i = i4 + 1;
                        bArr[i4] = (byte) ((i3 & 63) | 128);
                        i3 = i5;
                        i3++;
                    } else {
                        i3 = i5;
                    }
                }
                i3--;
                StringBuilder stringBuilder = new StringBuilder(39);
                stringBuilder.append("Unpaired surrogate at index ");
                stringBuilder.append(i3);
                throw new IllegalArgumentException(stringBuilder.toString());
            } else {
                StringBuilder stringBuilder2 = new StringBuilder(37);
                stringBuilder2.append("Failed writing ");
                stringBuilder2.append(charAt2);
                stringBuilder2.append(" at index ");
                stringBuilder2.append(i);
                throw new ArrayIndexOutOfBoundsException(stringBuilder2.toString());
            }
            i = i5;
            i3++;
        }
        return i;
    }

    private static void zza(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        } else if (byteBuffer.hasArray()) {
            try {
                byteBuffer.position(zza(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
            } catch (Throwable e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        } else {
            zzb(charSequence, byteBuffer);
        }
    }

    public static zzbyc zzah(byte[] bArr) {
        return zzc(bArr, 0, bArr.length);
    }

    public static int zzaj(byte[] bArr) {
        return zzrq(bArr.length) + bArr.length;
    }

    public static int zzb(int i, double d) {
        return zzro(i) + 8;
    }

    public static int zzb(int i, zzbyj zzbyj) {
        return (zzro(i) << 1) + zzd(zzbyj);
    }

    private static int zzb(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < '') {
            i++;
        }
        int i2 = length;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt >= 'ࠀ') {
                i2 += zza(charSequence, i);
                break;
            }
            i2 += (127 - charAt) >>> 31;
            i++;
        }
        if (i2 >= length) {
            return i2;
        }
        long j = ((long) i2) + 4294967296L;
        StringBuilder stringBuilder = new StringBuilder(54);
        stringBuilder.append("UTF-8 length does not fit in int: ");
        stringBuilder.append(j);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    private static void zzb(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int charAt = charSequence.charAt(i);
            if (charAt >= 128) {
                int i2;
                if (charAt < 2048) {
                    i2 = 960 | (charAt >>> 6);
                } else {
                    if (charAt >= 55296) {
                        if (57343 >= charAt) {
                            i2 = i + 1;
                            if (i2 != charSequence.length()) {
                                char charAt2 = charSequence.charAt(i2);
                                if (Character.isSurrogatePair(charAt, charAt2)) {
                                    i = Character.toCodePoint(charAt, charAt2);
                                    byteBuffer.put((byte) (240 | (i >>> 18)));
                                    byteBuffer.put((byte) (((i >>> 12) & 63) | 128));
                                    byteBuffer.put((byte) (((i >>> 6) & 63) | 128));
                                    byteBuffer.put((byte) ((i & 63) | 128));
                                    i = i2;
                                    i++;
                                } else {
                                    i = i2;
                                }
                            }
                            i--;
                            StringBuilder stringBuilder = new StringBuilder(39);
                            stringBuilder.append("Unpaired surrogate at index ");
                            stringBuilder.append(i);
                            throw new IllegalArgumentException(stringBuilder.toString());
                        }
                    }
                    byteBuffer.put((byte) (480 | (charAt >>> 12)));
                    i2 = ((charAt >>> 6) & 63) | 128;
                }
                byteBuffer.put((byte) i2);
                charAt = (charAt & 63) | 128;
            }
            byteBuffer.put((byte) charAt);
            i++;
        }
    }

    public static int zzbp(long j) {
        return zzbt(j);
    }

    public static int zzbq(long j) {
        return zzbt(j);
    }

    public static int zzbr(long j) {
        return zzbt(zzbv(j));
    }

    public static int zzbt(long j) {
        return (j & -128) == 0 ? 1 : (j & -16384) == 0 ? 2 : (j & -2097152) == 0 ? 3 : (j & -268435456) == 0 ? 4 : (j & -34359738368L) == 0 ? 5 : (j & -4398046511104L) == 0 ? 6 : (j & -562949953421312L) == 0 ? 7 : (j & -72057594037927936L) == 0 ? 8 : (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static long zzbv(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public static int zzc(int i, zzbyj zzbyj) {
        return zzro(i) + zze(zzbyj);
    }

    public static int zzc(int i, byte[] bArr) {
        return zzro(i) + zzaj(bArr);
    }

    public static zzbyc zzc(byte[] bArr, int i, int i2) {
        return new zzbyc(bArr, i, i2);
    }

    public static int zzd(int i, float f) {
        return zzro(i) + 4;
    }

    public static int zzd(zzbyj zzbyj) {
        return zzbyj.zzafB();
    }

    public static int zze(int i, long j) {
        return zzro(i) + zzbp(j);
    }

    public static int zze(zzbyj zzbyj) {
        int zzafB = zzbyj.zzafB();
        return zzrq(zzafB) + zzafB;
    }

    public static int zzf(int i, long j) {
        return zzro(i) + zzbq(j);
    }

    public static int zzg(int i, long j) {
        return zzro(i) + 8;
    }

    public static int zzh(int i, long j) {
        return zzro(i) + zzbr(j);
    }

    public static int zzh(int i, boolean z) {
        return zzro(i) + 1;
    }

    public static int zzku(String str) {
        int zzb = zzb((CharSequence) str);
        return zzrq(zzb) + zzb;
    }

    public static int zzr(int i, String str) {
        return zzro(i) + zzku(str);
    }

    public static int zzrl(int i) {
        return i >= 0 ? zzrq(i) : 10;
    }

    public static int zzrm(int i) {
        return zzrq(zzrs(i));
    }

    public static int zzro(int i) {
        return zzrq(zzbym.zzO(i, 0));
    }

    public static int zzrq(int i) {
        return (i & -128) == 0 ? 1 : (i & -16384) == 0 ? 2 : (-2097152 & i) == 0 ? 3 : (i & -268435456) == 0 ? 4 : 5;
    }

    public static int zzrs(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public final void zzJ(int i, int i2) throws IOException {
        zzN(i, 0);
        zzrj(i2);
    }

    public final void zzK(int i, int i2) throws IOException {
        zzN(i, 0);
        zzrk(i2);
    }

    public final void zzN(int i, int i2) throws IOException {
        zzrp(zzbym.zzO(i, i2));
    }

    public final void zza(int i, double d) throws IOException {
        zzN(i, 1);
        zzn(d);
    }

    public final void zza(int i, long j) throws IOException {
        zzN(i, 0);
        zzbl(j);
    }

    public final void zza(int i, zzbyj zzbyj) throws IOException {
        zzN(i, 2);
        zzc(zzbyj);
    }

    public final int zzafn() {
        return this.zzcwB.remaining();
    }

    public final void zzafo() {
        if (zzafn() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void zzai(byte[] bArr) throws IOException {
        zzrp(bArr.length);
        zzak(bArr);
    }

    public final void zzak(byte[] bArr) throws IOException {
        zzd(bArr, 0, bArr.length);
    }

    public final void zzb(int i, long j) throws IOException {
        zzN(i, 0);
        zzbm(j);
    }

    public final void zzb(int i, byte[] bArr) throws IOException {
        zzN(i, 2);
        zzai(bArr);
    }

    public final void zzb(zzbyj zzbyj) throws IOException {
        zzbyj.zza(this);
    }

    public final void zzbl(long j) throws IOException {
        zzbs(j);
    }

    public final void zzbm(long j) throws IOException {
        zzbs(j);
    }

    public final void zzbn(long j) throws IOException {
        zzbu(j);
    }

    public final void zzbo(long j) throws IOException {
        zzbs(zzbv(j));
    }

    public final void zzbr(boolean z) throws IOException {
        zzrn(z);
    }

    public final void zzbs(long j) throws IOException {
        while ((j & -128) != 0) {
            zzrn((((int) j) & 127) | 128);
            j >>>= 7;
        }
        zzrn((int) j);
    }

    public final void zzbu(long j) throws IOException {
        if (this.zzcwB.remaining() < 8) {
            throw new zza(this.zzcwB.position(), this.zzcwB.limit());
        }
        this.zzcwB.putLong(j);
    }

    public final void zzc(byte b) throws IOException {
        if (this.zzcwB.hasRemaining()) {
            this.zzcwB.put(b);
            return;
        }
        throw new zza(this.zzcwB.position(), this.zzcwB.limit());
    }

    public final void zzc(int i, float f) throws IOException {
        zzN(i, 5);
        zzk(f);
    }

    public final void zzc(int i, long j) throws IOException {
        zzN(i, 1);
        zzbn(j);
    }

    public final void zzc(zzbyj zzbyj) throws IOException {
        zzrp(zzbyj.zzafA());
        zzbyj.zza(this);
    }

    public final void zzd(int i, long j) throws IOException {
        zzN(i, 0);
        zzbo(j);
    }

    public final void zzd(byte[] bArr, int i, int i2) throws IOException {
        if (this.zzcwB.remaining() >= i2) {
            this.zzcwB.put(bArr, i, i2);
            return;
        }
        throw new zza(this.zzcwB.position(), this.zzcwB.limit());
    }

    public final void zzg(int i, boolean z) throws IOException {
        zzN(i, 0);
        zzbr(z);
    }

    public final void zzk(float f) throws IOException {
        zzrr(Float.floatToIntBits(f));
    }

    public final void zzkt(String str) throws IOException {
        try {
            int zzrq = zzrq(str.length());
            if (zzrq == zzrq(str.length() * 3)) {
                int position = this.zzcwB.position();
                if (this.zzcwB.remaining() < zzrq) {
                    throw new zza(position + zzrq, this.zzcwB.limit());
                }
                this.zzcwB.position(position + zzrq);
                zza((CharSequence) str, this.zzcwB);
                int position2 = this.zzcwB.position();
                this.zzcwB.position(position);
                zzrp((position2 - position) - zzrq);
                this.zzcwB.position(position2);
                return;
            }
            zzrp(zzb((CharSequence) str));
            zza((CharSequence) str, this.zzcwB);
        } catch (Throwable e) {
            zza zza = new zza(this.zzcwB.position(), this.zzcwB.limit());
            zza.initCause(e);
            throw zza;
        }
    }

    public final void zzn(double d) throws IOException {
        zzbu(Double.doubleToLongBits(d));
    }

    public final void zzq(int i, String str) throws IOException {
        zzN(i, 2);
        zzkt(str);
    }

    public final void zzrj(int i) throws IOException {
        if (i >= 0) {
            zzrp(i);
        } else {
            zzbs((long) i);
        }
    }

    public final void zzrk(int i) throws IOException {
        zzrp(zzrs(i));
    }

    public final void zzrn(int i) throws IOException {
        zzc((byte) i);
    }

    public final void zzrp(int i) throws IOException {
        while ((i & -128) != 0) {
            zzrn((i & 127) | 128);
            i >>>= 7;
        }
        zzrn(i);
    }

    public final void zzrr(int i) throws IOException {
        if (this.zzcwB.remaining() < 4) {
            throw new zza(this.zzcwB.position(), this.zzcwB.limit());
        }
        this.zzcwB.putInt(i);
    }
}
