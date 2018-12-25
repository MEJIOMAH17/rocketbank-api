.class public final Lru/rocketbank/r2d2/root/feed/DayDelimiterStrategy;
.super Ljava/lang/Object;
.source "DayDelimiterStrategy.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShowMode(IZZZZZ)I
    .locals 2

    if-nez p1, :cond_0

    .line 8
    sget-object p1, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;->Companion:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->getHIDE_DATE()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    if-eqz p2, :cond_1

    .line 13
    sget-object p1, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;->Companion:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->getSHOW_WAITING()I

    move-result p1

    return p1

    :cond_1
    move v0, v1

    :cond_2
    if-nez v0, :cond_4

    if-eqz p5, :cond_3

    if-nez p2, :cond_3

    move p6, v1

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move p6, v0

    :goto_0
    if-eqz p6, :cond_7

    if-eqz p3, :cond_5

    .line 29
    sget-object p1, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;->Companion:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->getSHOW_TODAY()I

    move-result p1

    return p1

    :cond_5
    if-eqz p4, :cond_6

    .line 32
    sget-object p1, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;->Companion:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->getSHOW_YESTERDAY()I

    move-result p1

    return p1

    .line 34
    :cond_6
    sget-object p1, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;->Companion:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->getSHOW_DATE()I

    move-result p1

    return p1

    .line 37
    :cond_7
    sget-object p1, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;->Companion:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->getHIDE_DATE()I

    move-result p1

    return p1
.end method
