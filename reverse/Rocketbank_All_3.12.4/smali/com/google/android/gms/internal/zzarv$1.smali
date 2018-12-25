.class Lcom/google/android/gms/internal/zzarv$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaso;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzarv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaso<",
        "Lcom/google/android/gms/internal/zzase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbkt:Lcom/google/android/gms/internal/zzarv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzarv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarv$1;->zzbkt:Lcom/google/android/gms/internal/zzarv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzIn()Lcom/google/android/gms/internal/zzase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarv$1;->zzbkt:Lcom/google/android/gms/internal/zzarv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarv;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzase;

    return-object v0
.end method

.method public zzxC()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarv$1;->zzbkt:Lcom/google/android/gms/internal/zzarv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarv;->zza(Lcom/google/android/gms/internal/zzarv;)V

    return-void
.end method

.method public synthetic zzxD()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarv$1;->zzIn()Lcom/google/android/gms/internal/zzase;

    move-result-object v0

    return-object v0
.end method
