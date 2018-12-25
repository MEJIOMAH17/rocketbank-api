.class public final Lcom/google/android/gms/measurement/AppMeasurement$zze;
.super Lcom/google/firebase/analytics/FirebaseAnalytics$Param;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/AppMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation


# static fields
.field public static final zzbqd:Ljava/util/Map;
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

    const/16 v0, 0x20

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "firebase_conversion"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "engagement_time_msec"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "exposure_time"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "ad_event_id"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "ad_unit_id"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "firebase_error"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "firebase_error_value"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "firebase_error_length"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "debug"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "realtime"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "firebase_event_origin"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "firebase_screen"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "firebase_screen_class"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "firebase_screen_id"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "message_device_time"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "message_id"

    const/16 v17, 0xf

    aput-object v2, v1, v17

    const-string v2, "message_name"

    const/16 v17, 0x10

    aput-object v2, v1, v17

    const-string v2, "message_time"

    const/16 v17, 0x11

    aput-object v2, v1, v17

    const-string v2, "previous_app_version"

    const/16 v17, 0x12

    aput-object v2, v1, v17

    const-string v2, "previous_os_version"

    const/16 v17, 0x13

    aput-object v2, v1, v17

    const-string v2, "topic"

    const/16 v17, 0x14

    aput-object v2, v1, v17

    const-string v2, "update_with_analytics"

    const/16 v17, 0x15

    aput-object v2, v1, v17

    const-string v2, "previous_first_open_count"

    const/16 v17, 0x16

    aput-object v2, v1, v17

    const-string v2, "system_app"

    const/16 v17, 0x17

    aput-object v2, v1, v17

    const-string v2, "system_app_update"

    const/16 v17, 0x18

    aput-object v2, v1, v17

    const-string v2, "previous_install_count"

    const/16 v17, 0x19

    aput-object v2, v1, v17

    const-string v2, "firebase_event_id"

    const/16 v17, 0x1a

    aput-object v2, v1, v17

    const-string v2, "firebase_extra_params_ct"

    const/16 v17, 0x1b

    aput-object v2, v1, v17

    const-string v2, "firebase_group_name"

    const/16 v17, 0x1c

    aput-object v2, v1, v17

    const-string v2, "firebase_list_length"

    const/16 v17, 0x1d

    aput-object v2, v1, v17

    const-string v2, "firebase_index"

    const/16 v17, 0x1e

    aput-object v2, v1, v17

    const-string v2, "firebase_event_name"

    const/16 v17, 0x1f

    aput-object v2, v1, v17

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "_c"

    aput-object v2, v0, v3

    const-string v2, "_et"

    aput-object v2, v0, v4

    const-string v2, "_xt"

    aput-object v2, v0, v5

    const-string v2, "_aeid"

    aput-object v2, v0, v6

    const-string v2, "_ai"

    aput-object v2, v0, v7

    const-string v2, "_err"

    aput-object v2, v0, v8

    const-string v2, "_ev"

    aput-object v2, v0, v9

    const-string v2, "_el"

    aput-object v2, v0, v10

    const-string v2, "_dbg"

    aput-object v2, v0, v11

    const-string v2, "_r"

    aput-object v2, v0, v12

    const-string v2, "_o"

    aput-object v2, v0, v13

    const-string v2, "_sn"

    aput-object v2, v0, v14

    const-string v2, "_sc"

    aput-object v2, v0, v15

    const-string v2, "_si"

    aput-object v2, v0, v16

    const-string v2, "_ndt"

    const/16 v3, 0xe

    aput-object v2, v0, v3

    const-string v2, "_nmid"

    const/16 v3, 0xf

    aput-object v2, v0, v3

    const-string v2, "_nmn"

    const/16 v3, 0x10

    aput-object v2, v0, v3

    const-string v2, "_nmt"

    const/16 v3, 0x11

    aput-object v2, v0, v3

    const-string v2, "_pv"

    const/16 v3, 0x12

    aput-object v2, v0, v3

    const-string v2, "_po"

    const/16 v3, 0x13

    aput-object v2, v0, v3

    const-string v2, "_nt"

    const/16 v3, 0x14

    aput-object v2, v0, v3

    const-string v2, "_uwa"

    const/16 v3, 0x15

    aput-object v2, v0, v3

    const-string v2, "_pfo"

    const/16 v3, 0x16

    aput-object v2, v0, v3

    const-string v2, "_sys"

    const/16 v3, 0x17

    aput-object v2, v0, v3

    const-string v2, "_sysu"

    const/16 v3, 0x18

    aput-object v2, v0, v3

    const-string v2, "_pin"

    const/16 v3, 0x19

    aput-object v2, v0, v3

    const-string v2, "_eid"

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    const-string v2, "_epc"

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    const-string v2, "_gn"

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    const-string v2, "_ll"

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    const-string v2, "_i"

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    const-string v2, "_en"

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Lcom/google/android/gms/common/util/zzf;->zzb([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/AppMeasurement$zze;->zzbqd:Ljava/util/Map;

    return-void
.end method
