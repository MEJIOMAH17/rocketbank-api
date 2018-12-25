.class public interface abstract Lru/rocketbank/core/manager/KeyManager;
.super Ljava/lang/Object;
.source "KeyManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/KeyManager$DefaultImpls;,
        Lru/rocketbank/core/manager/KeyManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/manager/KeyManager$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lru/rocketbank/core/manager/KeyManager$Companion;->$$INSTANCE:Lru/rocketbank/core/manager/KeyManager$Companion;

    sput-object v0, Lru/rocketbank/core/manager/KeyManager;->Companion:Lru/rocketbank/core/manager/KeyManager$Companion;

    return-void
.end method


# virtual methods
.method public abstract generateKey()Ljavax/crypto/SecretKey;
.end method

.method public abstract getKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
.end method

.method public abstract getOrCreateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
.end method

.method public abstract storeKey(Ljava/lang/String;Ljavax/crypto/SecretKey;)V
.end method
