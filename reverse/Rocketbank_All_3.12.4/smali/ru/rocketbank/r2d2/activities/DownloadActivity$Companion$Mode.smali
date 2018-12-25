.class final enum Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;
.super Ljava/lang/Enum;
.source "DownloadActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

.field public static final enum MODE_DOWNLOAD:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

.field public static final enum MODE_DOWNLOAD_SECURED:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

.field public static final enum MODE_REFERENCE:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    new-instance v1, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    const-string v2, "MODE_REFERENCE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->MODE_REFERENCE:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    const-string v2, "MODE_DOWNLOAD_SECURED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->MODE_DOWNLOAD_SECURED:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    const-string v2, "MODE_DOWNLOAD"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->MODE_DOWNLOAD:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->$VALUES:[Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;
    .locals 1

    const-class v0, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->$VALUES:[Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    invoke-virtual {v0}, [Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    return-object v0
.end method
