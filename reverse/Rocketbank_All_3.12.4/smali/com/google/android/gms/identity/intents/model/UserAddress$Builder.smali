.class public final Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/intents/model/UserAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic zzbhG:Lcom/google/android/gms/identity/intents/model/UserAddress;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/identity/intents/model/UserAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->zzbhG:Lcom/google/android/gms/identity/intents/model/UserAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->zzbhG:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0
.end method

.method public final setAddress1(Ljava/lang/String;)Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->zzbhG:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p1, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzbhu:Ljava/lang/String;

    return-object p0
.end method

.method public final setAddress2(Ljava/lang/String;)Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->zzbhG:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p1, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzbhv:Ljava/lang/String;

    return-object p0
.end method

.method public final setAdministrativeArea(Ljava/lang/String;)Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->zzbhG:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p1, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzbhz:Ljava/lang/String;

    return-object p0
.end method

.method public final setCountryCode(Ljava/lang/String;)Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->zzbhG:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p1, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzUI:Ljava/lang/String;

    return-object p0
.end method

.method public final setLocality(Ljava/lang/String;)Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->zzbhG:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p1, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzbhA:Ljava/lang/String;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->zzbhG:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p1, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->zzbhG:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p1, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public final setPostalCode(Ljava/lang/String;)Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->zzbhG:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p1, v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->zzbhB:Ljava/lang/String;

    return-object p0
.end method
