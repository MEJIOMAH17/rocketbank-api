package com.bumptech.glide.gifencoder;

import android.support.v4.app.FrameMetricsAggregator;
import java.io.IOException;
import java.io.OutputStream;
import ru.rocketbank.r2d2.root.chat.ChatFragment;

final class LZWEncoder {
    int ClearCode;
    int EOFCode;
    int a_count;
    byte[] accum = new byte[256];
    boolean clear_flg = false;
    int[] codetab = new int[5003];
    private int curPixel;
    int cur_accum = 0;
    int cur_bits = 0;
    int free_ent = 0;
    int g_init_bits;
    int hsize = 5003;
    int[] htab = new int[5003];
    private int imgH;
    private int imgW;
    private int initCodeSize;
    int[] masks = new int[]{0, 1, 3, 7, 15, 31, 63, 127, 255, FrameMetricsAggregator.EVERY_DURATION, 1023, 2047, 4095, 8191, 16383, 32767, ChatFragment.TYPE_MESSAGE_TYPING};
    int maxbits = 12;
    int maxcode;
    int maxmaxcode = 4096;
    int n_bits;
    private byte[] pixAry;
    private int remaining;

    LZWEncoder(int i, int i2, byte[] bArr, int i3) {
        this.imgW = i;
        this.imgH = i2;
        this.pixAry = bArr;
        this.initCodeSize = Math.max(2, i3);
    }

    private void char_out(byte b, OutputStream outputStream) throws IOException {
        byte[] bArr = this.accum;
        int i = this.a_count;
        this.a_count = i + 1;
        bArr[i] = b;
        if (this.a_count >= (byte) -2) {
            flush_char(outputStream);
        }
    }

    final void encode(OutputStream outputStream) throws IOException {
        int i;
        int i2;
        outputStream.write(this.initCodeSize);
        this.remaining = this.imgW * this.imgH;
        this.curPixel = 0;
        int i3 = this.initCodeSize + 1;
        this.g_init_bits = i3;
        this.clear_flg = false;
        this.n_bits = this.g_init_bits;
        this.maxcode = (1 << this.n_bits) - 1;
        this.ClearCode = 1 << (i3 - 1);
        this.EOFCode = this.ClearCode + 1;
        this.free_ent = this.ClearCode + 2;
        this.a_count = 0;
        i3 = nextPixel();
        int i4 = 0;
        for (i = this.hsize; i < 65536; i <<= 1) {
            i4++;
        }
        i = 8 - i4;
        i4 = this.hsize;
        for (i2 = 0; i2 < i4; i2++) {
            this.htab[i2] = -1;
        }
        output(this.ClearCode, outputStream);
        while (true) {
            i2 = nextPixel();
            if (i2 != -1) {
                int i5 = (i2 << this.maxbits) + i3;
                int i6 = (i2 << i) ^ i3;
                if (this.htab[i6] == i5) {
                    i3 = this.codetab[i6];
                } else if (this.htab[i6] >= 0) {
                    r9 = i4 - i6;
                    if (i6 == 0) {
                        r9 = 1;
                    }
                    do {
                        i6 -= r9;
                        if (i6 < 0) {
                            i6 += i4;
                        }
                        if (this.htab[i6] == i5) {
                            i3 = this.codetab[i6];
                            break;
                        }
                    } while (this.htab[i6] >= 0);
                    output(i3, outputStream);
                    if (this.free_ent >= this.maxmaxcode) {
                        r1 = this.codetab;
                        r9 = this.free_ent;
                        this.free_ent = r9 + 1;
                        r1[i6] = r9;
                        this.htab[i6] = i5;
                    } else {
                        i3 = this.hsize;
                        for (i5 = 0; i5 < i3; i5++) {
                            this.htab[i5] = -1;
                        }
                        this.free_ent = this.ClearCode + 2;
                        this.clear_flg = true;
                        output(this.ClearCode, outputStream);
                    }
                    i3 = i2;
                } else {
                    output(i3, outputStream);
                    if (this.free_ent >= this.maxmaxcode) {
                        i3 = this.hsize;
                        for (i5 = 0; i5 < i3; i5++) {
                            this.htab[i5] = -1;
                        }
                        this.free_ent = this.ClearCode + 2;
                        this.clear_flg = true;
                        output(this.ClearCode, outputStream);
                    } else {
                        r1 = this.codetab;
                        r9 = this.free_ent;
                        this.free_ent = r9 + 1;
                        r1[i6] = r9;
                        this.htab[i6] = i5;
                    }
                    i3 = i2;
                }
            } else {
                output(i3, outputStream);
                output(this.EOFCode, outputStream);
                outputStream.write(0);
                return;
            }
        }
    }

    private void flush_char(OutputStream outputStream) throws IOException {
        if (this.a_count > 0) {
            outputStream.write(this.a_count);
            outputStream.write(this.accum, 0, this.a_count);
            this.a_count = 0;
        }
    }

    private int nextPixel() {
        if (this.remaining == 0) {
            return -1;
        }
        this.remaining--;
        byte[] bArr = this.pixAry;
        int i = this.curPixel;
        this.curPixel = i + 1;
        return bArr[i] & 255;
    }

    private void output(int i, OutputStream outputStream) throws IOException {
        this.cur_accum &= this.masks[this.cur_bits];
        if (this.cur_bits > 0) {
            this.cur_accum |= i << this.cur_bits;
        } else {
            this.cur_accum = i;
        }
        this.cur_bits += this.n_bits;
        while (this.cur_bits >= 8) {
            char_out((byte) this.cur_accum, outputStream);
            this.cur_accum >>= 8;
            this.cur_bits -= 8;
        }
        if (this.free_ent > this.maxcode || this.clear_flg) {
            if (this.clear_flg) {
                int i2 = this.g_init_bits;
                this.n_bits = i2;
                this.maxcode = (1 << i2) - 1;
                this.clear_flg = false;
            } else {
                this.n_bits++;
                if (this.n_bits == this.maxbits) {
                    this.maxcode = this.maxmaxcode;
                } else {
                    this.maxcode = (1 << this.n_bits) - 1;
                }
            }
        }
        if (i == this.EOFCode) {
            while (this.cur_bits > 0) {
                char_out((byte) this.cur_accum, outputStream);
                this.cur_accum >>= 8;
                this.cur_bits -= 8;
            }
            flush_char(outputStream);
        }
    }
}
