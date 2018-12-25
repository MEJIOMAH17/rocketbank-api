.class public final Lcom/google/android/gms/measurement/AppMeasurement$zza;
.super Lcom/google/firebase/analytics/FirebaseAnalytics$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/AppMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static final zzbqc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x15

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "app_clear_data"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "app_exception"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "app_remove"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "app_upgrade"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "app_install"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "app_update"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "firebase_campaign"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "error"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "first_open"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "first_visit"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "in_app_purchase"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "notification_dismiss"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "notification_foreground"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "notification_open"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "notification_receive"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "os_update"

    const/16 v17, 0xf

    aput-object v2, v1, v17

    const-string v2, "session_start"

    const/16 v17, 0x10

    aput-object v2, v1, v17

    const-string v2, "user_engagement"

    const/16 v17, 0x11

    aput-object v2, v1, v17

    const-string v2, "firebase_ad_exposure"

    const/16 v17, 0x12

    aput-object v2, v1, v17

    const-string v2, "firebase_adunit_exposure"

    const/16 v17, 0x13

    aput-object v2, v1, v17

    const-string v2, "firebase_extra_parameter"

    const/16 v17, 0x14

    aput-object v2, v1, v17

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "_cd"

    aput-object v2, v0, v3

    const-string v2, "_ae"

    aput-object v2, v0, v4

    const-string v2, "_ui"

    aput-object v2, v0, v5

    const-string v2, "_in"

    aput-object v2, v0, v6

    const-string v2, "_ug"

    aput-object v2, v0, v7

    const-string v2, "_au"

    aput-object v2, v0, v8

    const-string v2, "_cmp"

    aput-object v2, v0, v9

    const-string v2, "_err"

    aput-object v2, v0, v10

    const-string v2, "_f"

    aput-object v2, v0, v11

    const-string v2, "_v"

    aput-object v2, v0, v12

    const-string v2, "_iap"

    aput-object v2, v0, v13

    const-string v2, "_nd"

    aput-object v2, v0, v14

    const-string v2, "_nf"

    aput-object v2, v0, v15

    const-string v2, "_no"

    aput-object v2, v0, v16

    const-string v2, "_nr"

    const/16 v3, 0xe

    aput-object v2, v0, v3

    const-string v2, "_ou"

    const/16 v3, 0xf

    aput-object v2, v0, v3

    const-string v2, "_s"

    const/16 v3, 0x10

    aput-object v2, v0, v3

    const-string v2, "_e"

    const/16 v3, 0x11

    aput-object v2, v0, v3

    const-string v2, "_xa"

    const/16 v3, 0x12

    aput-object v2, v0, v3

    const-string v2, "_xu"

    const/16 v3, 0x13

    aput-object v2, v0, v3

    const-string v2, "_ep"

    const/16 v3, 0x14

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Lcom/google/android/gms/common/util/zzf;->zzb([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/AppMeasurement$zza;->zzbqc:Ljava/util/Map;

    return-void
.end method
