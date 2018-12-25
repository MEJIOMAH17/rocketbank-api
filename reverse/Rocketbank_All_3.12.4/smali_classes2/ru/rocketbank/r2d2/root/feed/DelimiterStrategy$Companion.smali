.class public final Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;
.super Ljava/lang/Object;
.source "DelimiterStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;

.field private static final HIDE_DATE:I = 0x4

.field private static final SHOW_DATE:I = 0x3

.field private static final SHOW_TODAY:I = 0x0

.field private static final SHOW_WAITING:I = 0x2

.field private static final SHOW_YESTERDAY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->$$INSTANCE:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHIDE_DATE()I
    .locals 1

    .line 12
    sget v0, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->HIDE_DATE:I

    return v0
.end method

.method public final getSHOW_DATE()I
    .locals 1

    .line 11
    sget v0, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->SHOW_DATE:I

    return v0
.end method

.method public final getSHOW_TODAY()I
    .locals 1

    .line 8
    sget v0, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->SHOW_TODAY:I

    return v0
.end method

.method public final getSHOW_WAITING()I
    .locals 1

    .line 10
    sget v0, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->SHOW_WAITING:I

    return v0
.end method

.method public final getSHOW_YESTERDAY()I
    .locals 1

    .line 9
    sget v0, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->SHOW_YESTERDAY:I

    return v0
.end method
