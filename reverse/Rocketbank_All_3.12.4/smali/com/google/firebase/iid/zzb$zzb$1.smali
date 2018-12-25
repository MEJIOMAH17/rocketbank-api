.class final Lcom/google/firebase/iid/zzb$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/iid/zzb$zzb;->zza(Lcom/google/firebase/iid/zzb$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcld:Lcom/google/firebase/iid/zzb$zza;

.field final synthetic zzcle:Lcom/google/firebase/iid/zzb$zzb;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzb$zzb;Lcom/google/firebase/iid/zzb$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/zzb$zzb$1;->zzcle:Lcom/google/firebase/iid/zzb$zzb;

    iput-object p2, p0, Lcom/google/firebase/iid/zzb$zzb$1;->zzcld:Lcom/google/firebase/iid/zzb$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EnhancedIntentService"

    const-string v1, "bg processing of the intent starting now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzb$zzb$1;->zzcle:Lcom/google/firebase/iid/zzb$zzb;

    invoke-static {v0}, Lcom/google/firebase/iid/zzb$zzb;->zza(Lcom/google/firebase/iid/zzb$zzb;)Lcom/google/firebase/iid/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzb$zzb$1;->zzcld:Lcom/google/firebase/iid/zzb$zza;

    iget-object v1, v1, Lcom/google/firebase/iid/zzb$zza;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzb;->handleIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/firebase/iid/zzb$zzb$1;->zzcld:Lcom/google/firebase/iid/zzb$zza;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzb$zza;->finish()V

    return-void
.end method
