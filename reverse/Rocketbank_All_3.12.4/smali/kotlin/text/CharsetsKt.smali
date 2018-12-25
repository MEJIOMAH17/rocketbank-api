.class public final Lkotlin/text/CharsetsKt;
.super Ljava/lang/Object;
.source "Charsets.kt"


# direct methods
.method private static final charset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 1

    .line 13
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    const-string v0, "Charset.forName(charsetName)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
