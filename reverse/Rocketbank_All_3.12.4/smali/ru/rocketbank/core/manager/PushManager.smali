.class public final Lru/rocketbank/core/manager/PushManager;
.super Ljava/lang/Object;
.source "PushManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/PushManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPushManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushManager.kt\nru/rocketbank/core/manager/PushManager\n*L\n1#1,273:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/manager/PushManager$Companion;

.field public static final instance:Lru/rocketbank/core/manager/PushManager;


# instance fields
.field private final context:Lru/rocketbank/core/BaseRocketApplication;

.field private isMessage:Z

.field private isOperation:Z

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/PushManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/PushManager$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/PushManager;->Companion:Lru/rocketbank/core/manager/PushManager$Companion;

    .line 271
    new-instance v0, Lru/rocketbank/core/manager/PushManager;

    invoke-direct {v0}, Lru/rocketbank/core/manager/PushManager;-><init>()V

    sput-object v0, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lru/rocketbank/core/manager/PushManager;->isMessage:Z

    .line 25
    iput-boolean v0, p0, Lru/rocketbank/core/manager/PushManager;->isOperation:Z

    .line 26
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/manager/PushManager;->random:Ljava/util/Random;

    .line 32
    iget-object v0, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lru/rocketbank/core/BaseRocketApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lru/rocketbank/core/manager/PushManager;->notificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private final getRawPath(I)Landroid/net/Uri;
    .locals 3

    .line 209
    iget-object v0, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/BaseRocketApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android.resource://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "Uri.parse(\"android.resource://$packageName/$raw\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final show(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 71
    :pswitch_0
    sget-object p5, Lru/rocketbank/core/utils/RocketAction;->ACTION_FEED:Ljava/lang/String;

    invoke-virtual {v0, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 70
    :pswitch_1
    sget-object p5, Lru/rocketbank/core/utils/RocketAction;->ACTION_SUPPORT:Ljava/lang/String;

    invoke-virtual {v0, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :goto_0
    iget-object p5, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast p5, Landroid/content/Context;

    const/high16 v1, 0x10000000

    .line 75
    invoke-static {p5, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p5

    .line 81
    iget-object v0, p0, Lru/rocketbank/core/manager/PushManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 82
    iget-object v0, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f060200

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    if-nez p7, :cond_1

    .line 85
    iget-object p7, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast p7, Landroid/content/Context;

    const v1, 0x7f08020f

    invoke-static {p7, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    .line 86
    instance-of v1, p7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 87
    check-cast p7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p7

    goto :goto_1

    :cond_0
    const/4 p7, 0x0

    .line 95
    :cond_1
    :goto_1
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 97
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 99
    invoke-virtual {v3, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p5

    .line 100
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p5, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p5

    .line 101
    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p5, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p4

    const/16 p5, 0x3e8

    const/16 v3, 0x5dc

    .line 102
    invoke-virtual {p4, v0, p5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p4

    .line 103
    invoke-virtual {p4, p7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p4

    const p5, 0x7f080210

    .line 104
    invoke-virtual {p4, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p4

    .line 105
    new-instance p5, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {p5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 106
    invoke-virtual {p5, p3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object p3

    check-cast p3, Landroid/support/v4/app/NotificationCompat$Style;

    .line 105
    invoke-virtual {p4, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    if-lez p6, :cond_2

    .line 109
    invoke-direct {p0, p6}, Lru/rocketbank/core/manager/PushManager;->getRawPath(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2

    :cond_2
    or-int/lit8 p1, p1, 0x2

    .line 111
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 114
    :goto_2
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 115
    iget-object p3, p0, Lru/rocketbank/core/manager/PushManager;->notificationManager:Landroid/app/NotificationManager;

    if-eq p2, v2, :cond_3

    iget-object p2, p0, Lru/rocketbank/core/manager/PushManager;->random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result p2

    :cond_3
    invoke-virtual {p3, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final allowMessages(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lru/rocketbank/core/manager/PushManager;->isMessage:Z

    return-void
.end method

.method public final allowOperations(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lru/rocketbank/core/manager/PushManager;->isOperation:Z

    return-void
.end method

.method public final cancelMessages()V
    .locals 2

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/manager/PushManager;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final cancelOperations()V
    .locals 2

    .line 48
    iget-object v0, p0, Lru/rocketbank/core/manager/PushManager;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final showMessage(ZLjava/lang/String;Ljava/lang/Class;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cls"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-boolean v0, p0, Lru/rocketbank/core/manager/PushManager;->isMessage:Z

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    const-string/jumbo v5, "\u0421\u043b\u0443\u0436\u0431\u0430 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u043a\u0438"

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v6, p3

    move v7, p4

    .line 53
    invoke-direct/range {v1 .. v8}, Lru/rocketbank/core/manager/PushManager;->show(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final showOperation(ZLjava/lang/String;Ljava/lang/Class;ILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cls"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lru/rocketbank/core/manager/PushManager;->isOperation:Z

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    const-string/jumbo v5, "\u041e\u043f\u0435\u0440\u0430\u0446\u0438\u044f"

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    .line 58
    invoke-direct/range {v1 .. v8}, Lru/rocketbank/core/manager/PushManager;->show(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final showPlain(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cls"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 120
    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 124
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v0, Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p5, 0x10000000

    invoke-static {v0, p2, v2, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p5

    .line 126
    iget-object v0, p0, Lru/rocketbank/core/manager/PushManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 127
    iget-object v0, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f060200

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 129
    iget-object v2, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f08020f

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 130
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move-object v2, v4

    :cond_2
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 132
    :cond_3
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 135
    invoke-virtual {v1, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p5

    .line 136
    invoke-virtual {p5, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p5

    .line 137
    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p5, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p4

    const/16 p5, 0x3e8

    const/16 v1, 0x5dc

    .line 138
    invoke-virtual {p4, v0, p5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p4

    .line 139
    invoke-virtual {p4, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p4

    const p5, 0x7f080210

    .line 140
    invoke-virtual {p4, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p4

    .line 141
    new-instance p5, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {p5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p5, p3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object p3

    check-cast p3, Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {p4, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    if-ltz p6, :cond_4

    .line 144
    invoke-direct {p0, p6}, Lru/rocketbank/core/manager/PushManager;->getRawPath(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_4
    or-int/lit8 p1, p1, 0x2

    .line 146
    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 149
    :goto_1
    iget-object p1, p0, Lru/rocketbank/core/manager/PushManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public final showSound(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cls"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 158
    :cond_2
    iget-object v1, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v1, Landroid/content/Context;

    .line 160
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p4, 0x10000000

    .line 157
    invoke-static {v1, p1, v2, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 163
    iget-object v1, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f08020f

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 164
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 165
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 170
    :goto_2
    iget-object v2, p0, Lru/rocketbank/core/manager/PushManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 171
    iget-object v2, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f060200

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 172
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p4

    .line 176
    invoke-virtual {p4, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p4

    .line 177
    invoke-direct {p0, p5}, Lru/rocketbank/core/manager/PushManager;->getRawPath(I)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p4

    .line 178
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p4, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    const/16 p4, 0x3e8

    const/16 p5, 0x5dc

    .line 179
    invoke-virtual {p3, v2, p4, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    .line 180
    invoke-virtual {p3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    const p4, 0x7f080210

    .line 181
    invoke-virtual {p3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    .line 182
    new-instance p4, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {p4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p4, p2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {p3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 183
    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 185
    iget-object p3, p0, Lru/rocketbank/core/manager/PushManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p3, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final showUpdate$6bd33ff8(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "market://details?id=com.google.android.gms"

    .line 218
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 219
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    iget-object v1, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/BaseRocketApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/high16 v1, 0x48080000    # 139264.0f

    .line 225
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v1, Landroid/content/Context;

    const/high16 v3, 0x10000000

    .line 235
    invoke-static {v1, p1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lru/rocketbank/core/manager/PushManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 243
    iget-object v2, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f08020f

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 244
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_4

    .line 245
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 250
    :goto_2
    iget-object v3, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f060200

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 251
    iget-object v4, p0, Lru/rocketbank/core/manager/PushManager;->notificationManager:Landroid/app/NotificationManager;

    .line 253
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v6, Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 258
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    const/4 v0, 0x3

    .line 259
    invoke-virtual {p3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    const/16 v0, 0x3e8

    const/16 v1, 0x5dc

    .line 260
    invoke-virtual {p3, v3, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    .line 261
    invoke-virtual {p3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    const v0, 0x7f080210

    .line 262
    invoke-virtual {p3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    .line 263
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {p3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 251
    invoke-virtual {v4, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final showWebAuth(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentIntent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f060200

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 191
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lru/rocketbank/core/manager/PushManager;->context:Lru/rocketbank/core/BaseRocketApplication;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 192
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p5

    .line 195
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p5, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p5

    .line 196
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p5, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    const/16 p5, 0x3e8

    const/16 v1, 0x5dc

    .line 197
    invoke-virtual {p3, v0, p5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    const p5, 0x7f080210

    .line 198
    invoke-virtual {p3, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    .line 199
    new-instance p5, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {p5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p5, p2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {p3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 p3, 0x2

    .line 200
    invoke-virtual {p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 201
    invoke-static {p3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p3

    const/4 p5, 0x5

    invoke-virtual {p2, p3, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 202
    invoke-virtual {p2, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 203
    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 205
    iget-object p3, p0, Lru/rocketbank/core/manager/PushManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p3, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
