.class public final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragmentKt;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferBankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/TransferBankFragmentKt\n*L\n1#1,1301:1\n*E\n"
.end annotation


# direct methods
.method public static final checkIp(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "ipName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    if-eqz v0, :cond_1

    return v7

    :cond_1
    const-string v2, "\u0438\u043f"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    .line 1123
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u0438\u043d\u0434\u0438\u0432\u0438\u0434\u0443\u0430\u043b\u044c\u043d\u044b\u0439 \u043f\u0440\u0435\u0434\u043f\u0440\u0438\u043d\u0438\u043c\u0430\u0442\u0435\u043b\u044c"

    .line 1124
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v7

    :cond_3
    :goto_1
    return v8
.end method
