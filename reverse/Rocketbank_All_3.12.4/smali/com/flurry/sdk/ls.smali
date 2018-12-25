.class public Lcom/flurry/sdk/ls;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ls"

.field private static b:Ljava/lang/String; = "com.google.android.gms.common.GoogleApiAvailability"

.field private static c:Ljava/lang/String; = "com.google.android.gms.common.GooglePlayServicesUtil"

.field private static d:Ljava/lang/String; = "com.google.android.gms.ads.identifier.AdvertisingIdClient"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "getId"

    .line 140
    invoke-static {p0, v0}, Lcom/flurry/sdk/lu;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/lv$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flurry/sdk/lv$a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 142
    sget-object v0, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GOOGLE PLAY SERVICES ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object p0, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    const-string v0, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {p0, v0}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .line 54
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ls;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/flurry/sdk/ls;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 59
    :catch_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/ls;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/flurry/sdk/ls;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    .line 61
    sget-object v0, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GOOGLE PLAY SERVICES EXCEPTION: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object p0, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    const-string v0, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {p0, v0}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "isGooglePlayServicesAvailable"

    const/4 v1, 0x0

    .line 84
    invoke-static {v1, v0}, Lcom/flurry/sdk/lu;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/lv$a;

    move-result-object v0

    .line 85
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/lv$a;->a(Ljava/lang/Class;)Lcom/flurry/sdk/lv$a;

    move-result-object p1

    const-class v0, Landroid/content/Context;

    .line 86
    invoke-virtual {p1, v0, p0}, Lcom/flurry/sdk/lv$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/flurry/sdk/lv$a;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lcom/flurry/sdk/lv$a;->a()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 91
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Lcom/flurry/sdk/jo;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "getAdvertisingIdInfo"

    .line 112
    invoke-static {v0, v1}, Lcom/flurry/sdk/lu;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/lv$a;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/ls;->d:Ljava/lang/String;

    .line 113
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/lv$a;->a(Ljava/lang/Class;)Lcom/flurry/sdk/lv$a;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 114
    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/lv$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/flurry/sdk/lv$a;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/flurry/sdk/lv$a;->a()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    new-instance v0, Lcom/flurry/sdk/jo;

    invoke-static {p0}, Lcom/flurry/sdk/ls;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/flurry/sdk/ls;->b(Ljava/lang/Object;)Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/flurry/sdk/jo;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :catch_0
    move-exception p0

    .line 118
    sget-object v1, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GOOGLE PLAY SERVICES ERROR: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object p0, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    const-string v1, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {p0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isLimitAdTrackingEnabled"

    .line 162
    invoke-static {p0, v1}, Lcom/flurry/sdk/lu;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/lv$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flurry/sdk/lv$a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 165
    sget-object v1, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GOOGLE PLAY SERVICES ERROR: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object p0, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    const-string v1, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {p0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
