.class final Lru/rocketbank/r2d2/root/feed/FeedDateFormat$yesterdayDateFormat$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FeedDateFormat.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/feed/FeedDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedDateFormat$yesterdayDateFormat$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedDateFormat$yesterdayDateFormat$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/feed/FeedDateFormat$yesterdayDateFormat$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/feed/FeedDateFormat$yesterdayDateFormat$2;->INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedDateFormat$yesterdayDateFormat$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedDateFormat$yesterdayDateFormat$2;->invoke()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
