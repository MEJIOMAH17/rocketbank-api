.class public final Lru/rocketbank/r2d2/utils/NfcInputCard;
.super Ljava/lang/Object;
.source "NfcInputCard.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/utils/NfcInputCard$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNfcInputCard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NfcInputCard.kt\nru/rocketbank/r2d2/utils/NfcInputCard\n*L\n1#1,176:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/utils/NfcInputCard$Companion;

.field public static final TAG:Ljava/lang/String; = "NfcInputC"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private final targetClass:Ljava/lang/Class;
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

    new-instance v0, Lru/rocketbank/r2d2/utils/NfcInputCard$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/utils/NfcInputCard$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/utils/NfcInputCard;->Companion:Lru/rocketbank/r2d2/utils/NfcInputCard$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->targetClass:Ljava/lang/Class;

    return-void
.end method

.method private final init()V
    .locals 6

    .line 121
    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/NfcInputCard;->requestOrPassPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 127
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "*/*"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 136
    new-array v2, v1, [Landroid/content/IntentFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    .line 137
    new-array v0, v0, [Ljava/lang/String;

    const-class v4, Landroid/nfc/tech/NfcA;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-class v4, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 138
    new-array v1, v1, [[Ljava/lang/String;

    aput-object v0, v1, v3

    check-cast v1, [[Ljava/lang/String;

    .line 139
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->activity:Landroid/app/Activity;

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->targetClass:Ljava/lang/Class;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x20000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 140
    iget-object v4, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->activity:Landroid/app/Activity;

    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v3, "PendingIntent.getActivity(activity, 0, intent, 0)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    return-void

    :catch_0
    return-void

    :cond_2
    return-void
.end method

.method private final requestOrPassPermissions()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.NFC"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/NfcInputCard;->requestPermissions()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private final requestPermissions()V
    .locals 4

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.NFC"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    .line 94
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.NFC"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 93
    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 3

    .line 64
    :try_start_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    :try_start_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/NfcInputCard;->init()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "NfcInputC"

    const-string v2, "binding exception "

    .line 72
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onEvent(Lru/rocketbank/core/events/ResultPermissionEvent;)V
    .locals 4

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lru/rocketbank/core/events/ResultPermissionEvent;->getGrantResults()[I

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 112
    array-length v3, v0

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/events/ResultPermissionEvent;->getRequestCode()I

    move-result p1

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    .line 113
    aget p1, v0, v1

    if-nez p1, :cond_1

    .line 114
    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/NfcInputCard;->init()V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 78
    :try_start_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    :try_start_1
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/rocketbank/r2d2/utils/NfcInputCard;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    return-void

    :catch_1
    move-exception v0

    const-string v1, "NfcInputC"

    const-string v2, "stop exception "

    .line 85
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
