.class public final Lcom/google/android/gms/common/stats/zzb;
.super Ljava/lang/Object;


# static fields
.field public static LOG_LEVEL_OFF:I = 0x0

.field public static zzaHA:I = 0x10

.field public static zzaHB:I = 0x20

.field public static zzaHC:I = 0x1

.field public static final zzaHv:Landroid/content/ComponentName;

.field public static zzaHw:I = 0x1

.field public static zzaHx:I = 0x2

.field public static zzaHy:I = 0x4

.field public static zzaHz:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->zzaHv:Landroid/content/ComponentName;

    return-void
.end method
