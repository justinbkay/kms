class OfficeDirectReferralsController < ApplicationController
  before_filter :security

  def new
    @office_direct_referral = OfficeDirectReferral.new(user_id: current_user.id)
  end

  def create
    @office_direct_referral = OfficeDirectReferral.new(referral_params)
    @office_direct_referral.incident_date = parse_da_time(params[:incident_date], params[:incident_time])

    if @office_direct_referral.save
      ReferralMailer.odr_submitted(@office_direct_referral).deliver
      redirect_to root_url
    else
      @student = Student.find(params[:office_direct_referral][:student_id])
      render :new
    end
  end

  def index
    @office_direct_referrals = OfficeDirectReferral.all
  end

  def edit
    @office_direct_referral = OfficeDirectReferral.find(params[:id])
    @student = @office_direct_referral.student
  end

  def update
    @office_direct_referral = OfficeDirectReferral.find(params[:id])

    if @office_direct_referral.update_attributes(referral_params)
      redirect_to root_url
    else
      render :edit
    end
  end

  private

  def referral_params
    params.require(:office_direct_referral).permit(:student_id, :block_id, :user_id, :incident_date, :bus, :cafeteria,
                                                   :classroom, :library, :office, :hallway, :hallway_name, :restroom,
                                                   :gym, :outside, :music_room, :locker_room, :other_location, :location_notes,
                                                   :fighting, :assault, :insubordination, :left_supervised_area, :threat_of_physical_harm,
                                                   :harrassment, :chronic_bullying, :obscene_act, :weapon, :destruction_of_property, :theft,
                                                   :profanity, :truancy, :tobacco_drugs, :other_behaviour, :behaviour_notes, :adult_request,
                                                   :oral_instruction, :individual_seat_work, :group_work, :managing_materials,
                                                   :external_interruptions, :classroom_transition, :hallway_passing_time, :teasing_from_peer,
                                                   :change_in_routine, :guest_teacher, :env_outside, :lunchroom, :other_environmental,
                                                   :environmental_notes, :gain_peer_attention, :gain_adult_attention, :obtain_item,
                                                   :obtain_activity, :avoid_peers, :avoid_adults, :avoid_seat_work, :avoid_group_work,
                                                   :avoid_event, :other_motivation, :motivation_notes, :peers, :teacher, :staff, :others_guest_teacher,
                                                   :unknown, :other_involved, :involved_notes,
                                                   :problem_solving_process, :loss_of_privileges, :parent_contact, :individualized_instruction, :lunch_detention, :restitution,
                                                   :iss, :oss, :other_action, :action_notes, :date_closed)
  end

  private

  def parse_da_time(idate, itime)
    zone = "Mountain Time (US & Canada)"
    begin
      preparsed_date = Date.strptime(idate, "%m/%d/%Y")
      return ActiveSupport::TimeZone[zone].parse("#{preparsed_date.to_s} #{itime}:00")
    rescue
      return nil
    end
  end

end
