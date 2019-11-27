require 'rails_helper'

describe Job do
  fixtures :jobs

  describe '#complete!' do
    subject { job.complete! }

    let(:job) { jobs(:safety) }

    it 'completes the job' do
      expect { subject }.to change(job, :completed?).to true
    end
  end
end
