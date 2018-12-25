.class public final Lru/rocketbank/core/manager/RocketShortcutManager;
.super Ljava/lang/Object;
.source "RocketShortcutManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/RocketShortcutManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRocketShortcutManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RocketShortcutManager.kt\nru/rocketbank/core/manager/RocketShortcutManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n624#2:164\n713#2,2:165\n1519#2,2:167\n*E\n*S KotlinDebug\n*F\n+ 1 RocketShortcutManager.kt\nru/rocketbank/core/manager/RocketShortcutManager\n*L\n125#1:164\n125#1,2:165\n125#1,2:167\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/manager/RocketShortcutManager$Companion;

.field public static final KEY_ACTION:Ljava/lang/String; = "KEY_ACTION"

.field public static final KEY_EXTRAS:Ljava/lang/String; = "KEY_EXTRAS"

.field public static final SHORTCUT_PHONE:Ljava/lang/String; = "phone"

.field public static final SHORTCUT_REFILL:Ljava/lang/String; = "refill"

.field public static final SHORTCUT_SUPPORT:Ljava/lang/String; = "support"


# instance fields
.field private final context:Landroid/content/Context;

.field private shortcutManager:Landroid/content/pm/ShortcutManager;

.field private startupActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/RocketShortcutManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/RocketShortcutManager$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/RocketShortcutManager;->Companion:Lru/rocketbank/core/manager/RocketShortcutManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    .line 39
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_0

    .line 40
    iget-object p1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutManager;

    iput-object p1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->shortcutManager:Landroid/content/pm/ShortcutManager;

    :cond_0
    return-void
.end method

.method private final addShortcuts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_4

    .line 134
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->shortcutManager:Landroid/content/pm/ShortcutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->shortcutManager:Landroid/content/pm/ShortcutManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/ShortcutManager;->getManifestShortcuts()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    .line 135
    iget-object v2, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->shortcutManager:Landroid/content/pm/ShortcutManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    move-result v1

    :cond_2
    if-ge v0, v1, :cond_4

    .line 136
    iget-object v0, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->shortcutManager:Landroid/content/pm/ShortcutManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 139
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public static readContact(Landroid/os/Bundle;)Lru/rocketbank/core/model/contact/Contact;
    .locals 4

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lru/rocketbank/core/model/contact/Contact;

    invoke-direct {v0}, Lru/rocketbank/core/model/contact/Contact;-><init>()V

    const-string v1, "id"

    const-wide/16 v2, 0x0

    .line 145
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/model/contact/Contact;->setId(J)V

    const-string v1, "avatar"

    .line 146
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/contact/Contact;->setAvatar(Ljava/lang/String;)V

    const-string v1, "serverFirstName"

    .line 147
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/contact/Contact;->setServerFirstName(Ljava/lang/String;)V

    const-string v1, "serverLastName"

    .line 148
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/contact/Contact;->setServerLastName(Ljava/lang/String;)V

    const-string v1, "firstName"

    .line 149
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/contact/Contact;->setFirstName(Ljava/lang/String;)V

    const-string v1, "lastName"

    .line 150
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/contact/Contact;->setLastName(Ljava/lang/String;)V

    const-string v1, "isRocket"

    const/4 v2, 0x1

    .line 151
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Lru/rocketbank/core/model/contact/Contact;->setRocket(Z)V

    return-object v0
.end method


# virtual methods
.method public final createFriendShortcuts(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;)V"
        }
    .end annotation

    const-string v0, "transfers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->startupActivity:Ljava/lang/Class;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 94
    :cond_0
    new-instance v0, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    iget-object v1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    .line 95
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_8

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/contact/Contact;

    .line 8086
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->startupActivity:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    sget-object v4, Lru/rocketbank/core/utils/RocketAction;->ACTION_FRIEND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "intent"

    .line 99
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "contact"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "intent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "contact"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "id"

    .line 8155
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "avatar"

    .line 8156
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "serverFirstName"

    .line 8157
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getServerFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "serverLastName"

    .line 8158
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getServerLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "firstName"

    .line 8159
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "lastName"

    .line 8160
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "isRocket"

    .line 8161
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->isRocket()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getAvatar()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v5

    :goto_1
    const/16 v6, 0x12c

    if-nez v4, :cond_3

    .line 104
    iget-object v4, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 105
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    .line 106
    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v4

    new-array v5, v5, [Lcom/bumptech/glide/load/Transformation;

    .line 107
    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    aput-object v0, v5, v2

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/BitmapTypeRequest;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v6, v6}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_2

    .line 110
    :cond_3
    iget-object v4, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    const v7, 0x7f080061

    .line 111
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v4

    new-array v5, v5, [Lcom/bumptech/glide/load/Transformation;

    .line 113
    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    aput-object v0, v5, v2

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/BitmapTypeRequest;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v6, v6}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 118
    :goto_2
    new-instance v4, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v5, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "friend_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getLastName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getFirstName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getLastName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v4, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 121
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    const-string v0, "ShortcutInfo.Builder(con\u2026setIntent(intent).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object p1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->shortcutManager:Landroid/content/pm/ShortcutManager;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Ljava/lang/Iterable;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 165
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    const-string v5, "it"

    .line 125
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "it.id"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "friend_"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v2, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 166
    :cond_5
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 167
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 125
    iget-object v2, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->shortcutManager:Landroid/content/pm/ShortcutManager;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 127
    :cond_7
    invoke-direct {p0, v1}, Lru/rocketbank/core/manager/RocketShortcutManager;->addShortcuts(Ljava/util/List;)V

    :cond_8
    return-void

    :cond_9
    :goto_5
    return-void
.end method

.method public final createPhoneShortcut()V
    .locals 4

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 75
    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    sget-object v2, Lru/rocketbank/core/manager/RocketShortcutManager;->SHORTCUT_PHONE:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5088
    iget-object v1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    const v2, 0x7f110380

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 6088
    iget-object v1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    const v2, 0x7f11037f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    const v2, 0x7f08021d

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 7086
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->startupActivity:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    sget-object v2, Lru/rocketbank/core/utils/RocketAction;->ACTION_PHONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/core/manager/RocketShortcutManager;->addShortcuts(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final createRefillShortcut()V
    .locals 4

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 61
    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    sget-object v2, Lru/rocketbank/core/manager/RocketShortcutManager;->SHORTCUT_REFILL:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3088
    iget-object v1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    const v2, 0x7f1103b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 4088
    iget-object v1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    const v2, 0x7f1103b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    const v2, 0x7f08021b

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 5086
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->startupActivity:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    sget-object v2, Lru/rocketbank/core/utils/RocketAction;->ACTION_REFILL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/core/manager/RocketShortcutManager;->addShortcuts(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final createSupportShortcut()V
    .locals 4

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 47
    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    sget-object v2, Lru/rocketbank/core/manager/RocketShortcutManager;->SHORTCUT_SUPPORT:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1088
    iget-object v1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    const v2, 0x7f11044e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 2088
    iget-object v1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    const v2, 0x7f11044d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    const v2, 0x7f08021c

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 3086
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->startupActivity:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    sget-object v2, Lru/rocketbank/core/utils/RocketAction;->ACTION_SUPPORT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/core/manager/RocketShortcutManager;->addShortcuts(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final setStartupActivity(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lru/rocketbank/core/manager/RocketShortcutManager;->startupActivity:Ljava/lang/Class;

    return-void
.end method
