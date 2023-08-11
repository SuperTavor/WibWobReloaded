.class Lcom/hangame/hsp/auth/lnc/LncNoticeManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/auth/lnc/LncNoticeManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$currentNotificationIndex:I

.field final synthetic val$infoUrl:Ljava/lang/String;

.field final synthetic val$notificationList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/auth/lnc/LncNoticeManager;Landroid/app/Activity;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$2;->this$0:Lcom/hangame/hsp/auth/lnc/LncNoticeManager;

    iput-object p2, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$2;->val$notificationList:Ljava/util/List;

    iput p4, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$2;->val$currentNotificationIndex:I

    iput-object p5, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$2;->val$infoUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$2;->this$0:Lcom/hangame/hsp/auth/lnc/LncNoticeManager;

    iget-object v1, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$2;->val$notificationList:Ljava/util/List;

    iget v3, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$2;->val$currentNotificationIndex:I

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/auth/lnc/LncNoticeManager;->access$000(Lcom/hangame/hsp/auth/lnc/LncNoticeManager;Landroid/app/Activity;Ljava/util/List;I)V

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$2;->val$infoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/AppUtil;->launchDefaultViewer(Landroid/net/Uri;)Z

    return-void
.end method
