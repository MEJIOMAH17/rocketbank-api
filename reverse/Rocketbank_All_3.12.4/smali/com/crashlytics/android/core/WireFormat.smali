.class final Lcom/crashlytics/android/core/WireFormat;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/WireFormat$FieldType;,
        Lcom/crashlytics/android/core/WireFormat$JavaType;
    }
.end annotation


# static fields
.field static final MESSAGE_SET_ITEM_END_TAG:I = 0xc

.field static final MESSAGE_SET_ITEM_TAG:I = 0xb

.field static final MESSAGE_SET_MESSAGE_TAG:I = 0x1a

.field static final MESSAGE_SET_TYPE_ID_TAG:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static makeTag(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method
